-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2018 at 04:36 PM
-- Server version: 5.7.21-0ubuntu0.16.04.1
-- PHP Version: 5.6.33-3+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sitemanager`
--
CREATE DATABASE IF NOT EXISTS `sitemanager` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `sitemanager`;

-- --------------------------------------------------------

--
-- Table structure for table `b_admin_notify`
--

CREATE TABLE `b_admin_notify` (
  `ID` int(18) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `ENABLE_CLOSE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `PUBLIC_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NOTIFY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_admin_notify_lang`
--

CREATE TABLE `b_admin_notify_lang` (
  `ID` int(18) NOT NULL,
  `NOTIFY_ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_agent`
--

CREATE TABLE `b_agent` (
  `ID` int(18) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `NAME` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_EXEC` datetime DEFAULT NULL,
  `NEXT_EXEC` datetime NOT NULL,
  `DATE_CHECK` datetime DEFAULT NULL,
  `AGENT_INTERVAL` int(18) DEFAULT '86400',
  `IS_PERIOD` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `USER_ID` int(18) DEFAULT NULL,
  `RUNNING` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_agent`
--

INSERT INTO `b_agent` (`ID`, `MODULE_ID`, `SORT`, `NAME`, `ACTIVE`, `LAST_EXEC`, `NEXT_EXEC`, `DATE_CHECK`, `AGENT_INTERVAL`, `IS_PERIOD`, `USER_ID`, `RUNNING`) VALUES
(1, 'main', 100, 'CEvent::CleanUpAgent();', 'Y', '2018-02-27 11:44:22', '2018-02-28 11:44:22', NULL, 86400, 'N', NULL, 'N'),
(2, 'main', 100, 'CUser::CleanUpHitAuthAgent();', 'Y', '2018-02-27 11:44:22', '2018-02-28 11:44:22', NULL, 86400, 'N', NULL, 'N'),
(3, 'main', 100, 'CCaptchaAgent::DeleteOldCaptcha(3600);', 'Y', '2018-02-27 15:40:27', '2018-02-27 16:40:27', NULL, 3600, 'N', NULL, 'N'),
(4, 'main', 100, 'CUndo::CleanUpOld();', 'Y', '2018-02-27 11:44:22', '2018-02-28 11:44:22', NULL, 86400, 'N', NULL, 'N'),
(5, 'main', 100, 'CUser::AuthActionsCleanUpAgent();', 'Y', '2018-02-27 11:44:22', '2018-02-28 11:44:22', NULL, 86400, 'N', NULL, 'N'),
(6, 'main', 100, 'CSiteCheckerTest::CommonTest();', 'Y', '2018-02-27 10:06:46', '2018-02-28 10:06:46', NULL, 86400, 'N', NULL, 'N'),
(7, 'main', 100, '\\Bitrix\\Main\\Analytics\\CounterDataTable::submitData();', 'Y', '2018-02-27 16:36:06', '2018-02-27 16:37:06', NULL, 60, 'N', NULL, 'N'),
(8, 'forum', 100, 'CForumStat::CleanUp();', 'Y', '2018-02-27 11:44:22', '2018-02-28 11:44:22', NULL, 86400, 'N', NULL, 'N'),
(9, 'forum', 100, 'CForumFiles::CleanUp();', 'Y', '2018-02-27 11:44:23', '2018-02-28 11:44:23', NULL, 86400, 'N', NULL, 'N'),
(10, 'search', 10, 'CSearchSuggest::CleanUpAgent();', 'Y', '2018-02-27 11:44:23', '2018-02-28 11:44:23', NULL, 86400, 'N', NULL, 'N'),
(11, 'search', 10, 'CSearchStatistic::CleanUpAgent();', 'Y', '2018-02-27 11:44:23', '2018-02-28 11:44:23', NULL, 86400, 'N', NULL, 'N'),
(12, 'security', 100, 'CSecuritySession::CleanUpAgent();', 'Y', '2018-02-27 16:35:06', '2018-02-27 17:05:06', NULL, 1800, 'N', NULL, 'N'),
(13, 'security', 100, 'CSecurityIPRule::CleanUpAgent();', 'Y', '2018-02-27 15:40:27', '2018-02-27 16:40:27', NULL, 3600, 'N', NULL, 'N'),
(14, 'seo', 100, 'Bitrix\\Seo\\Engine\\YandexDirect::updateAgent();', 'Y', '2018-02-27 15:40:27', '2018-02-27 16:40:27', NULL, 3600, 'N', NULL, 'N'),
(15, 'seo', 100, 'Bitrix\\Seo\\Adv\\LogTable::clean();', 'Y', '2018-02-27 11:44:23', '2018-02-28 11:44:23', NULL, 86400, 'N', NULL, 'N'),
(16, 'seo', 100, 'Bitrix\\Seo\\Adv\\Auto::checkQuantityAgent();', 'Y', '2018-02-27 15:40:27', '2018-02-27 16:40:27', NULL, 3600, 'N', NULL, 'N'),
(17, 'subscribe', 100, 'CSubscription::CleanUp();', 'Y', '2018-02-27 10:06:48', '2018-02-28 03:00:00', NULL, 86400, 'Y', NULL, 'N'),
(30, 'main', 100, 'CEventLog::CleanUpAgent();', 'Y', '2018-02-26 16:38:35', '2018-02-27 16:38:35', NULL, 86400, 'N', NULL, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `b_app_password`
--

CREATE TABLE `b_app_password` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `APPLICATION_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DIGEST_PASSWORD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `DATE_LOGIN` datetime DEFAULT NULL,
  `LAST_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SYSCOMMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_b24connector_buttons`
--

CREATE TABLE `b_b24connector_buttons` (
  `ID` int(11) NOT NULL,
  `APP_ID` int(11) NOT NULL,
  `ADD_DATE` datetime NOT NULL,
  `ADD_BY` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SCRIPT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_bitrixcloud_option`
--

CREATE TABLE `b_bitrixcloud_option` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL,
  `PARAM_KEY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM_VALUE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_bitrixcloud_option`
--

INSERT INTO `b_bitrixcloud_option` (`ID`, `NAME`, `SORT`, `PARAM_KEY`, `PARAM_VALUE`) VALUES
(1, 'backup_quota', 0, '0', '0'),
(2, 'backup_total_size', 0, '0', '0'),
(3, 'backup_last_backup_time', 0, '0', '1519634833'),
(4, 'monitoring_expire_time', 0, '0', '1519636701');

-- --------------------------------------------------------

--
-- Table structure for table `b_blog`
--

CREATE TABLE `b_blog` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` int(11) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REAL_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `ENABLE_COMMENTS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENABLE_IMG_VERIF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENABLE_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_POST_ID` int(11) DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `AUTO_GROUPS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_NOTIFY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SEARCH_INDEX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `USE_SOCNET` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `EDITOR_USE_FONT` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_LINK` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_IMAGE` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_VIDEO` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `EDITOR_USE_FORMAT` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_category`
--

CREATE TABLE `b_blog_category` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_comment`
--

CREATE TABLE `b_blog_comment` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(11) DEFAULT NULL,
  `ICON_ID` int(11) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_TEXT` text COLLATE utf8_unicode_ci NOT NULL,
  `PUBLISH_STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `HAS_PROPS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHARE_DEST` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_group`
--

CREATE TABLE `b_blog_group` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_image`
--

CREATE TABLE `b_blog_image` (
  `ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL DEFAULT '0',
  `BLOG_ID` int(11) NOT NULL DEFAULT '0',
  `POST_ID` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '1970-01-01 00:00:01',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_SIZE` int(11) NOT NULL DEFAULT '0',
  `IS_COMMENT` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMMENT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_post`
--

CREATE TABLE `b_blog_post` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `AUTHOR_ID` int(11) NOT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_TEXT` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `DETAIL_TEXT_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DATE_CREATE` datetime NOT NULL,
  `DATE_PUBLISH` datetime NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PUBLISH_STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `CATEGORY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATRIBUTE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENABLE_TRACKBACK` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ENABLE_COMMENTS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `NUM_COMMENTS` int(11) NOT NULL DEFAULT '0',
  `NUM_COMMENTS_ALL` int(11) NOT NULL DEFAULT '0',
  `NUM_TRACKBACKS` int(11) NOT NULL DEFAULT '0',
  `VIEWS` int(11) DEFAULT NULL,
  `FAVORITE_SORT` int(11) DEFAULT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MICRO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `HAS_IMAGES` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_PROPS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_TAGS` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_COMMENT_IMAGES` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HAS_SOCNET_ALL` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEO_DESCRIPTION` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_post_category`
--

CREATE TABLE `b_blog_post_category` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_post_param`
--

CREATE TABLE `b_blog_post_param` (
  `ID` int(11) NOT NULL,
  `POST_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_site_path`
--

CREATE TABLE `b_blog_site_path` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_socnet`
--

CREATE TABLE `b_blog_socnet` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_socnet_rights`
--

CREATE TABLE `b_blog_socnet_rights` (
  `ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ENTITY` varchar(45) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_trackback`
--

CREATE TABLE `b_blog_trackback` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci NOT NULL,
  `BLOG_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_DATE` datetime NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `POST_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_user`
--

CREATE TABLE `b_blog_user` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ALIAS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `AVATAR` int(11) DEFAULT NULL,
  `INTERESTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `DATE_REG` datetime NOT NULL,
  `ALLOW_POST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_user2blog`
--

CREATE TABLE `b_blog_user2blog` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_user2user_group`
--

CREATE TABLE `b_blog_user2user_group` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_user_group`
--

CREATE TABLE `b_blog_user_group` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_blog_user_group`
--

INSERT INTO `b_blog_user_group` (`ID`, `BLOG_ID`, `NAME`) VALUES
(1, NULL, 'all'),
(2, NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `b_blog_user_group_perms`
--

CREATE TABLE `b_blog_user_group_perms` (
  `ID` int(11) NOT NULL,
  `BLOG_ID` int(11) NOT NULL,
  `USER_GROUP_ID` int(11) NOT NULL,
  `PERMS_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `POST_ID` int(11) DEFAULT NULL,
  `PERMS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `AUTOSET` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_cache_tag`
--

CREATE TABLE `b_cache_tag` (
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SALT` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RELATIVE_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAG` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_cache_tag`
--

INSERT INTO `b_cache_tag` (`SITE_ID`, `CACHE_SALT`, `RELATIVE_PATH`, `TAG`) VALUES
(NULL, NULL, '0:1519735924', '**'),
('s1', '/1a5', '/s1/bitrix/menu.sections/06f', 'iblock_id_2'),
('s1', '/6f8', '/s1/bitrix/menu.sections/6f8', 'iblock_id_2'),
('s1', '/be5', '/s1/bitrix/catalog.section.list/be5', 'iblock_id_2'),
('s1', '/be5', '/s1/bitrix/menu.sections/345', 'iblock_id_2'),
('s1', '/643', '/s1/bitrix/menu.sections/06f', 'iblock_id_2'),
('s1', '/220', '/s1/bitrix/menu.sections/06f', 'iblock_id_2'),
('s1', '/78d', '/s1/bitrix/menu.sections/78d', 'iblock_id_2'),
('s1', '/78d', '/s1/bitrix/menu.sections/06f', 'iblock_id_2'),
('s1', '/78d', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/78d', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/220', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/220', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/fc1', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/fc1', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/be5', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/be5', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/643', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/643', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/6f8', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/6f8', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/643', '/s1/bitrix/news.detail/643', 'iblock_id_5'),
('s1', '/643', '/s1/bitrix/news.list/643', 'iblock_id_5'),
('s1', '/6d1', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/6d1', '/s1/bitrix/catalog.section.list/6d1', 'iblock_id_3'),
('s1', '/6d1', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/6d1', '/s1/bitrix/menu.sections/06f', 'iblock_id_2'),
('s1', '/6d1', '/s1/bitrix/news.list/06f', 'iblock_id_1'),
('s1', '/6d1', '/s1/bitrix/furniture.catalog.random/06f', 'iblock_id_2'),
('s1', '/6d1', '/s1/bitrix/catalog.section', 'iblock_id_3'),
('s1', '/f62', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/f62', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/f2e', '/s1/bitrix/menu.sections/06f', 'iblock_id_2'),
('s1', '/f2e', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/f2e', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/969', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/969', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/1a5', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/1a5', '/s1/bitrix/news.list/1a5', 'iblock_id_5'),
('s1', '/1a5', '/s1/bitrix/menu/345', 'bitrix:menu'),
('s1', '/f62', '/s1/bitrix/menu.sections/06f', 'iblock_id_2'),
('s1', '/e25', '/s1/bitrix/menu/06f', 'bitrix:menu'),
('s1', '/e25', '/s1/bitrix/menu.sections/06f', 'iblock_id_2');

-- --------------------------------------------------------

--
-- Table structure for table `b_captcha`
--

CREATE TABLE `b_captcha` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_captcha`
--

INSERT INTO `b_captcha` (`ID`, `CODE`, `IP`, `DATE_CREATE`) VALUES
('0073662e094a30ff97dba97a40fd5f2f', 'CW2S4', '127.0.0.1', '2018-02-27 15:30:02'),
('008c46fa201e2ec438c0b36a61e11acc', 'MFB4F', '127.0.0.1', '2018-02-27 15:30:03'),
('01c2715f6a0dc1390f644018c4d1cbdb', 'KCTGF', '127.0.0.1', '2018-02-27 15:30:03'),
('023a14bfdf67ba58982ccadc56c7e66f', 'GDLF5', '127.0.0.1', '2018-02-27 15:40:35'),
('0385561a5743721b289280a5afc684fd', 'RK7LS', '127.0.0.1', '2018-02-27 15:30:02'),
('052d19c865bd1aa076b162bc6068e69e', '27DQR', '127.0.0.1', '2018-02-27 15:30:02'),
('067f1ca01f71d589328f00a38a792406', 'BCGDG', '127.0.0.1', '2018-02-27 15:30:02'),
('073b6be5a50c7065337e1262b65f776d', 'S98Y5', '127.0.0.1', '2018-02-27 15:30:03'),
('07c2f5f068404dfa130fc9239384a8e7', 'Y57TB', '127.0.0.1', '2018-02-27 15:30:03'),
('0ab0aa08444089c0f83fb20f71b8731e', '33JXQ', '127.0.0.1', '2018-02-27 15:30:02'),
('0af1c867fa1df402ff59009f3e57746c', '87WHS', '127.0.0.1', '2018-02-27 15:30:02'),
('0b985ea8de3862480c3fbdb48d027264', 'EDYQW', '127.0.0.1', '2018-02-27 15:30:03'),
('0c52ed4be6484d8a19bd349fa63a3c30', '8DT38', '127.0.0.1', '2018-02-27 15:30:03'),
('0d30d7f565b5d31e9061471093d4a13b', '4QAQW', '127.0.0.1', '2018-02-27 15:30:03'),
('0da19daeb6f35949b389ef0e92df1420', 'KA7WY', '127.0.0.1', '2018-02-27 16:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `b_checklist`
--

CREATE TABLE `b_checklist` (
  `ID` int(11) NOT NULL,
  `DATE_CREATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TESTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMPANY_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `SUCCESS` int(11) DEFAULT NULL,
  `FAILED` int(11) DEFAULT NULL,
  `PENDING` int(11) DEFAULT NULL,
  `SKIP` int(11) DEFAULT NULL,
  `STATE` longtext COLLATE utf8_unicode_ci,
  `REPORT_COMMENT` text COLLATE utf8_unicode_ci,
  `REPORT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `EMAIL` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENDED_TO_BITRIX` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_clouds_file_bucket`
--

CREATE TABLE `b_clouds_file_bucket` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(11) DEFAULT '500',
  `READ_ONLY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `SERVICE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET` varchar(63) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOCATION` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CNAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_COUNT` int(11) DEFAULT '0',
  `FILE_SIZE` float DEFAULT '0',
  `LAST_FILE_ID` int(11) DEFAULT NULL,
  `PREFIX` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `FILE_RULES` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_clouds_file_resize`
--

CREATE TABLE `b_clouds_file_resize` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ERROR_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `FILE_ID` int(11) DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `FROM_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_PATH` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_clouds_file_upload`
--

CREATE TABLE `b_clouds_file_upload` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FILE_PATH` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `FILE_SIZE` int(11) DEFAULT NULL,
  `TMP_FILE` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BUCKET_ID` int(11) NOT NULL,
  `PART_SIZE` int(11) NOT NULL,
  `PART_NO` int(11) NOT NULL,
  `PART_FAIL_COUNTER` int(11) NOT NULL,
  `NEXT_STEP` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_component_params`
--

CREATE TABLE `b_component_params` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `COMPONENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TEMPLATE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REAL_PATH` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEF_MODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SEF_FOLDER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_CHAR` int(11) NOT NULL,
  `END_CHAR` int(11) NOT NULL,
  `PARAMETERS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_component_params`
--

INSERT INTO `b_component_params` (`ID`, `SITE_ID`, `COMPONENT_NAME`, `TEMPLATE_NAME`, `REAL_PATH`, `SEF_MODE`, `SEF_FOLDER`, `START_CHAR`, `END_CHAR`, `PARAMETERS`) VALUES
(25, 's1', 'bitrix:news', 'reviews', '/rew/index.php', 'Y', '/rew/', 98, 2515, 'a:70:{s:17:"ADD_ELEMENT_CHAIN";s:1:"N";s:18:"ADD_SECTIONS_CHAIN";s:1:"N";s:9:"AJAX_MODE";s:1:"N";s:22:"AJAX_OPTION_ADDITIONAL";s:0:"";s:19:"AJAX_OPTION_HISTORY";s:1:"N";s:16:"AJAX_OPTION_JUMP";s:1:"N";s:17:"AJAX_OPTION_STYLE";s:1:"Y";s:13:"BROWSER_TITLE";s:1:"-";s:12:"CACHE_FILTER";s:1:"N";s:12:"CACHE_GROUPS";s:1:"Y";s:10:"CACHE_TIME";s:8:"36000000";s:10:"CACHE_TYPE";s:1:"A";s:11:"CHECK_DATES";s:1:"Y";s:18:"COMPONENT_TEMPLATE";s:7:"reviews";s:25:"DETAIL_ACTIVE_DATE_FORMAT";s:5:"j F Y";s:27:"DETAIL_DISPLAY_BOTTOM_PAGER";s:1:"N";s:24:"DETAIL_DISPLAY_TOP_PAGER";s:1:"N";s:17:"DETAIL_FIELD_CODE";a:2:{i:0;s:0:"";i:1;s:0:"";}s:21:"DETAIL_PAGER_SHOW_ALL";s:1:"Y";s:21:"DETAIL_PAGER_TEMPLATE";s:0:"";s:18:"DETAIL_PAGER_TITLE";s:16:"Страница";s:20:"DETAIL_PROPERTY_CODE";a:4:{i:0;s:8:"POSITION";i:1;s:7:"COMPANY";i:2;s:4:"DOCS";i:3;s:0:"";}s:24:"DETAIL_SET_CANONICAL_URL";s:1:"N";s:20:"DISPLAY_BOTTOM_PAGER";s:1:"Y";s:12:"DISPLAY_DATE";s:1:"Y";s:12:"DISPLAY_NAME";s:1:"N";s:15:"DISPLAY_PICTURE";s:1:"Y";s:20:"DISPLAY_PREVIEW_TEXT";s:1:"Y";s:17:"DISPLAY_TOP_PAGER";s:1:"N";s:24:"HIDE_LINK_WHEN_NO_DETAIL";s:1:"N";s:9:"IBLOCK_ID";s:1:"5";s:11:"IBLOCK_TYPE";s:7:"reviews";s:25:"INCLUDE_IBLOCK_INTO_CHAIN";s:1:"Y";s:23:"LIST_ACTIVE_DATE_FORMAT";s:5:"j F Y";s:15:"LIST_FIELD_CODE";a:2:{i:0;s:0:"";i:1;s:0:"";}s:18:"LIST_PROPERTY_CODE";a:3:{i:0;s:8:"POSITION";i:1;s:7:"COMPANY";i:2;s:0:"";}s:11:"MESSAGE_404";s:0:"";s:16:"META_DESCRIPTION";s:1:"-";s:13:"META_KEYWORDS";s:1:"-";s:10:"NEWS_COUNT";s:1:"2";s:15:"PAGER_BASE_LINK";s:0:"";s:22:"PAGER_BASE_LINK_ENABLE";s:1:"Y";s:20:"PAGER_DESC_NUMBERING";s:1:"N";s:31:"PAGER_DESC_NUMBERING_CACHE_TIME";s:5:"36000";s:17:"PAGER_PARAMS_NAME";s:8:"arrPager";s:14:"PAGER_SHOW_ALL";s:1:"N";s:17:"PAGER_SHOW_ALWAYS";s:1:"N";s:14:"PAGER_TEMPLATE";s:8:".default";s:11:"PAGER_TITLE";s:12:"Отзывы";s:20:"PREVIEW_TRUNCATE_LEN";s:0:"";s:8:"SEF_MODE";s:1:"Y";s:17:"SET_LAST_MODIFIED";s:1:"N";s:14:"SET_STATUS_404";s:1:"N";s:9:"SET_TITLE";s:1:"Y";s:8:"SHOW_404";s:1:"N";s:8:"SORT_BY1";s:2:"ID";s:8:"SORT_BY2";s:4:"SORT";s:11:"SORT_ORDER1";s:3:"ASC";s:11:"SORT_ORDER2";s:3:"ASC";s:20:"STRICT_SECTION_CHECK";s:1:"N";s:14:"USE_CATEGORIES";s:1:"N";s:10:"USE_FILTER";s:1:"N";s:15:"USE_PERMISSIONS";s:1:"N";s:10:"USE_RATING";s:1:"N";s:10:"USE_REVIEW";s:1:"N";s:7:"USE_RSS";s:1:"N";s:10:"USE_SEARCH";s:1:"N";s:9:"USE_SHARE";s:1:"N";s:10:"SEF_FOLDER";s:5:"/rew/";s:17:"SEF_URL_TEMPLATES";a:3:{s:4:"news";s:9:"index.php";s:7:"section";s:0:"";s:6:"detail";s:16:"#ELEMENT_ID#.php";}}'),
(26, 's1', 'bitrix:search.page', 'clear', '/search/index.php', 'N', NULL, 99, 1131, 'a:33:{s:7:"RESTART";s:1:"N";s:11:"CHECK_DATES";s:1:"N";s:14:"USE_TITLE_RANK";s:1:"N";s:12:"DEFAULT_SORT";s:4:"rank";s:9:"arrFILTER";a:1:{i:0;s:2:"no";}s:10:"SHOW_WHERE";s:1:"N";s:9:"SHOW_WHEN";s:1:"N";s:17:"PAGE_RESULT_COUNT";s:1:"5";s:9:"AJAX_MODE";s:1:"N";s:18:"AJAX_OPTION_SHADOW";s:1:"Y";s:16:"AJAX_OPTION_JUMP";s:1:"N";s:17:"AJAX_OPTION_STYLE";s:1:"Y";s:19:"AJAX_OPTION_HISTORY";s:1:"N";s:10:"CACHE_TYPE";s:1:"A";s:10:"CACHE_TIME";s:8:"36000000";s:17:"DISPLAY_TOP_PAGER";s:1:"N";s:20:"DISPLAY_BOTTOM_PAGER";s:1:"Y";s:11:"PAGER_TITLE";s:33:"Результаты поиска";s:17:"PAGER_SHOW_ALWAYS";s:1:"N";s:14:"PAGER_TEMPLATE";s:6:"arrows";s:11:"USE_SUGGEST";s:1:"N";s:14:"SHOW_ITEM_TAGS";s:1:"N";s:21:"SHOW_ITEM_DATE_CHANGE";s:1:"N";s:13:"SHOW_ORDER_BY";s:1:"N";s:15:"SHOW_TAGS_CLOUD";s:1:"N";s:22:"AJAX_OPTION_ADDITIONAL";s:0:"";s:18:"COMPONENT_TEMPLATE";s:5:"clear";s:13:"NO_WORD_LOGIC";s:1:"N";s:11:"FILTER_NAME";s:0:"";s:18:"USE_LANGUAGE_GUESS";s:1:"Y";s:11:"SHOW_RATING";s:0:"";s:11:"RATING_TYPE";s:0:"";s:20:"PATH_TO_USER_PROFILE";s:0:"";}'),
(27, 's1', 'bitrix:main.profile', '', '/login/user.php', 'N', NULL, 99, 301, 'a:5:{s:12:"CHECK_RIGHTS";s:1:"Y";s:9:"SEND_INFO";s:1:"N";s:9:"SET_TITLE";s:1:"Y";s:13:"USER_PROPERTY";N;s:18:"USER_PROPERTY_NAME";s:0:"";}'),
(38, 's1', 'bitrix:system.auth.form', 'demo', '/local/templates/exam1/header.php', 'N', NULL, 1883, 2139, 'a:5:{s:18:"COMPONENT_TEMPLATE";s:4:"demo";s:12:"REGISTER_URL";s:7:"/login/";s:19:"FORGOT_PASSWORD_URL";s:7:"/login/";s:11:"PROFILE_URL";s:15:"/login/user.php";s:11:"SHOW_ERRORS";s:1:"N";}'),
(39, 's1', 'bitrix:menu', 'top_horizontal_multilevel', '/local/templates/exam1/header.php', 'N', NULL, 2218, 2731, 'a:10:{s:18:"ALLOW_MULTI_SELECT";s:1:"N";s:15:"CHILD_MENU_TYPE";s:4:"left";s:5:"DELAY";s:1:"N";s:9:"MAX_LEVEL";s:1:"3";s:19:"MENU_CACHE_GET_VARS";a:1:{i:0;s:0:"";}s:15:"MENU_CACHE_TIME";s:7:"3600000";s:15:"MENU_CACHE_TYPE";s:1:"A";s:21:"MENU_CACHE_USE_GROUPS";s:1:"Y";s:14:"ROOT_MENU_TYPE";s:3:"top";s:7:"USE_EXT";s:1:"Y";}');

-- --------------------------------------------------------

--
-- Table structure for table `b_composite_log`
--

CREATE TABLE `b_composite_log` (
  `ID` int(18) NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `AJAX` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USER_ID` int(18) NOT NULL DEFAULT '0',
  `PAGE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_composite_page`
--

CREATE TABLE `b_composite_page` (
  `ID` int(18) NOT NULL,
  `CACHE_KEY` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `HOST` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CREATED` datetime NOT NULL,
  `CHANGED` datetime NOT NULL,
  `LAST_VIEWED` datetime NOT NULL,
  `VIEWS` int(18) NOT NULL DEFAULT '0',
  `REWRITES` int(18) NOT NULL DEFAULT '0',
  `SIZE` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_consent_agreement`
--

CREATE TABLE `b_consent_agreement` (
  `ID` int(18) NOT NULL,
  `CODE` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATA_PROVIDER` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AGREEMENT_TEXT` longtext COLLATE utf8_unicode_ci,
  `LABEL_TEXT` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_consent_field`
--

CREATE TABLE `b_consent_field` (
  `ID` int(18) NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_consent_user_consent`
--

CREATE TABLE `b_consent_user_consent` (
  `ID` int(18) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `AGREEMENT_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(4000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGIN_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ORIGINATOR_ID` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_counter_data`
--

CREATE TABLE `b_counter_data` (
  `ID` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `DATA` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_culture`
--

CREATE TABLE `b_culture` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(1) DEFAULT '1',
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_culture`
--

INSERT INTO `b_culture` (`ID`, `CODE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`) VALUES
(1, 'ru', 'ru', 'DD.MM.YYYY', 'DD.MM.YYYY HH:MI:SS', '#NAME# #LAST_NAME#', 1, 'UTF-8', 'Y'),
(2, 'en', 'en', 'MM/DD/YYYY', 'MM/DD/YYYY H:MI:SS T', '#NAME# #LAST_NAME#', 0, 'UTF-8', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `b_event`
--

CREATE TABLE `b_event` (
  `ID` int(18) NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` int(18) DEFAULT NULL,
  `LID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_FIELDS` longtext COLLATE utf8_unicode_ci,
  `DATE_INSERT` datetime DEFAULT NULL,
  `DATE_EXEC` datetime DEFAULT NULL,
  `SUCCESS_EXEC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DUPLICATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_event_attachment`
--

CREATE TABLE `b_event_attachment` (
  `EVENT_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL,
  `IS_FILE_COPIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_event_log`
--

CREATE TABLE `b_event_log` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SEVERITY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `AUDIT_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `REMOTE_ADDR` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_AGENT` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `GUEST_ID` int(18) DEFAULT NULL,
  `DESCRIPTION` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_event_log`
--

INSERT INTO `b_event_log` (`ID`, `TIMESTAMP_X`, `SEVERITY`, `AUDIT_TYPE_ID`, `MODULE_ID`, `ITEM_ID`, `REMOTE_ADDR`, `USER_AGENT`, `REQUEST_URI`, `SITE_ID`, `USER_ID`, `GUEST_ID`, `DESCRIPTION`) VALUES
(1, '2018-02-26 10:33:30', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:9:"index.php";}'),
(2, '2018-02-26 10:34:14', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:9:"index.php";}'),
(3, '2018-02-26 10:47:24', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=exam1&path=%2F&back_url=%2Ftest.php&siteTemplateId=exam1', NULL, 1, NULL, 'a:1:{s:4:"path";s:8:"test.php";}'),
(4, '2018-02-26 10:48:21', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:8:"test.php";}'),
(5, '2018-02-26 10:50:11', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:8:"test.php";}'),
(6, '2018-02-26 11:02:04', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2Fcompany%2F&path=%2Fcompany%2F&name=left&siteTemplateId=exam1', NULL, 1, NULL, 'a:2:{s:9:"menu_name";s:19:"Левое меню";s:4:"path";s:7:"company";}'),
(7, '2018-02-26 11:02:53', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=exam1&path=%2Fcompany%2F&back_url=%2Fcompany%2F&siteTemplateId=exam1', NULL, 1, NULL, 'a:1:{s:4:"path";s:16:"company/test.php";}'),
(8, '2018-02-26 12:15:14', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:16:"company/test.php";}'),
(9, '2018-02-26 12:54:57', 'UNKNOWN', 'IBLOCK_ELEMENT_EDIT', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=-1', NULL, 1, NULL, 'a:6:{s:2:"ID";i:33;s:4:"CODE";s:15:"cergey-rodionov";s:4:"NAME";s:28:"Cергей Родионов";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(10, '2018-02-26 12:57:05', 'UNKNOWN', 'IBLOCK_ELEMENT_EDIT', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=-1', NULL, 1, NULL, 'a:6:{s:2:"ID";i:33;s:4:"CODE";s:15:"cergey-rodionov";s:4:"NAME";s:28:"Cергей Родионов";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(11, '2018-02-27 07:06:45', 'WARNING', 'SITE_CHECKER_ERROR', 'main', 'CSiteCheckerTest::CommonTest();', '-', '-', '/favicon.ico', 's1', NULL, NULL, ''),
(12, '2018-02-27 07:34:11', 'UNKNOWN', 'IBLOCK_ELEMENT_EDIT', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=0', NULL, 1, NULL, 'a:6:{s:2:"ID";i:33;s:4:"CODE";s:15:"cergey-rodionov";s:4:"NAME";s:28:"Cергей Родионов";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(13, '2018-02-27 08:24:13', 'UNKNOWN', 'IBLOCK_ELEMENT_EDIT', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=0', NULL, 1, NULL, 'a:6:{s:2:"ID";i:33;s:4:"CODE";s:15:"cergey-rodionov";s:4:"NAME";s:28:"Cергей Родионов";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(14, '2018-02-27 08:57:32', 'UNKNOWN', 'IBLOCK_ELEMENT_EDIT', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=0', NULL, 1, NULL, 'a:6:{s:2:"ID";i:35;s:4:"CODE";s:15:"dmitriya-pyalov";s:4:"NAME";s:25:"Дмитрия Пялов";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(15, '2018-02-27 08:57:46', 'UNKNOWN', 'IBLOCK_ELEMENT_EDIT', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=0', NULL, 1, NULL, 'a:6:{s:2:"ID";i:35;s:4:"CODE";s:15:"dmitriya-pyalov";s:4:"NAME";s:25:"Дмитрия Пялов";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(16, '2018-02-27 08:58:48', 'UNKNOWN', 'IBLOCK_ELEMENT_ADD', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=-1', NULL, 1, NULL, 'a:6:{s:2:"ID";i:36;s:4:"CODE";s:17:"askdgfjas-klasdfh";s:4:"NAME";s:17:"askdgfjas klasdfh";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(17, '2018-02-27 09:00:53', 'UNKNOWN', 'IBLOCK_ELEMENT_EDIT', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=0', NULL, 1, NULL, 'a:6:{s:2:"ID";i:36;s:4:"CODE";s:17:"askdgfjas-klasdfh";s:4:"NAME";s:17:"askdgfjas klasdfh";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(18, '2018-02-27 10:01:16', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=exam1&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=exam1', NULL, 1, NULL, 'a:1:{s:4:"path";s:13:"rew/index.php";}'),
(19, '2018-02-27 10:01:16', 'UNKNOWN', 'SECTION_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=exam1&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=exam1', NULL, 1, NULL, 'a:1:{s:4:"path";s:3:"rew";}'),
(20, '2018-02-27 10:01:16', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=exam1&newFolder=Y&path=%2F&back_url=%2F&siteTemplateId=exam1', NULL, 1, NULL, 'a:2:{s:4:"path";b:0;s:9:"menu_name";s:23:"Верхнее меню";}'),
(21, '2018-02-27 10:01:25', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:13:"rew/index.php";}'),
(22, '2018-02-27 10:01:58', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:13:"rew/index.php";}'),
(23, '2018-02-27 10:02:25', 'UNKNOWN', 'MENU_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&new=Y&lang=ru&site=s1&back_url=%2Frew%2F&path=%2Frew&name=left&siteTemplateId=exam1', NULL, 1, NULL, 'a:2:{s:9:"menu_name";s:19:"Левое меню";s:4:"path";s:3:"rew";}'),
(24, '2018-02-27 10:24:57', 'UNKNOWN', 'IBLOCK_ELEMENT_ADD', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=0', NULL, 1, NULL, 'a:6:{s:2:"ID";i:37;s:4:"CODE";s:30:"gdhjsjfsoioisudhifusidufiushgd";s:4:"NAME";s:30:"gdhjsjfsoioisudhifusidufiushgd";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(25, '2018-02-27 10:33:23', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2Frew%2F%3Fclear_cache%3DY%26back_url_admin%3D%252Fbitrix%252Fadmin%252Fdump.php%253Flang%253Dru&path=%2F&name=top&siteTemplateId=exam1', NULL, 1, NULL, 'a:2:{s:9:"menu_name";s:23:"Верхнее меню";s:4:"path";b:0;}'),
(26, '2018-02-27 10:33:38', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2Fsearch%2F&path=%2Fsearch%2F&name=left&siteTemplateId=exam1', NULL, 1, NULL, 'a:2:{s:9:"menu_name";s:19:"Левое меню";s:4:"path";s:6:"search";}'),
(27, '2018-02-27 10:34:22', 'UNKNOWN', 'MENU_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_menu_edit.php?bxsender=core_window_cdialog&lang=ru&site=s1&back_url=%2Fsearch%2Fmap.php&path=%2Fsearch%2F&name=left&siteTemplateId=exam1', NULL, 1, NULL, 'a:2:{s:9:"menu_name";s:19:"Левое меню";s:4:"path";s:6:"search";}'),
(28, '2018-02-27 10:40:30', 'UNKNOWN', 'IBLOCK_ELEMENT_EDIT', 'iblock', '5', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/iblock_element_edit.php?IBLOCK_ID=5&type=reviews&lang=ru&find_section_section=0', NULL, 1, NULL, 'a:6:{s:2:"ID";i:37;s:4:"CODE";s:30:"gdhjsjfsoioisudhifusidufiushgd";s:4:"NAME";s:30:"gdhjsjfsoioisudhifusidufiushgd";s:12:"ELEMENT_NAME";s:14:"Элемент";s:7:"USER_ID";i:1;s:15:"IBLOCK_PAGE_URL";s:20:"/demo/index.php?ID=5";}'),
(29, '2018-02-27 11:39:10', 'UNKNOWN', 'PAGE_ADD', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_new.php?bxsender=core_window_cdialog&lang=ru&site=s1&templateID=exam1&path=%2Flogin%2F&back_url=%2Flogin%2F&siteTemplateId=exam1', NULL, 1, NULL, 'a:1:{s:4:"path";s:14:"login/user.php";}'),
(30, '2018-02-27 11:39:50', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:14:"login/user.php";}'),
(31, '2018-02-27 11:54:58', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:16:"company/test.php";}'),
(32, '2018-02-27 11:56:16', 'UNKNOWN', 'PAGE_EDIT', 'main', 'UNKNOWN', '127.0.0.1', 'Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:58.0) Gecko/20100101 Firefox/58.0', '/bitrix/admin/public_file_edit.php', 's1', 1, NULL, 'a:1:{s:4:"path";s:16:"company/test.php";}');

-- --------------------------------------------------------

--
-- Table structure for table `b_event_message`
--

CREATE TABLE `b_event_message` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL_FROM` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_FROM#',
  `EMAIL_TO` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '#EMAIL_TO#',
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` longtext COLLATE utf8_unicode_ci,
  `MESSAGE_PHP` longtext COLLATE utf8_unicode_ci,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BCC` text COLLATE utf8_unicode_ci,
  `REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CC` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_REPLY_TO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRIORITY` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD1_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD2_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_TEMPLATE_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ADDITIONAL_FIELD` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_event_message`
--

INSERT INTO `b_event_message` (`ID`, `TIMESTAMP_X`, `EVENT_NAME`, `LID`, `ACTIVE`, `EMAIL_FROM`, `EMAIL_TO`, `SUBJECT`, `MESSAGE`, `MESSAGE_PHP`, `BODY_TYPE`, `BCC`, `REPLY_TO`, `CC`, `IN_REPLY_TO`, `PRIORITY`, `FIELD1_NAME`, `FIELD1_VALUE`, `FIELD2_NAME`, `FIELD2_VALUE`, `SITE_TEMPLATE_ID`, `ADDITIONAL_FIELD`, `LANGUAGE_ID`) VALUES
(1, '2018-02-26 08:38:03', 'NEW_USER', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#DEFAULT_EMAIL_FROM#', '#SITE_NAME#: Зарегистрировался новый пользователь', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте #SERVER_NAME# успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: #USER_ID#\n\nИмя: #NAME#\nФамилия: #LAST_NAME#\nE-Mail: #EMAIL#\n\nLogin: #LOGIN#\n\nПисьмо сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nНа сайте <?=$arParams["SERVER_NAME"];?> успешно зарегистрирован новый пользователь.\n\nДанные пользователя:\nID пользователя: <?=$arParams["USER_ID"];?>\n\n\nИмя: <?=$arParams["NAME"];?>\n\nФамилия: <?=$arParams["LAST_NAME"];?>\n\nE-Mail: <?=$arParams["EMAIL"];?>\n\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nПисьмо сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(2, '2018-02-26 08:38:03', 'USER_INFO', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Регистрационная информация', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n<?=$arParams["NAME"];?> <?=$arParams["LAST_NAME"];?>,\n\n<?=$arParams["MESSAGE"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams["USER_ID"];?>\n\nСтатус профиля: <?=$arParams["STATUS"];?>\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nВы можете изменить пароль, перейдя по следующей ссылке:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams["CHECKWORD"];?>&USER_LOGIN=<?=$arParams["URL_LOGIN"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(3, '2018-02-26 08:38:03', 'USER_PASS_REQUEST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Запрос на смену пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=#CHECKWORD#&USER_LOGIN=#URL_LOGIN#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n<?=$arParams["NAME"];?> <?=$arParams["LAST_NAME"];?>,\n\n<?=$arParams["MESSAGE"];?>\n\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth/index.php?change_password=yes&lang=ru&USER_CHECKWORD=<?=$arParams["CHECKWORD"];?>&USER_LOGIN=<?=$arParams["URL_LOGIN"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams["USER_ID"];?>\n\nСтатус профиля: <?=$arParams["STATUS"];?>\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(4, '2018-02-26 08:38:03', 'USER_PASS_CHANGED', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение смены пароля', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n#NAME# #LAST_NAME#,\n\n#MESSAGE#\n\nВаша регистрационная информация:\n\nID пользователя: #USER_ID#\nСтатус профиля: #STATUS#\nLogin: #LOGIN#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n<?=$arParams["NAME"];?> <?=$arParams["LAST_NAME"];?>,\n\n<?=$arParams["MESSAGE"];?>\n\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams["USER_ID"];?>\n\nСтатус профиля: <?=$arParams["STATUS"];?>\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(5, '2018-02-26 08:38:03', 'NEW_USER_CONFIRM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение регистрации нового пользователя', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере #SERVER_NAME#.\n\nВаш код для подтверждения регистрации: #CONFIRM_CODE#\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#&confirm_code=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://#SERVER_NAME#/auth/index.php?confirm_registration=yes&confirm_user_id=#USER_ID#\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был использован при регистрации нового пользователя на сервере <?=$arParams["SERVER_NAME"];?>.\n\nВаш код для подтверждения регистрации: <?=$arParams["CONFIRM_CODE"];?>\n\n\nДля подтверждения регистрации перейдите по следующей ссылке:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams["USER_ID"];?>&confirm_code=<?=$arParams["CONFIRM_CODE"];?>\n\n\nВы также можете ввести код для подтверждения регистрации на странице:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth/index.php?confirm_registration=yes&confirm_user_id=<?=$arParams["USER_ID"];?>\n\n\nВнимание! Ваш профиль не будет активным, пока вы не подтвердите свою регистрацию.\n\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(6, '2018-02-26 08:38:03', 'USER_INVITE', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Приглашение на сайт', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\nЗдравствуйте, #NAME# #LAST_NAME#!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: #ID#\nLogin: #LOGIN#\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://#SERVER_NAME#/auth.php?change_password=yes&USER_LOGIN=#URL_LOGIN#&USER_CHECKWORD=#CHECKWORD#\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\nЗдравствуйте, <?=$arParams["NAME"];?> <?=$arParams["LAST_NAME"];?>!\n\nАдминистратором сайта вы добавлены в число зарегистрированных пользователей.\n\nПриглашаем Вас на наш сайт.\n\nВаша регистрационная информация:\n\nID пользователя: <?=$arParams["ID"];?>\n\nLogin: <?=$arParams["LOGIN"];?>\n\n\nРекомендуем вам сменить установленный автоматически пароль.\n\nДля смены пароля перейдите по следующей ссылке:\nhttp://<?=$arParams["SERVER_NAME"];?>/auth.php?change_password=yes&USER_LOGIN=<?=$arParams["URL_LOGIN"];?>&USER_CHECKWORD=<?=$arParams["CHECKWORD"];?>\n\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(7, '2018-02-26 08:38:03', 'FEEDBACK_FORM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: Сообщение из формы обратной связи', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: #AUTHOR#\nE-mail автора: #AUTHOR_EMAIL#\n\nТекст сообщения:\n#TEXT#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nВам было отправлено сообщение через форму обратной связи\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\nE-mail автора: <?=$arParams["AUTHOR_EMAIL"];?>\n\n\nТекст сообщения:\n<?=$arParams["TEXT"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ru'),
(8, '2018-02-26 08:38:26', 'NEW_BLOG_MESSAGE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #BLOG_NAME# : #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение в блоге "#BLOG_NAME#"\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\nДата: #MESSAGE_DATE#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nНовое сообщение в блоге "<?=$arParams["BLOG_NAME"];?>"\n\nТема:\n<?=$arParams["MESSAGE_TITLE"];?>\n\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\nДата: <?=$arParams["MESSAGE_DATE"];?>\n\n\nТекст сообщения:\n<?=$arParams["MESSAGE_TEXT"];?>\n\n\nАдрес сообщения:\n<?=$arParams["MESSAGE_PATH"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2018-02-26 08:38:26', 'NEW_BLOG_COMMENT', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге "#BLOG_NAME#" на сообщение "#MESSAGE_TITLE#"\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге "<?=$arParams["BLOG_NAME"];?>" на сообщение "<?=$arParams["MESSAGE_TITLE"];?>"\n\nТема:\n<?=$arParams["COMMENT_TITLE"];?>\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\nДата: <?=$arParams["COMMENT_DATE"];?>\n\n\nТекст сообщения:\n<?=$arParams["COMMENT_TEXT"];?>\n\n\nАдрес сообщения:\n<?=$arParams["COMMENT_PATH"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '2018-02-26 08:38:26', 'NEW_BLOG_COMMENT2COMMENT', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE# : #COMMENT_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге "#BLOG_NAME#" на сообщение "#MESSAGE_TITLE#".\n\nТема:\n#COMMENT_TITLE#\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге "<?=$arParams["BLOG_NAME"];?>" на сообщение "<?=$arParams["MESSAGE_TITLE"];?>".\n\nТема:\n<?=$arParams["COMMENT_TITLE"];?>\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\nДата: <?=$arParams["COMMENT_DATE"];?>\n\n\nТекст сообщения:\n<?=$arParams["COMMENT_TEXT"];?>\n\n\nАдрес сообщения:\n<?=$arParams["COMMENT_PATH"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2018-02-26 08:38:26', 'NEW_BLOG_COMMENT_WITHOUT_TITLE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий в блоге "#BLOG_NAME#" на сообщение "#MESSAGE_TITLE#"\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nНовый комментарий в блоге "<?=$arParams["BLOG_NAME"];?>" на сообщение "<?=$arParams["MESSAGE_TITLE"];?>"\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\nДата: <?=$arParams["COMMENT_DATE"];?>\n\n\nТекст сообщения:\n<?=$arParams["COMMENT_TEXT"];?>\n\n\nАдрес сообщения:\n<?=$arParams["COMMENT_PATH"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2018-02-26 08:38:26', 'NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге "#BLOG_NAME#" на сообщение "#MESSAGE_TITLE#".\n\nАвтор: #AUTHOR#\nДата: #COMMENT_DATE#\n\nТекст сообщения:\n#COMMENT_TEXT#\n\nАдрес сообщения:\n#COMMENT_PATH#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nНовый комментарий на ваш комментарий в блоге "<?=$arParams["BLOG_NAME"];?>" на сообщение "<?=$arParams["MESSAGE_TITLE"];?>".\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\nДата: <?=$arParams["COMMENT_DATE"];?>\n\n\nТекст сообщения:\n<?=$arParams["COMMENT_TEXT"];?>\n\n\nАдрес сообщения:\n<?=$arParams["COMMENT_PATH"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2018-02-26 08:38:26', 'BLOG_YOUR_BLOG_TO_USER', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] Ваш блог "#BLOG_NAME#" был добавлен в друзья к #USER#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВаш блог "#BLOG_NAME#" был добавлен в друзья к #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nВаш блог "<?=$arParams["BLOG_NAME"];?>" был добавлен в друзья к <?=$arParams["USER"];?>.\n\nПрофиль пользователя: <?=$arParams["USER_URL"];?>\n\n\nАдрес вашего блога: <?=$arParams["BLOG_ADR"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2018-02-26 08:38:26', 'BLOG_YOU_TO_BLOG', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] Вы были добавлены в друзья блога "#BLOG_NAME#"', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы были добавлены в друзья блога "#BLOG_NAME#".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nВы были добавлены в друзья блога "<?=$arParams["BLOG_NAME"];?>".\n\nАдрес блога: <?=$arParams["BLOG_ADR"];?>\n\n\nВаш профиль: <?=$arParams["USER_URL"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2018-02-26 08:38:26', 'BLOG_BLOG_TO_YOU', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] К вам в друзья был добавлен блог "#BLOG_NAME#"', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nК вам в друзья был добавлен блог "#BLOG_NAME#".\n\nАдрес блога: #BLOG_ADR#\n\nВаш профиль: #USER_URL#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nК вам в друзья был добавлен блог "<?=$arParams["BLOG_NAME"];?>".\n\nАдрес блога: <?=$arParams["BLOG_ADR"];?>\n\n\nВаш профиль: <?=$arParams["USER_URL"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2018-02-26 08:38:26', 'BLOG_USER_TO_YOUR_BLOG', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [B] В ваш блог "#BLOG_NAME#" был добавлен друг #USER#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВ ваш блог "#BLOG_NAME#" был добавлен друг #USER#.\n\nПрофиль пользователя: #USER_URL#\n\nАдрес вашего блога: #BLOG_ADR#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nВ ваш блог "<?=$arParams["BLOG_NAME"];?>" был добавлен друг <?=$arParams["USER"];?>.\n\nПрофиль пользователя: <?=$arParams["USER_URL"];?>\n\n\nАдрес вашего блога: <?=$arParams["BLOG_ADR"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2018-02-26 08:38:26', 'BLOG_SONET_NEW_POST', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#POST_TITLE#', '<?EventMessageThemeCompiler::includeComponent("bitrix:socialnetwork.blog.post.mail","",Array("EMAIL_TO" => "{#EMAIL_TO#}","RECIPIENT_ID" => "{#RECIPIENT_ID#}","POST_ID" => "{#POST_ID#}","URL" => "{#URL#}"));?>', '<?EventMessageThemeCompiler::includeComponent("bitrix:socialnetwork.blog.post.mail","",Array("EMAIL_TO" => "{$arParams[\'EMAIL_TO\']}","RECIPIENT_ID" => "{$arParams[\'RECIPIENT_ID\']}","POST_ID" => "{$arParams[\'POST_ID\']}","URL" => "{$arParams[\'URL\']}"));?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_user', NULL, NULL),
(18, '2018-02-26 08:38:26', 'BLOG_SONET_NEW_COMMENT', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', 'Re: #POST_TITLE#', '<?EventMessageThemeCompiler::includeComponent("bitrix:socialnetwork.blog.post.comment.mail","",Array("COMMENT_ID" => "{#COMMENT_ID#}","RECIPIENT_ID" => "{#RECIPIENT_ID#}","EMAIL_TO" => "{#EMAIL_TO#}","POST_ID" => "{#POST_ID#}","URL" => "{#URL#}"));?>', '<?EventMessageThemeCompiler::includeComponent("bitrix:socialnetwork.blog.post.comment.mail","",Array("COMMENT_ID" => "{$arParams[\'COMMENT_ID\']}","RECIPIENT_ID" => "{$arParams[\'RECIPIENT_ID\']}","EMAIL_TO" => "{$arParams[\'EMAIL_TO\']}","POST_ID" => "{$arParams[\'POST_ID\']}","URL" => "{$arParams[\'URL\']}"));?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_user', NULL, NULL),
(19, '2018-02-26 08:38:26', 'BLOG_SONET_POST_SHARE', 's1', 'Y', '#EMAIL_FROM#', '#EMAIL_TO#', '#POST_TITLE#', '<?EventMessageThemeCompiler::includeComponent("bitrix:socialnetwork.blog.post_share.mail","",Array("EMAIL_TO" => "{#EMAIL_TO#}","RECIPIENT_ID" => "{#RECIPIENT_ID#}","POST_ID" => "{#POST_ID#}","URL" => "{#URL#}"));?>', '<?EventMessageThemeCompiler::includeComponent("bitrix:socialnetwork.blog.post_share.mail","",Array("EMAIL_TO" => "{$arParams[\'EMAIL_TO\']}","RECIPIENT_ID" => "{$arParams[\'RECIPIENT_ID\']}","POST_ID" => "{$arParams[\'POST_ID\']}","URL" => "{$arParams[\'URL\']}"));?>', 'html', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mail_user', NULL, NULL),
(20, '2018-02-26 08:38:26', 'BLOG_POST_BROADCAST', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: #MESSAGE_TITLE#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n#MESSAGE_TITLE#\n\nАвтор: #AUTHOR#\n\nТекст сообщения:\n#MESSAGE_TEXT#\n\nАдрес сообщения:\n#MESSAGE_PATH#\n\nСообщение сгенерировано автоматически.', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nНа сайте добавлено новое сообщение.\n\nТема:\n<?=$arParams["MESSAGE_TITLE"];?>\n\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\n\nТекст сообщения:\n<?=$arParams["MESSAGE_TEXT"];?>\n\n\nАдрес сообщения:\n<?=$arParams["MESSAGE_PATH"];?>\n\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2018-02-26 08:39:28', 'NEW_FORUM_MESSAGE', 's1', 'Y', '#FROM_EMAIL#', '#RECIPIENT#', '#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nНовое сообщение на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nНовое сообщение на форуме <?=$arParams["SERVER_NAME"];?>.\n\nТема:\n<?=$arParams["TOPIC_TITLE"];?>\n\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\nДата : <?=$arParams["MESSAGE_DATE"];?>\n\nТекст сообщения:\n\n<?=$arParams["MESSAGE_TEXT"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams["SERVER_NAME"];?><?=$arParams["PATH2FORUM"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2018-02-26 08:39:28', 'NEW_FORUM_PRIV', 's1', 'Y', '#FROM_EMAIL#', '#TO_EMAIL#', '#SITE_NAME#: [private] #SUBJECT#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME# #FROM_EMAIL#\nДата : #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams["SERVER_NAME"];?>.\n\nТема: <?=$arParams["SUBJECT"];?>\n\n\nАвтор: <?=$arParams["FROM_NAME"];?> <?=$arParams["FROM_EMAIL"];?>\n\nДата : <?=$arParams["MESSAGE_DATE"];?>\n\nСообщение:\n\n<?=$arParams["MESSAGE"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2018-02-26 08:39:28', 'NEW_FORUM_PRIVATE_MESSAGE', 's1', 'Y', '#FROM_EMAIL#', '#TO_EMAIL#', '#SITE_NAME#: [private] #SUBJECT#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте #SERVER_NAME#.\n\nТема: #SUBJECT#\n\nАвтор: #FROM_NAME#\nДата: #MESSAGE_DATE#\nСообщение:\n\n#MESSAGE#\n\nСсылка на сообщение: #MESSAGE_LINK#Сообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nВы получили персональное сообщение с форума на сайте <?=$arParams["SERVER_NAME"];?>.\n\nТема: <?=$arParams["SUBJECT"];?>\n\n\nАвтор: <?=$arParams["FROM_NAME"];?>\n\nДата: <?=$arParams["MESSAGE_DATE"];?>\n\nСообщение:\n\n<?=$arParams["MESSAGE"];?>\n\n\nСсылка на сообщение: <?=$arParams["MESSAGE_LINK"];?>Сообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2018-02-26 08:39:28', 'EDIT_FORUM_MESSAGE', 's1', 'Y', '#FROM_EMAIL#', '#RECIPIENT#', '#SITE_NAME#: [F] #TOPIC_TITLE# : #FORUM_NAME#', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nИзменение сообщения на форуме #SERVER_NAME#.\n\nТема:\n#TOPIC_TITLE#\n\nАвтор: #AUTHOR#\nДата : #MESSAGE_DATE#\nТекст сообщения:\n\n#MESSAGE_TEXT#\n\nАдрес сообщения:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nИзменение сообщения на форуме <?=$arParams["SERVER_NAME"];?>.\n\nТема:\n<?=$arParams["TOPIC_TITLE"];?>\n\n\nАвтор: <?=$arParams["AUTHOR"];?>\n\nДата : <?=$arParams["MESSAGE_DATE"];?>\n\nТекст сообщения:\n\n<?=$arParams["MESSAGE_TEXT"];?>\n\n\nАдрес сообщения:\nhttp://<?=$arParams["SERVER_NAME"];?><?=$arParams["PATH2FORUM"];?>\n\n\nСообщение сгенерировано автоматически.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2018-02-26 08:39:28', 'FORUM_NEW_MESSAGE_MAIL', 's1', 'Y', '#FROM_EMAIL#', '#RECIPIENT#', '#TOPIC_TITLE#', '#MESSAGE_TEXT#\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум #FORUM_NAME#.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://#SERVER_NAME##PATH2FORUM#\n\nНаписать новое сообщение: #FORUM_EMAIL#\n\nАвтор сообщения: #AUTHOR#\n\nСообщение сгенерировано автоматически на сайте #SITE_NAME#.\n', '<?=$arParams["MESSAGE_TEXT"];?>\n\n\n------------------------------------------  \nВы получили это сообщение, так как выподписаны на форум <?=$arParams["FORUM_NAME"];?>.\n\nОтветить на сообщение можно по электронной почте или через форму на сайте:\nhttp://<?=$arParams["SERVER_NAME"];?><?=$arParams["PATH2FORUM"];?>\n\n\nНаписать новое сообщение: <?=$arParams["FORUM_EMAIL"];?>\n\n\nАвтор сообщения: <?=$arParams["AUTHOR"];?>\n\n\nСообщение сгенерировано автоматически на сайте <?=$arParams["SITE_NAME"];?>.\n', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2018-02-26 08:40:13', 'VIRUS_DETECTED', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Обнаружен вирус', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера #SERVER_NAME# обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://#SERVER_NAME#/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nЗдравствуйте!\n\nВы получили это сообщение, так как модуль проактивной защиты сервера <?=$arParams["SERVER_NAME"];?> обнаружил код, похожий на вирус.\n\n1. Подозрительный код был вырезан из html.\n2. Проверьте журнал вторжений и убедитесь, что код действительно вредоносный, а не является кодом какого-либо счетчика или фреймворка.\n (ссылка: http://<?=$arParams["SERVER_NAME"];?>/bitrix/admin/event_log.php?lang=ru&set_filter=Y&find_type=audit_type_id&find_audit_type[]=SECURITY_VIRUS )\n3. В случае, если код не является опасным, добавьте его в исключения на странице настройки антивируса.\n (ссылка: http://<?=$arParams["SERVER_NAME"];?>/bitrix/admin/security_antivirus.php?lang=ru&tabControl_active_tab=exceptions )\n4. Если код является вирусным, то необходимо выполнить следующие действия:\n\n а) Смените пароли доступа к сайту у администраторов и ответственных сотрудников.\n б) Смените пароли доступа по ssh и ftp.\n в) Проверьте и вылечите компьютеры администраторов, имевших доступ к сайту по ssh или ftp.\n г) В программах доступа к сайту по ssh и ftp отключите сохранение паролей.\n д) Удалите вредоносный код из зараженных файлов. Например, восстановите поврежденные файлы из самой свежей резервной копии.\n\n---------------------------------------------------------------------\nСообщение сгенерировано автоматически.\n', 'text', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-02-26 08:40:31', 'SUBSCRIBE_CONFIRM', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL#', '#SITE_NAME#: Подтверждение подписки', 'Информационное сообщение сайта #SITE_NAME#\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера #SERVER_NAME#.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ #EMAIL#\nДата добавления/редактирования .... #DATE_SUBSCR#\n\nВаш код для подтверждения подписки: #CONFIRM_CODE#\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#\n\nОтписаться:\nhttp://#SERVER_NAME##SUBSCR_SECTION#subscr_edit.php?ID=#ID#&CONFIRM_CODE=#CONFIRM_CODE#&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n', 'Информационное сообщение сайта <?=$arParams["SITE_NAME"];?>\n\n------------------------------------------\n\nЗдравствуйте,\n\nВы получили это сообщение, так как ваш адрес был подписан\nна список рассылки сервера <?=$arParams["SERVER_NAME"];?>.\n\nДополнительная информация о подписке:\n\nАдрес подписки (email) ............ <?=$arParams["EMAIL"];?>\n\nДата добавления/редактирования .... <?=$arParams["DATE_SUBSCR"];?>\n\n\nВаш код для подтверждения подписки: <?=$arParams["CONFIRM_CODE"];?>\n\n\nДля подтверждения подписки перейдите по следующей ссылке:\nhttp://<?=$arParams["SERVER_NAME"];?><?=$arParams["SUBSCR_SECTION"];?>subscr_edit.php?ID=<?=$arParams["ID"];?>&CONFIRM_CODE=<?=$arParams["CONFIRM_CODE"];?>\n\n\nВы также можете ввести код для подтверждения подписки на странице:\nhttp://<?=$arParams["SERVER_NAME"];?><?=$arParams["SUBSCR_SECTION"];?>subscr_edit.php?ID=<?=$arParams["ID"];?>\n\n\nВнимание! Вы не будете получать сообщения рассылки, пока не подтвердите\nсвою подписку.\n\n---------------------------------------------------------------------\nСохраните это письмо, так как оно содержит информацию для авторизации.\nИспользуя код подтверждения подписки, вы cможете изменить параметры\nподписки или отписаться от рассылки.\n\nИзменить параметры:\nhttp://<?=$arParams["SERVER_NAME"];?><?=$arParams["SUBSCR_SECTION"];?>subscr_edit.php?ID=<?=$arParams["ID"];?>&CONFIRM_CODE=<?=$arParams["CONFIRM_CODE"];?>\n\n\nОтписаться:\nhttp://<?=$arParams["SERVER_NAME"];?><?=$arParams["SUBSCR_SECTION"];?>subscr_edit.php?ID=<?=$arParams["ID"];?>&CONFIRM_CODE=<?=$arParams["CONFIRM_CODE"];?>&action=unsubscribe\n---------------------------------------------------------------------\n\nСообщение сгенерировано автоматически.\n', 'text', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2018-02-26 08:40:36', 'VOTE_FOR', 's1', 'Y', '#DEFAULT_EMAIL_FROM#', '#EMAIL_TO#', '#SITE_NAME#: [V] #VOTE_TITLE#', '#USER_NAME# принял участие в опросе "#VOTE_TITLE#":\n#VOTE_STATISTIC#\n\nhttp://#SERVER_NAME##URL#\nСообщение сгенерировано автоматически.', '<?=$arParams["USER_NAME"];?> принял участие в опросе "<?=$arParams["VOTE_TITLE"];?>":\n<?=$arParams["VOTE_STATISTIC"];?>\n\n\nhttp://<?=$arParams["SERVER_NAME"];?><?=$arParams["URL"];?>\n\nСообщение сгенерировано автоматически.', 'text', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_event_message_attachment`
--

CREATE TABLE `b_event_message_attachment` (
  `EVENT_MESSAGE_ID` int(18) NOT NULL,
  `FILE_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_event_message_site`
--

CREATE TABLE `b_event_message_site` (
  `EVENT_MESSAGE_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_event_message_site`
--

INSERT INTO `b_event_message_site` (`EVENT_MESSAGE_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1'),
(3, 's1'),
(4, 's1'),
(5, 's1'),
(6, 's1'),
(7, 's1'),
(8, 's1'),
(9, 's1'),
(10, 's1'),
(11, 's1'),
(12, 's1'),
(13, 's1'),
(14, 's1'),
(15, 's1'),
(16, 's1'),
(17, 's1'),
(18, 's1'),
(19, 's1'),
(20, 's1'),
(21, 's1'),
(22, 's1'),
(23, 's1'),
(24, 's1'),
(25, 's1'),
(26, 's1'),
(27, 's1'),
(28, 's1');

-- --------------------------------------------------------

--
-- Table structure for table `b_event_type`
--

CREATE TABLE `b_event_type` (
  `ID` int(18) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EVENT_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(18) NOT NULL DEFAULT '150'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_event_type`
--

INSERT INTO `b_event_type` (`ID`, `LID`, `EVENT_NAME`, `NAME`, `DESCRIPTION`, `SORT`) VALUES
(1, 'ru', 'NEW_USER', 'Зарегистрировался новый пользователь', '\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n', 1),
(2, 'ru', 'USER_INFO', 'Информация о пользователе', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 2),
(3, 'ru', 'NEW_USER_CONFIRM', 'Подтверждение регистрации нового пользователя', '\n\n\n#USER_ID# - ID пользователя\n#LOGIN# - Логин\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#USER_IP# - IP пользователя\n#USER_HOST# - Хост пользователя\n#CONFIRM_CODE# - Код подтверждения\n', 3),
(4, 'ru', 'USER_PASS_REQUEST', 'Запрос на смену пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 4),
(5, 'ru', 'USER_PASS_CHANGED', 'Подтверждение смены пароля', '\n\n#USER_ID# - ID пользователя\n#STATUS# - Статус логина\n#MESSAGE# - Сообщение пользователю\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#CHECKWORD# - Контрольная строка для смены пароля\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#EMAIL# - E-Mail пользователя\n', 5),
(6, 'ru', 'USER_INVITE', 'Приглашение на сайт нового пользователя', '#ID# - ID пользователя\n#LOGIN# - Логин\n#URL_LOGIN# - Логин, закодированный для использования в URL\n#EMAIL# - EMail\n#NAME# - Имя\n#LAST_NAME# - Фамилия\n#PASSWORD# - пароль пользователя \n#CHECKWORD# - Контрольная строка для смены пароля\n#XML_ID# - ID пользователя для связи с внешними источниками\n', 6),
(7, 'ru', 'FEEDBACK_FORM', 'Отправка сообщения через форму обратной связи', '#AUTHOR# - Автор сообщения\n#AUTHOR_EMAIL# - Email автора сообщения\n#TEXT# - Текст сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 7),
(8, 'en', 'NEW_USER', 'New user was registered', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#USER_IP# - User IP\n#USER_HOST# - User Host\n', 1),
(9, 'en', 'USER_INFO', 'Account Information', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 2),
(10, 'en', 'NEW_USER_CONFIRM', 'New user registration confirmation', '\n\n#USER_ID# - User ID\n#LOGIN# - Login\n#EMAIL# - E-mail\n#NAME# - First name\n#LAST_NAME# - Last name\n#USER_IP# - User IP\n#USER_HOST# - User host\n#CONFIRM_CODE# - Confirmation code\n', 3),
(11, 'en', 'USER_PASS_REQUEST', 'Password Change Request', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 4),
(12, 'en', 'USER_PASS_CHANGED', 'Password Change Confirmation', '\n\n#USER_ID# - User ID\n#STATUS# - Account status\n#MESSAGE# - Message for user\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#CHECKWORD# - Check string for password change\n#NAME# - Name\n#LAST_NAME# - Last Name\n#EMAIL# - User E-Mail\n', 5),
(13, 'en', 'USER_INVITE', 'Invitation of a new site user', '#ID# - User ID\n#LOGIN# - Login\n#URL_LOGIN# - Encoded login for use in URL\n#EMAIL# - EMail\n#NAME# - Name\n#LAST_NAME# - Last Name\n#PASSWORD# - User password \n#CHECKWORD# - Password check string\n#XML_ID# - User ID to link with external data sources\n\n', 6),
(14, 'en', 'FEEDBACK_FORM', 'Sending a message using a feedback form', '#AUTHOR# - Message author\n#AUTHOR_EMAIL# - Author\'s e-mail address\n#TEXT# - Message text\n#EMAIL_FROM# - Sender\'s e-mail address\n#EMAIL_TO# - Recipient\'s e-mail address', 7),
(15, 'ru', 'NEW_BLOG_MESSAGE', 'Новое сообщение в блоге', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_DATE# - Дата сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100),
(16, 'ru', 'NEW_BLOG_COMMENT', 'Новый комментарий в блоге', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100),
(17, 'ru', 'NEW_BLOG_COMMENT2COMMENT', 'Новый комментарий на ваш комментарий в блоге', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100),
(18, 'ru', 'NEW_BLOG_COMMENT_WITHOUT_TITLE', 'Новый комментарий в блоге (без темы)', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#MESSAGE_TITLE# - Тема сообщения\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100),
(19, 'ru', 'NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE', 'Новый комментарий на ваш комментарий в блоге (без темы)', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#COMMENT_TITLE# - Заголовок комментария\n#COMMENT_TEXT# - Текст комментария\n#COMMENT_DATE# - Текст комментария\n#COMMENT_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма', 100),
(20, 'ru', 'BLOG_YOUR_BLOG_TO_USER', 'Ваш блог был добавлен в друзья', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100),
(21, 'ru', 'BLOG_YOU_TO_BLOG', 'Вы были добавлены в друзья блога', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100),
(22, 'ru', 'BLOG_BLOG_TO_YOU', 'К вам в друзья был добавлен блог', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100),
(23, 'ru', 'BLOG_USER_TO_YOUR_BLOG', 'В ваш блог был добавлен друг', '#BLOG_ID# - ID блога \n#BLOG_NAME# - Название блога\n#BLOG_URL# - Название блога латиницей\n#BLOG_ADR# - Адрес блога\n#USER_ID# - ID пользователя\n#USER# - Пользователь\n#USER_URL# - Адрес пользователя\n#EMAIL_FROM# - Email отправителя письма\n#EMAIL_TO# - Email получателя письма\n', 100),
(24, 'ru', 'BLOG_SONET_NEW_POST', 'Добавлено новое сообщение', '#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n', 100),
(25, 'ru', 'BLOG_SONET_NEW_COMMENT', 'Добавлен новый комментарий', '#EMAIL_TO# - Email получателя письма\n#COMMENT_ID# - ID комментария\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n', 100),
(26, 'ru', 'BLOG_SONET_POST_SHARE', 'Добавлен новый получатель сообщения', '#EMAIL_TO# - Email получателя письма\n#POST_ID# - ID сообщения\n#RECIPIENT_ID# - ID получателя\n#URL_ID# - URL страницы сообщения\n', 100),
(27, 'ru', 'BLOG_POST_BROADCAST', 'Добавлено новое сообщение', '\n#MESSAGE_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#MESSAGE_PATH# - URL адрес сообщения\n#AUTHOR# - Автор сообщения\n#EMAIL_TO# - Email получателя письма', 100),
(28, 'en', 'NEW_BLOG_MESSAGE', 'New blog message', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#MESSAGE_TEXT# - Message text\n#MESSAGE_DATE# - Message date\n#MESSAGE_PATH# - URL to message\n#AUTHOR# - Message author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100),
(29, 'en', 'NEW_BLOG_COMMENT', 'New comment in blog', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100),
(30, 'en', 'NEW_BLOG_COMMENT2COMMENT', 'New comment for your in blog', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TITLE# - Comment title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100),
(31, 'en', 'NEW_BLOG_COMMENT_WITHOUT_TITLE', 'New comment in blog (without subject)', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100),
(32, 'en', 'NEW_BLOG_COMMENT2COMMENT_WITHOUT_TITLE', 'New comment for your in blog (without subject)', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog title\n#BLOG_URL# - Blog url\n#MESSAGE_TITLE# - Message title\n#COMMENT_TEXT# - Comment text\n#COMMENT_DATE# - Comment date\n#COMMENT_PATH# - Comment URL\n#AUTHOR# - Comment author\n#EMAIL_FROM# - Sender email\n#EMAIL_TO# - Recipient email', 100),
(33, 'en', 'BLOG_YOUR_BLOG_TO_USER', 'Your blog has been added to friends', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100),
(34, 'en', 'BLOG_YOU_TO_BLOG', 'You have been added to blog friends', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100),
(35, 'en', 'BLOG_BLOG_TO_YOU', 'A blog has been added to your friends', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100),
(36, 'en', 'BLOG_USER_TO_YOUR_BLOG', 'A friend has been added to your blog', '#BLOG_ID# - Blog ID\n#BLOG_NAME# - Blog name\n#BLOG_URL# - Blog name, Latin letters only\n#BLOG_ADR# - Blog address\n#USER_ID# - User ID\n#USER# - User\n#USER_URL# - User URL\n#EMAIL_FROM# - Sender E-mail\n#EMAIL_TO# - Recipient E-mail', 100),
(37, 'en', 'BLOG_SONET_NEW_POST', 'New post added', '#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL', 100),
(38, 'en', 'BLOG_SONET_NEW_COMMENT', 'Comment added', '#EMAIL_TO# - Recipient email\n#COMMENT_ID# - Comment ID\n#POST_ID# - Post ID\n#URL_ID# - Post URL', 100),
(39, 'en', 'BLOG_SONET_POST_SHARE', 'New recipient added', '#EMAIL_TO# - Recipient email\n#POST_ID# - Post ID\n#URL_ID# - Post URL', 100),
(40, 'en', 'BLOG_POST_BROADCAST', 'New post added', '\n#MESSAGE_TITLE# - Post subject\n#MESSAGE_TEXT# - Post text \n#MESSAGE_PATH# - Post URL\n#AUTHOR# - Post author\n#EMAIL_TO# - E-mail recipient', 100),
(41, 'ru', 'NEW_FORUM_MESSAGE', 'Новое сообщение на форуме', '\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма', 100),
(42, 'ru', 'NEW_FORUM_PRIV', 'Приватное письмо посетителю форума', '\n			#FROM_NAME# - Автор сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Тело сообщения\n			#MESSAGE_DATE# - Дата сообщения', 100),
(43, 'ru', 'NEW_FORUM_PRIVATE_MESSAGE', 'Приватное сообщение', '\n			#FROM_NAME# - Имя автора сообщения\n			#FROM_USER_ID# - ID автора сообщения\n			#FROM_EMAIL# - E-Mail автора сообщения\n			#TO_NAME# - Имя получателя сообщения\n			#TO_USER_ID# - ID получателя сообщения\n			#TO_EMAIL# - E-Mail получателя сообщения\n			#SUBJECT# - Тема сообщения\n			#MESSAGE# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#MESSAGE_LINK# - Ссылка на сообщение', 100),
(44, 'ru', 'EDIT_FORUM_MESSAGE', 'Изменение сообщения на форуме', '\n			#FORUM_ID# - ID форума\n			#FORUM_NAME# - Название форума\n			#TOPIC_ID# - ID темы\n			#MESSAGE_ID# - ID сообщения\n			#TOPIC_TITLE# - Тема сообщения\n			#MESSAGE_TEXT# - Текст сообщения\n			#MESSAGE_DATE# - Дата сообщения\n			#AUTHOR# - Автор сообщения\n			#RECIPIENT# - Получатель сообщения\n			#TAPPROVED# - Тема сообщения показывается\n			#MAPPROVED# - Тело сообщения показывается\n			#PATH2FORUM# - Адрес сообщения\n			#FROM_EMAIL# - E-Mail для поля From письма', 100),
(45, 'en', 'NEW_FORUM_MESSAGE', 'New forum message', '\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail', 100),
(46, 'en', 'NEW_FORUM_PRIV', 'Private message for forum user', '\n			#FROM_NAME# - Name of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date', 100),
(47, 'en', 'NEW_FORUM_PRIVATE_MESSAGE', 'Private message for forum user', '\n			#FROM_NAME# - Name of the sender\n			#FROM_USER_ID# - ID of the sender\n			#FROM_EMAIL# - E-Mail of the sender\n			#TO_NAME# - Name of recipient\n			#TO_USER_ID# - ID of recipient\n			#TO_EMAIL# - E-Mail of recipient\n			#SUBJECT# - Topic\n			#MESSAGE# - Message\n			#MESSAGE_DATE# - Date\n			#MESSAGE_LINK# - Link to message', 100),
(48, 'en', 'EDIT_FORUM_MESSAGE', 'Changing forum message', '\n			#FORUM_ID# - Forum ID\n			#FORUM_NAME# - Forum name\n			#TOPIC_ID# - Topic ID\n			#MESSAGE_ID# - Message ID\n			#TOPIC_TITLE# - Topic title\n			#MESSAGE_TEXT# - Message text\n			#MESSAGE_DATE# - Message date\n			#AUTHOR# - Message author\n			#RECIPIENT# - E-Mail recipient\n			#TAPPROVED# - Message topic is approved\n			#MAPPROVED# - Message is approved\n			#PATH2FORUM# - Message Url\n			#FROM_EMAIL# - E-Mail for From field of the EMail', 100),
(49, 'ru', 'FORUM_NEW_MESSAGE_MAIL', 'Новое сообщение на форуме в режиме общения по E-Mail', '#FORUM_NAME# - Название форума\n#AUTHOR# - Автор сообщения\n#FROM_EMAIL# - E-Mail для поля From письма\n#RECIPIENT# - Получатель сообщения\n#TOPIC_TITLE# - Тема сообщения\n#MESSAGE_TEXT# - Текст сообщения\n#PATH2FORUM# - Адрес сообщения\n#MESSAGE_DATE# - Дата сообщения\n#FORUM_EMAIL# - Е-Mail адрес для добавления сообщений на форум\n#FORUM_ID# - ID форума\n#TOPIC_ID# - ID темы \n#MESSAGE_ID# - ID сообщения\n#TAPPROVED# - Тема опубликована\n#MAPPROVED# - Сообщение опубликовано\n', 100),
(50, 'en', 'FORUM_NEW_MESSAGE_MAIL', 'New message at the forum (e-mail messaging mode)', '#FORUM_NAME# - Forum name\n#AUTHOR# - Message author\n#FROM_EMAIL# - E-Mail in the &amp;From&amp; field\n#RECIPIENT# - Message recipient\n#TOPIC_TITLE# - Message subject\n#MESSAGE_TEXT# - Message text\n#PATH2FORUM# - Message URL\n#MESSAGE_DATE# - Message date\n#FORUM_EMAIL# - E-Mail to add messages to the forum \n#FORUM_ID# - Forum ID\n#TOPIC_ID# - Topic ID \n#MESSAGE_ID# - Message ID\n#TAPPROVED# - Topic approved and published\n#MAPPROVED# - Message approved and published\n', 100),
(51, 'ru', 'VIRUS_DETECTED', 'Обнаружен вирус', '#EMAIL# - E-Mail администратора сайта (из настроек главного модуля)', 100),
(52, 'en', 'VIRUS_DETECTED', 'Virus detected', '#EMAIL# - Site administrator\'s e-mail address (from the Kernel module settings)', 100),
(53, 'ru', 'SUBSCRIBE_CONFIRM', 'Подтверждение подписки', '#ID# - идентификатор подписки\n#EMAIL# - адрес подписки\n#CONFIRM_CODE# - код подтверждения\n#SUBSCR_SECTION# - раздел, где находится страница редактирования подписки (задается в настройках)\n#USER_NAME# - имя подписчика (может отсутствовать)\n#DATE_SUBSCR# - дата добавления/изменения адреса\n', 100),
(54, 'en', 'SUBSCRIBE_CONFIRM', 'Confirmation of subscription', '#ID# - subscription ID\n#EMAIL# - subscription email\n#CONFIRM_CODE# - confirmation code\n#SUBSCR_SECTION# - section with subscription edit page (specifies in the settings)\n#USER_NAME# - subscriber\'s name (optional)\n#DATE_SUBSCR# - date of adding/change of address\n', 100),
(55, 'ru', 'VOTE_FOR', 'Новый голос', '#ID# - ID результата голосования\n#TIME# - время голосования\n#VOTE_TITLE# - наименование опроса\n#VOTE_DESCRIPTION# - описание опроса\n#VOTE_ID# - ID опроса\n#CHANNEL# - наименование группы опроса\n#CHANNEL_ID# - ID группы опроса\n#VOTER_ID# - ID проголосовавшего посетителя\n#USER_NAME# - ФИО пользователя\n#LOGIN# - логин\n#USER_ID# - ID пользователя\n#STAT_GUEST_ID# - ID посетителя модуля статистики\n#SESSION_ID# - ID сессии модуля статистики\n#IP# - IP адрес\n#VOTE_STATISTIC# - Сводная статистика опроса типа ( - Вопрос - Ответ )\n#URL# - Путь к опросу\n', 100),
(56, 'en', 'VOTE_FOR', 'New vote', '#ID# - Vote result ID\n#TIME# - Time of vote\n#VOTE_TITLE# - Poll name\n#VOTE_DESCRIPTION# - Poll description\n#VOTE_ID# - Poll ID\n#CHANNEL# - Poll group name\n#CHANNEL_ID# - Poll group ID\n#VOTER_ID# - Voter\'s user ID\n#USER_NAME# - User full name\n#LOGIN# - login\n#USER_ID# - User ID\n#STAT_GUEST_ID# - Visitor ID in web analytics module\n#SESSION_ID# - Session ID in web analytics module\n#IP# - IP address\n#VOTE_STATISTIC# - Summary statistics of this poll type ( - Question - Answer)\n#URL# - Poll URL', 100);

-- --------------------------------------------------------

--
-- Table structure for table `b_favorite`
--

CREATE TABLE `b_favorite` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `CODE_ID` int(18) DEFAULT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MENU_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_file`
--

CREATE TABLE `b_file` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HEIGHT` int(18) DEFAULT NULL,
  `WIDTH` int(18) DEFAULT NULL,
  `FILE_SIZE` bigint(20) DEFAULT NULL,
  `CONTENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'IMAGE',
  `SUBDIR` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ORIGINAL_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_file`
--

INSERT INTO `b_file` (`ID`, `TIMESTAMP_X`, `MODULE_ID`, `HEIGHT`, `WIDTH`, `FILE_SIZE`, `CONTENT_TYPE`, `SUBDIR`, `FILE_NAME`, `ORIGINAL_NAME`, `DESCRIPTION`, `HANDLER_ID`, `EXTERNAL_ID`) VALUES
(1, '2018-02-26 08:44:28', 'iblock', 97, 117, 7208, 'image/gif', 'iblock/cfa', 'cfa0e5f11c5b3b3f853d2b4c4d92d751.gif', '9f643eecc497982747178145cc4736a4.gif', '', NULL, '7d53fd6e5f9bdc2254bfd1b1fceb5cc4'),
(2, '2018-02-26 08:44:29', 'iblock', 97, 118, 6154, 'image/gif', 'iblock/133', '133574b4c44c92c04b0b653efd2bbbbd.gif', '9baa9f7a5c946e28647383d6d4a7fed2.gif', '', NULL, 'b6bc62034164da446f42407ddaf4b5fd'),
(3, '2018-02-26 08:44:30', 'iblock', 97, 115, 7024, 'image/gif', 'iblock/c63', 'c630752d98476df157b25a86d2c631e5.gif', '3583b1ad0ff085c4fc5cc3ef35c117f5.gif', '', NULL, '5e4d3c6be2f76c8e57707cc3b98287bd'),
(4, '2018-02-26 08:44:31', 'iblock', 97, 117, 8177, 'image/gif', 'iblock/dd1', 'dd1e9daa73909f79e49cbc7a86bb6512.gif', 'e41c3f9d5834738bb4b1a8bda651989d.gif', '', NULL, 'd2052402cea29429468c1da2434056a8'),
(5, '2018-02-26 08:44:32', 'iblock', 75, 82, 6081, 'image/jpeg', 'iblock/fdc', 'fdc54628275ddec8a1033a2f940240a0.jpg', '2e602c1c22ccb832df21ad28ad5edaad.jpg', '', NULL, '3d6953d644741f5422d2587a593c2263'),
(6, '2018-02-26 08:44:32', 'iblock', 365, 400, 93204, 'image/jpeg', 'iblock/1ea', '1ea3b62ef53c45b08cb74977f82f8ffc.jpg', '09812c445d3ee5f5311bbe7e44ee7d6f.jpg', '', NULL, '5283ee24cd05daf110e03ab43f4bac3f'),
(7, '2018-02-26 08:44:33', 'iblock', 62, 75, 4431, 'image/jpeg', 'iblock/70d', '70dfcd6617bf78373162526ab1430191.jpg', 'bb30381459dbbbe12e882e632f6b1c53.jpg', '', NULL, '18bda3d93fb4e324c88431f8fe55d0d1'),
(8, '2018-02-26 08:44:33', 'iblock', 331, 400, 82283, 'image/jpeg', 'iblock/808', '808b7d8cbcaad12f32a87ed3beebdcbe.jpg', '626ca8c573225d46d0b4d809cebb3dae.jpg', '', NULL, 'af7e00e83208f0d27fcfd0a586889b56'),
(9, '2018-02-26 08:44:35', 'iblock', 75, 47, 3075, 'image/jpeg', 'iblock/cf6', 'cf60fbd33b49d29213ce8cec54b2e60c.jpg', '1f5d4439c837ba415e78b9645ae0d73b.jpg', '', NULL, '0c1b03f1f8124195da9ef3ac403ece35'),
(10, '2018-02-26 08:44:35', 'iblock', 400, 250, 29739, 'image/jpeg', 'iblock/c96', 'c961642b761a88eb43d37d344bd64994.jpg', '885f25305f6c920393bf447112730a32.jpg', '', NULL, 'e79d2e9452ccbd82571df4bf01852040'),
(11, '2018-02-26 08:44:37', 'iblock', 75, 49, 3038, 'image/jpeg', 'iblock/87b', '87b66868c7b687155042ae4149e39fba.jpg', 'ab929afb73ab299a22e03cc039569505.jpg', '', NULL, '96374bba59bf9d261b8a02f6b2d6e71d'),
(12, '2018-02-26 08:44:37', 'iblock', 400, 260, 36309, 'image/jpeg', 'iblock/df2', 'df27f74d235de35fde8c36dfc24f6176.jpg', 'f2bca316eede55098cab3bfda5b46697.jpg', '', NULL, '0e1348b0e7b7e09d7f895c00090eeb96'),
(13, '2018-02-26 08:44:39', 'iblock', 75, 46, 2766, 'image/jpeg', 'iblock/216', '216e96898821eab49adf5325f144a445.jpg', '74a072234e4b35fc24ee618bfc7dc98b.jpg', '', NULL, '7c2658a279bd637b08512f9defd16f98'),
(14, '2018-02-26 08:44:39', 'iblock', 400, 247, 26265, 'image/jpeg', 'iblock/c44', 'c44e539843c1aef0044512bad69216db.jpg', '6237fa3331d46f6efe0409d7d24cdb25.jpg', '', NULL, '273a4a3252059c2b9c58950688feb714'),
(15, '2018-02-26 08:44:40', 'iblock', 59, 75, 4604, 'image/jpeg', 'iblock/e0c', 'e0c952769e3262a571599c0313f8934f.jpg', '3392f27c38911965c60026ff9c0d3ef6.jpg', '', NULL, '759ddcb28cfa28f4f738a771c5dea860'),
(16, '2018-02-26 08:44:41', 'iblock', 313, 400, 57378, 'image/jpeg', 'iblock/5e2', '5e29d565025baf0d9e9ad966a415202b.jpg', 'baee3922cc3b782c479845cd9a51aa2b.jpg', '', NULL, '69062352802a2fb70aaf922a1d0bb827'),
(17, '2018-02-26 08:44:42', 'iblock', 49, 75, 3877, 'image/jpeg', 'iblock/40b', '40be67bbddf7c65833df95b0fccd4cf0.jpg', '2bdc35b67545840a286ee2ade1e53cf1.jpg', '', NULL, '83e82da486d3aee8154ebe32013ee596'),
(18, '2018-02-26 08:44:42', 'iblock', 264, 400, 96792, 'image/jpeg', 'iblock/aa9', 'aa92a1cdc1cdaed67c787853dc69a37c.jpg', '9444ca19815887874cfa5ccd2cf9b08e.jpg', '', NULL, '7171e0094700d62bc27291c7b410b0d8'),
(19, '2018-02-26 08:44:44', 'iblock', 41, 75, 4223, 'image/jpeg', 'iblock/d2e', 'd2ea8419b6782064bfc6074bceee397f.jpg', '9b1cf849b8732e25002db920755486e9.jpg', '', NULL, '776636a0fe1dbc845ea9e0d40603e045'),
(20, '2018-02-26 08:44:44', 'iblock', 220, 400, 65934, 'image/jpeg', 'iblock/7a9', '7a9bebdb1e8b4f16ead2f7e5c7c1ae86.jpg', '38f3bb38d0be153aa8233f8959141b8d.jpg', '', NULL, 'd5df0dc45acdde4cf226a92fac94045b'),
(21, '2018-02-26 08:44:45', 'iblock', 62, 75, 4454, 'image/jpeg', 'iblock/269', '269678e2129bab284939c00a5256879c.jpg', 'd64f02c32d7aec7d187dfb4d6e89c56b.jpg', '', NULL, '64d814c44c6d9745a83bfe53ca06bc87'),
(22, '2018-02-26 08:44:45', 'iblock', 329, 400, 78028, 'image/jpeg', 'iblock/1f8', '1f886f394aa41c1669f35e65a0e2c0a5.jpg', '445fcbf65c020dbaebf811a58b7ef941.jpg', '', NULL, '8fd2f4574d12f852da313d5c3a909546'),
(23, '2018-02-26 08:44:46', 'iblock', 50, 75, 4281, 'image/jpeg', 'iblock/2d9', '2d996564c9462fddaa4cf7ce3226d4b5.jpg', '4d4fcbcf706e07d5920751b96b2390a2.jpg', '', NULL, 'ca9a25c506a5bb072bfa2fb8f8f4f7b8'),
(24, '2018-02-26 08:44:46', 'iblock', 269, 400, 62994, 'image/jpeg', 'iblock/228', '2285ae29a115c93162d13601aeed96a5.jpg', '7412d2f4d2b8e91187d39405c1c331c0.jpg', '', NULL, '1c2f06b8a9d08dc2e2bb913296db7781'),
(25, '2018-02-26 08:44:48', 'iblock', 32, 75, 2529, 'image/jpeg', 'iblock/4dc', '4dcc3cf1103619fff2e10fa970ea946a.jpg', 'a20a430640daab0d2e80587a991043dc.jpg', '', NULL, '2827ed6555e2ad7d1ab9fa05178fd86a'),
(26, '2018-02-26 08:44:48', 'iblock', 171, 400, 43694, 'image/jpeg', 'iblock/b73', 'b7323b7ea390293179a077fa92577f6f.jpg', '2b671b45113c251546674131e9681c89.jpg', '', NULL, '297208428a1f9ac7e704dc2d038fffc5'),
(27, '2018-02-26 08:44:49', 'iblock', 52, 75, 3543, 'image/jpeg', 'iblock/8a5', '8a5113f71e4fcd9a4434a6da4b439277.jpg', '35962bde726c3ffaf7ccdfd9bb607379.jpg', '', NULL, 'd26bf387d81e2aee9bd568a2fbf9e9cf'),
(28, '2018-02-26 08:44:49', 'iblock', 276, 400, 45830, 'image/jpeg', 'iblock/b4c', 'b4cd9c7a3314c13bc47b8d95873d0aa6.jpg', '1421f08c8613b257c93f95ca3fd2826d.jpg', '', NULL, 'da0fbd7b44de760571741022ef770e56'),
(29, '2018-02-26 08:44:52', 'iblock', 69, 75, 4545, 'image/jpeg', 'iblock/f3c', 'f3c03392655c84461553adecf382683a.jpg', '331184f76e4aafea8728856ad06f4487.jpg', '', NULL, '7b930d7182ff8df315ab518e35639b70'),
(30, '2018-02-26 08:44:52', 'iblock', 366, 400, 50389, 'image/jpeg', 'iblock/56c', '56ce3d9d70cc6187105195240d0d4502.jpg', 'e26a955a944250ca5980f143faaadfbb.jpg', '', NULL, 'eeb73a53c1dcf5b3e792efa2d615301b'),
(31, '2018-02-26 08:44:54', 'iblock', 52, 75, 4430, 'image/jpeg', 'iblock/fe7', 'fe725b6dfa6be296a4ec8511f6cc5a8b.jpg', '3e84c9ae297f66002462ef2782524e1c.jpg', '', NULL, '501bbf46014cb1d281b53ea7b83cd0c5'),
(32, '2018-02-26 08:44:54', 'iblock', 279, 400, 60160, 'image/jpeg', 'iblock/2cd', '2cdae0d4857b24e762c40c5dffa62f42.jpg', '16798358158a0c4e8e280370dad92e34.jpg', '', NULL, '95830a915d346e71c4c149849c10afe1'),
(33, '2018-02-26 08:44:57', 'iblock', 75, 74, 5105, 'image/jpeg', 'iblock/32c', '32cc4ed8a75d43de517a37d9770cdc9c.jpg', '809194f5dcf2a15a37cdcaa8e3abbe3d.jpg', '', NULL, 'c650d99532bef755d0ffa9335f470802'),
(34, '2018-02-26 08:44:57', 'iblock', 400, 394, 67705, 'image/jpeg', 'iblock/8eb', '8ebead2a5e8e33831dc8df09a6b6ec44.jpg', '2883876e37fde7403e471cc9a24ea3e7.jpg', '', NULL, 'a98e999a2533a72f0e0cb3849a67138e'),
(35, '2018-02-26 08:44:59', 'iblock', 75, 54, 3651, 'image/jpeg', 'iblock/b0c', 'b0cd88bad186e674ccdebf2a7b705fb2.jpg', '434f471a7920ed00e08fb3916569e1f7.jpg', '', NULL, '35315885e9c2132a90402689d9d98228'),
(36, '2018-02-26 08:44:59', 'iblock', 400, 286, 40331, 'image/jpeg', 'iblock/c13', 'c130213b544bdc03b88377bff430fb70.jpg', '7fe0d47b409d9aa6097128b113e753b9.jpg', '', NULL, 'db91cd9c30e5b3cc674f7eddee9c5a1b'),
(37, '2018-02-26 08:45:01', 'iblock', 75, 45, 3564, 'image/jpeg', 'iblock/b93', 'b93820d226b129fbb59e9ba59b532965.jpg', 'a7b9328dab5d8599953605e2d14da0b3.jpg', '', NULL, '1f5ad9c2de69e183b83bad77cc962acf'),
(38, '2018-02-26 08:45:01', 'iblock', 400, 238, 42306, 'image/jpeg', 'iblock/10b', '10b78168bbebf35327750334bf24070e.jpg', 'e4427787c59b56b70a9c0381453f88dc.jpg', '', NULL, '6066afff6bef5b67dc850b1e250443c5'),
(39, '2018-02-26 08:45:03', 'iblock', 75, 47, 2666, 'image/jpeg', 'iblock/6ef', '6ef1a2bb048e9340f89040d565f4665e.jpg', '3413e989dd3239527ed2144bdb285a2b.jpg', '', NULL, '4b03f33675077b161fcd9838a1e46871'),
(40, '2018-02-26 08:45:03', 'iblock', 400, 249, 26842, 'image/jpeg', 'iblock/550', '55011020e84c636639206a2e9203d1ca.jpg', '4f2b682c4cc7361e22e669e8faa4f344.jpg', '', NULL, '22bc15f7d776a5791911747dc5f30f8d'),
(41, '2018-02-26 08:45:04', 'iblock', 75, 45, 3069, 'image/jpeg', 'iblock/998', '9984631be3090ab60539a5c935308138.jpg', '26051473b5a68363a0882915e3e020e5.jpg', '', NULL, '77546ef250c95307818c6ad777af92a9'),
(42, '2018-02-26 08:45:05', 'iblock', 400, 239, 36150, 'image/jpeg', 'iblock/a69', 'a69f37251bc08e354a21d372b68788d9.jpg', '8c00778d633d1db6aaf29242c1602897.jpg', '', NULL, '9a0e6191b30dfb9512873f84150f1b5b'),
(43, '2018-02-26 08:45:06', 'iblock', 75, 47, 3403, 'image/jpeg', 'iblock/475', '4751f1d9e8ab06d04b97730e16f395d5.jpg', 'd1a244031379e20a9d7f9cf85227bb2e.jpg', '', NULL, 'd536cb262a775e7a33c59e741a65fb68'),
(44, '2018-02-26 08:45:06', 'iblock', 400, 250, 34322, 'image/jpeg', 'iblock/675', '675d65a47ba0884357d0b4db8fb70209.jpg', '8b88ada642f37df4236b4cd129b85292.jpg', '', NULL, '07d3de993206ddb91a7c294628ee6f31'),
(45, '2018-02-26 08:45:07', 'iblock', 75, 49, 3941, 'image/jpeg', 'iblock/435', '435d19003e6e82701189bf1ca23837ee.jpg', 'af64b255f19f75b080d5b934f156c590.jpg', '', NULL, '61e525d263d7f8cb5ce1a186de828dd6'),
(46, '2018-02-26 08:45:07', 'iblock', 400, 261, 37746, 'image/jpeg', 'iblock/8f0', '8f0d91475b674409cd0918030db6411a.jpg', 'b6dabd5a96bb11b68a8d7d2dd9c9a4e0.jpg', '', NULL, 'f35118d226de5343ce4c15837d724593'),
(47, '2018-02-26 08:45:09', 'iblock', 75, 59, 3571, 'image/jpeg', 'iblock/6ad', '6adb522022006246eec2f94c4d822b1d.jpg', '058550b5373b90e56aacb376028089f4.jpg', '', NULL, '32c8acb82b20ed1f321579592ae36679'),
(48, '2018-02-26 08:45:09', 'iblock', 400, 312, 34110, 'image/jpeg', 'iblock/a51', 'a512d5d458ae496c14f02399f88d8f59.jpg', 'e2612b793f41a81309fcc54bcbf65783.jpg', '', NULL, '63651af8b8f14ef256781e1c2eee6cd0'),
(49, '2018-02-26 08:45:11', 'iblock', 75, 48, 3030, 'image/jpeg', 'iblock/339', '3397ff6f1862dc77b6de4e14228cabe0.jpg', '8065fe760829c4055200ea4831d72c17.jpg', '', NULL, '26181ea78fc81ca40dbea1fe6f5d2119'),
(50, '2018-02-26 08:45:11', 'iblock', 400, 258, 29503, 'image/jpeg', 'iblock/d23', 'd239bfe85685adcfb1d800bbc9d98aab.jpg', '8b6d3cc80b138843463e65ae7a97ffe1.jpg', '', NULL, 'dbc94ffb6443ec079d467d2fe450af3d'),
(51, '2018-02-26 08:45:12', 'iblock', 75, 52, 2250, 'image/jpeg', 'iblock/0b6', '0b63b5693ee4e713aac5bca6a340c0c8.jpg', 'a89665621b4b083248a5a8016be4e380.jpg', '', NULL, 'f1f02ba5369942a2b5c58cf449602cbc'),
(52, '2018-02-26 08:45:12', 'iblock', 400, 279, 22919, 'image/jpeg', 'iblock/59c', '59cf3be337c74a06e0e49887d47380a7.jpg', '93de20bec81a906df174ababa31d856e.jpg', '', NULL, 'd38a65fd7e48941ed427c044e1028ced'),
(53, '2018-02-26 08:45:28', 'iblock', 97, 115, 5781, 'image/gif', 'iblock/5c0', '5c08adffae0e4e3920e722e0f9ca0e6d.gif', '8b0b3bc52fec8070e3561af5d05cd3a8.gif', '', NULL, '4a3d72dcce6a28ea9aa42a81e7c61665'),
(54, '2018-02-26 08:45:31', 'iblock', 97, 116, 7345, 'image/gif', 'iblock/840', '8403b13b2a03b8ce812a80d6aa9ac957.gif', '38bf3b317397e56d07fe06731ca3a441.gif', '', NULL, '383d86d3cfb7a3513c84f410f09b59a6'),
(55, '2018-02-27 08:24:13', 'iblock', 66, 66, 2565, 'image/jpeg', 'iblock/520', '520c5ae8f6f34fb934c9dad8ccbe3a31.jpg', '91df8ed14b6a59b55ed4fcffc3785617.jpg', '', NULL, '76bb6ac309ddac49ed26dc04bea55b36'),
(56, '2018-02-27 08:24:13', 'iblock', 66, 66, 2565, 'image/jpeg', 'iblock/3b7', '3b71aaeb2422524678a092e97d3b8edd.jpg', 'ca077a2b25a7018337efd6b66bc08738.jpg', '', NULL, '82227c4ae6b9cc763f7a141b1a882bcd'),
(57, '2018-02-26 11:34:27', 'iblock', 66, 66, 2642, 'image/jpeg', 'iblock/a66', 'a666219754175f91ec32872b37dd5d1c.jpg', 'a1ba9e841dfec3556477afc50b324cf8.jpg', '', NULL, '4134def6273a4b6a4cee089bc0920e3c'),
(58, '2018-02-26 11:34:27', 'iblock', 66, 66, 2642, 'image/jpeg', 'iblock/079', '079578ea2f526d5a614bee876edfd85f.jpg', '238f151e99ef1afafb7d41fa08d1660b.jpg', '', NULL, 'fab105e09fcccac6d5ad67c178279bc7'),
(59, '2018-02-27 08:57:46', 'iblock', 66, 66, 2796, 'image/jpeg', 'iblock/889', '889a87c8587e0d7e592ced4a31652d13.jpg', 'ddb10f62a8ef9260fef9242d792c0111.jpg', '', NULL, 'a093912ed7953645ab00a006a48a1bc6'),
(60, '2018-02-27 08:57:46', 'iblock', 66, 66, 2796, 'image/jpeg', 'iblock/729', '729eda67dd35cb4bd36bbaba1e8060c5.jpg', '6c964a9a002c13ab8da7b43d47db996e.jpg', '', NULL, 'e653efa3c01c5405fe68f8428977d0c7'),
(64, '2018-02-27 08:24:13', 'iblock', 0, 0, 1244029, 'application/pdf', 'iblock/157', 'Ex1Demo1.pdf', 'Ex1Demo1.pdf', '', NULL, '7571439edf49136a1e053f78ab2dabeb'),
(65, '2018-02-27 08:24:13', 'iblock', 0, 0, 1499986, 'application/pdf', 'iblock/939', 'Ex1Demo2.pdf', 'Ex1Demo2.pdf', '', NULL, '26f8083f1be757695879644b0cb6afa1');

-- --------------------------------------------------------

--
-- Table structure for table `b_file_search`
--

CREATE TABLE `b_file_search` (
  `ID` int(11) NOT NULL,
  `SESS_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `F_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_DIR` int(11) NOT NULL DEFAULT '0',
  `F_SIZE` int(11) NOT NULL DEFAULT '0',
  `F_TIME` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_filters`
--

CREATE TABLE `b_filters` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `FILTER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELDS` text COLLATE utf8_unicode_ci NOT NULL,
  `COMMON` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRESET_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(18) DEFAULT NULL,
  `SORT_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_finder_dest`
--

CREATE TABLE `b_finder_dest` (
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_USER_ID` int(11) DEFAULT NULL,
  `CODE_TYPE` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTEXT` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_USE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form`
--

CREATE TABLE `b_form` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `BUTTON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `C_SORT` int(18) DEFAULT '100',
  `FIRST_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `FORM_TEMPLATE` text COLLATE utf8_unicode_ci,
  `USE_DEFAULT_TEMPLATE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SHOW_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PRINT_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_RESULT_TEMPLATE` text COLLATE utf8_unicode_ci,
  `TABLE_RESULT_TEMPLATE` text COLLATE utf8_unicode_ci,
  `USE_RESTRICTIONS` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `RESTRICT_USER` int(5) DEFAULT '0',
  `RESTRICT_TIME` int(10) DEFAULT '0',
  `RESTRICT_STATUS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_2_group`
--

CREATE TABLE `b_form_2_group` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_2_mail_template`
--

CREATE TABLE `b_form_2_mail_template` (
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_2_site`
--

CREATE TABLE `b_form_2_site` (
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_answer`
--

CREATE TABLE `b_form_answer` (
  `ID` int(18) NOT NULL,
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_crm`
--

CREATE TABLE `b_form_crm` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `AUTH_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_crm_field`
--

CREATE TABLE `b_form_crm_field` (
  `ID` int(18) NOT NULL,
  `LINK_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) DEFAULT '0',
  `FIELD_ALT` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `CRM_FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_crm_link`
--

CREATE TABLE `b_form_crm_link` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `CRM_ID` int(18) NOT NULL DEFAULT '0',
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_field`
--

CREATE TABLE `b_form_field` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TITLE` text COLLATE utf8_unicode_ci,
  `TITLE_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ADDITIONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_RESULTS_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IN_EXCEL_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FIELD_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMAGE_ID` int(18) DEFAULT NULL,
  `COMMENTS` text COLLATE utf8_unicode_ci,
  `FILTER_TITLE` text COLLATE utf8_unicode_ci,
  `RESULTS_TABLE_TITLE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_field_filter`
--

CREATE TABLE `b_form_field_filter` (
  `ID` int(18) NOT NULL,
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `PARAMETER_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_field_validator`
--

CREATE TABLE `b_form_field_validator` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'y',
  `C_SORT` int(18) DEFAULT '100',
  `VALIDATOR_SID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PARAMS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_menu`
--

CREATE TABLE `b_form_menu` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MENU` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_result`
--

CREATE TABLE `b_form_result` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `USER_ID` int(18) DEFAULT NULL,
  `USER_AUTH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `STAT_GUEST_ID` int(18) DEFAULT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `SENT_TO_CRM` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_result_answer`
--

CREATE TABLE `b_form_result_answer` (
  `ID` int(18) NOT NULL,
  `RESULT_ID` int(18) NOT NULL DEFAULT '0',
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `FIELD_ID` int(18) NOT NULL DEFAULT '0',
  `ANSWER_ID` int(18) DEFAULT NULL,
  `ANSWER_TEXT` text COLLATE utf8_unicode_ci,
  `ANSWER_TEXT_SEARCH` longtext COLLATE utf8_unicode_ci,
  `ANSWER_VALUE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ANSWER_VALUE_SEARCH` longtext COLLATE utf8_unicode_ci,
  `USER_TEXT` longtext COLLATE utf8_unicode_ci,
  `USER_TEXT_SEARCH` longtext COLLATE utf8_unicode_ci,
  `USER_DATE` datetime DEFAULT NULL,
  `USER_FILE_ID` int(18) DEFAULT NULL,
  `USER_FILE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_IS_IMAGE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_HASH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_SUFFIX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_FILE_SIZE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_status`
--

CREATE TABLE `b_form_status` (
  `ID` int(18) NOT NULL,
  `FORM_ID` int(18) NOT NULL DEFAULT '0',
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DEFAULT_VALUE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CSS` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'statusgreen',
  `HANDLER_OUT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HANDLER_IN` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MAIL_EVENT_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_status_2_group`
--

CREATE TABLE `b_form_status_2_group` (
  `ID` int(18) NOT NULL,
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_form_status_2_mail_template`
--

CREATE TABLE `b_form_status_2_mail_template` (
  `STATUS_ID` int(18) NOT NULL DEFAULT '0',
  `MAIL_TEMPLATE_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum`
--

CREATE TABLE `b_forum` (
  `ID` int(10) NOT NULL,
  `FORUM_GROUP_ID` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(10) NOT NULL DEFAULT '150',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_HTML` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_ANCHOR` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_BIU` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_IMG` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_VIDEO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_QUOTE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_CODE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_FONT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_SMILES` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_TABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_ALIGN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_UPLOAD_EXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ALLOW_MOVE_TOPIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ALLOW_TOPIC_TITLED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_NL2BR` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ALLOW_SIGNATURE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PATH2FORUM_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ASK_GUEST_EMAIL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INDEXATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DEDUPLICATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `MODERATION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ORDER_BY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'P',
  `ORDER_DIRECTION` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DESC',
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ru',
  `TOPICS` int(11) NOT NULL DEFAULT '0',
  `POSTS` int(11) NOT NULL DEFAULT '0',
  `LAST_POSTER_ID` int(11) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_POST_DATE` datetime DEFAULT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT '0',
  `ABS_LAST_POSTER_ID` int(11) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'forum',
  `EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'message',
  `EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum2site`
--

CREATE TABLE `b_forum2site` (
  `FORUM_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `PATH2FORUM_MESSAGE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_dictionary`
--

CREATE TABLE `b_forum_dictionary` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_forum_dictionary`
--

INSERT INTO `b_forum_dictionary` (`ID`, `TITLE`, `TYPE`) VALUES
(1, '[ru] Словарь слов', 'W'),
(2, '[ru] Словарь транслита', 'T'),
(3, '[en] Bad words', 'W'),
(4, '[en] Transliteration', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_email`
--

CREATE TABLE `b_forum_email` (
  `ID` int(11) NOT NULL,
  `EMAIL_FORUM_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FORUM_ID` int(11) NOT NULL,
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL,
  `MAIL_FILTER_ID` int(11) NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USE_EMAIL` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL_GROUP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBJECT_SUF` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_SUBJECT` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TEMPLATES_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NOT_MEMBER_POST` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_file`
--

CREATE TABLE `b_forum_file` (
  `ID` int(18) NOT NULL,
  `FORUM_ID` int(18) DEFAULT NULL,
  `TOPIC_ID` int(20) DEFAULT NULL,
  `MESSAGE_ID` int(20) DEFAULT NULL,
  `FILE_ID` int(18) NOT NULL,
  `USER_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `HITS` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_filter`
--

CREATE TABLE `b_forum_filter` (
  `ID` int(11) NOT NULL,
  `DICTIONARY_ID` int(11) DEFAULT NULL,
  `WORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATTERN` text COLLATE utf8_unicode_ci,
  `REPLACEMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `USE_IT` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PATTERN_CREATE` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_forum_filter`
--

INSERT INTO `b_forum_filter` (`ID`, `DICTIONARY_ID`, `WORDS`, `PATTERN`, `REPLACEMENT`, `DESCRIPTION`, `USE_IT`, `PATTERN_CREATE`) VALUES
(1, 1, '*пизд*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(2, 1, '*пизж*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(3, 1, '*сра%', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])([^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*([СсCc]+)([РрPpRr]+)([АаAa]+)([[Цц]+([Аа]+|[Оо]+)]+|[[Тт]+([Ьь]+|)[Сс]+[Яя]+]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(4, 1, 'анобляд*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([АаAa]+)([НнNn]+)([ОоOo]+)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(5, 1, 'взъеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвVv]+)([ЗзZz3]+)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(6, 1, 'бля', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(7, 1, 'долбоеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([ОоOo]+)([ЛлLl]+)([БбBb]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(8, 1, 'дуроеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ДдDd]+)([УуUu]+)([РрPpRr]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(9, 1, 'еби', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(10, 1, 'ебисти*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)([ТтTt]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(11, 1, 'ебическ*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([Чч]+)([ЁёЕеEe]+)([СсCc]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(12, 1, 'еблив*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ИиIi]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(13, 1, 'ебло*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([ОоOo]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(14, 1, 'еблыс*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Ыы]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(15, 1, 'ебля', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([ЛлLl]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(16, 1, 'ебс', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([СсCc]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(17, 1, 'ебукент*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([КкKk]+)([ЁёЕеEe]+)([НнNn]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(18, 1, 'ебурген*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([РрPpRr]+)([Гг]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(19, 1, 'коноебит*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([КкKk]+)([ОоOo]+)([НнNn]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(20, 1, 'мозгоеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([ОоOo]+)([ЗзZz3]+)([Гг]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(21, 1, 'мудоеб*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([МмMm]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(22, 1, 'однохуйствен*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ДдDd]+)([НнNn]+)([ОоOo]+)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)([СсCc]+)([ТтTt]+)([ВвVv]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(23, 1, 'охуе*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(24, 1, 'охуи*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([ИиIi]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(25, 1, 'охуя*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ОоOo]+)([ХхXx]+)([УуUu]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(26, 1, 'разъеба*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([ЗзZz3]+)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(27, 1, 'распиздон*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ПпPp]+)([ИиIi]+)([ЗзZz3]+)([ДдDd]+)([ОоOo]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(28, 1, 'расхуюж*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([РрPpRr]+)([АаAa]+)([СсCc]+)([ХхXx]+)([УуUu]+)([Юю]+|[[Йй]+[Оо]+]+)([ЖжGg]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(29, 1, 'худоебин*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ДдDd]+)([ОоOo]+)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(30, 1, 'хуе', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(31, 1, 'хуебрат*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([БбBb]+)([РрPpRr]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(32, 1, 'хуеглот*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([Гг]+)([ЛлLl]+)([ОоOo]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(33, 1, 'хуеплёт*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ПпPp]+)([ЛлLl]+)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(34, 1, 'хует*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(35, 1, 'хуила', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ИиIi]+)([ЛлLl]+)([АаAa]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(36, 1, 'хул?', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([ЛлLl]+).?)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(37, 1, 'хуя', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ХхXx]+)([УуUu]+)([Яя]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(38, 1, '^бляд*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([БбBb]+)([ЛлLl]+)([Яя]+)([ДдDd]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(39, 1, '^пидор*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ПпPp]+)([ИиIi]+)([ДдDd]+)([ОоOo]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(40, 1, '^хуев*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(41, 1, '^хуем*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЁёЕеEe]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(42, 1, '^хуй*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([ЙйИиYy]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(43, 1, '^хуяк*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([КкKk]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(44, 1, '^хуям*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([МмMm]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(45, 1, '^хуяр*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(46, 1, '^хуяч*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ХхXx]+)([УуUu]+)([Яя]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(47, 1, '^ъебал*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ЛлLl]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(48, 1, '^ъебан*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(49, 1, '^ъебар*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([РрPpRr]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(50, 1, '^ъебат*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([АаAa]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(51, 1, '^ъебен*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([ЁёЕеEe]+)([НнNn]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(52, 1, '^ъеби', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(53, 1, '^ъебис*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([СсCc]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(54, 1, '^ъебит*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([ИиIi]+)([ТтTt]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(55, 1, '^ъёбля*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([ЛлLl]+)([Яя]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(56, 1, '^ъёбну*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+|[[Йй]+[Оо]+]+)([БбBb]+)([НнNn]+)([УуUu]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(57, 1, '^ъебу', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+))(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(58, 1, '^ъебуч*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([УуUu]+)([Чч]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(59, 1, '^ъебыв*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(([ВвЗзСс]+|[ВвЫы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)+|)([ЪъЬь"\']+|)([ЁёЕеEe]+)([БбBb]+)([Ыы]+)([ВвVv]+)[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(60, 1, '/(?<=[s.,;:!?-#*|[]()])(?![Вв][ЕеЁё][Бб])(([ВвЗзСс]+|[Ввы]+|[ДдОо]+|[ЗзАа]+|[ИиЗзСс]+|[НнАа]+|[НнЕе]+|[ОоТт]+|([Пп]*[Ее]+[Рр]+[Ее]+)|)([ЬьЪъ]+|)([ЁёЕеEe]+|[Йй]+[Оо]+|[Yy]+[Oo]+)([BbБб]+))(?=[s.,;:!?-#*|[]()])/is', '', '', '', 'Y', 'PTTRN'),
(61, 3, 'angry', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+n+g+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(62, 3, 'ass', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(63, 3, 'asshole', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(a+s+s+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(64, 3, 'banger', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+n+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(65, 3, 'bastard', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+s+t+a+r+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(66, 3, 'batter', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+a+t+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(67, 3, 'bicho', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+c+h+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(68, 3, 'bisexual', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+s+e+x+u+a+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(69, 3, 'bitch', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+i+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(70, 3, 'blumpkin', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+l+u+m+p+k+i+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(71, 3, 'booger', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+o+o+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(72, 3, 'bugger*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+g+g+e+r+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(73, 3, 'bukakke', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+k+a+k+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(74, 3, 'bull', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(75, 3, 'bulldyke', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+d+y+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(76, 3, 'bullshit', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+l+l+s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(77, 3, 'bunny', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(78, 3, 'bunnyfuck', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(b+u+n+n+y+f+u+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(79, 3, 'chocha', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+c+h+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(80, 3, 'chode', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+h+o+d+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(81, 3, 'clap', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+l+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(82, 3, 'coconuts', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+c+o+n+u+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(83, 3, 'cohones', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+h+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(84, 3, 'cojones', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+j+o+n+e+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(85, 3, 'coon', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+n+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(86, 3, 'cootch', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(87, 3, 'cooter', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+o+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(88, 3, 'cornhole', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+o+r+n+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(89, 3, 'cracka', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+c+k+a+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(90, 3, 'crap', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+r+a+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(91, 3, 'cum', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+m+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(92, 3, 'cunnilingus', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+n+i+l+i+n+g+u+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(93, 3, 'cunt*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(c+u+n+t+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(94, 3, 'damn*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+m+n+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(95, 3, 'dark*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+a+r+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(96, 3, 'dick', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(97, 3, 'dickhead', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+c+k+h+e+a+d+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(98, 3, 'diddle', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+d+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(99, 3, 'dildo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+d+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(100, 3, 'dilhole', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+l+h+o+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(101, 3, 'dingleberry', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+i+n+g+l+e+b+e+r+r+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(102, 3, 'doodle', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+o+d+l+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(103, 3, 'dork', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+o+r+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(104, 3, 'dumpster', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(d+u+m+p+s+t+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(105, 3, 'faggot', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+g+g+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(106, 3, 'fart', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(107, 3, 'frig', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+r+i+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(108, 3, 'fuck*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(109, 3, 'fucker', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(f+u+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(110, 3, 'giz', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+i+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(111, 3, 'goatse', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+a+t+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(112, 3, 'gook', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+o+o+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(113, 3, 'gringo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(g+r+i+n+g+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(114, 3, 'hobo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+b+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(115, 3, 'honky', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(h+o+n+k+y+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(116, 3, 'jackass', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+a+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(117, 3, 'jackoff', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+a+c+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(118, 3, 'jerkoff', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+e+r+k+o+f+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(119, 3, 'jiggaboo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+g+g+a+b+o+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(120, 3, 'jizz', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(j+i+z+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(121, 3, 'kike', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(k+i+k+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(122, 3, 'mayo', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+a+y+o+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(123, 3, 'moose', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(m+o+o+s+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(124, 3, 'nigg*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(n+i+g+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(125, 3, 'paki', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+a+k+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(126, 3, 'pecker', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+e+c+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(127, 3, 'piss', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+i+s+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(128, 3, 'poonanni', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+a+n+n+i+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(129, 3, 'poontang', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+o+o+n+t+a+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(130, 3, 'prick', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+r+i+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(131, 3, 'punch', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(p+u+n+c+h+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(132, 3, 'queef', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(q+u+e+e+f+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(133, 3, 'rogue', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(r+o+g+u+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(134, 3, 'sanchez', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+a+n+c+h+e+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(135, 3, 'schlong', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+c+h+l+o+n+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(136, 3, 'shit', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+h+i+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(137, 3, 'skank', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+k+a+n+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(138, 3, 'spaz', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+a+z+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(139, 3, 'spic', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(s+p+i+c+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(140, 3, 'teabag*', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+e+a+b+a+g+[^\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)]*)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(141, 3, 'tits', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+i+t+s+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(142, 3, 'twat', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+a+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(143, 3, 'twot', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(t+w+o+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(144, 3, 'vart', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(v+a+r+t+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(145, 3, 'wanker', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+n+k+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(146, 3, 'waste', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+a+s+t+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(147, 3, 'wetback', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+e+t+b+a+c+k+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(148, 3, 'whore', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+h+o+r+e+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(149, 3, 'wigger', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+i+g+g+e+r+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(150, 3, 'wog', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+g+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL'),
(151, 3, 'wop', '/(?<=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])(w+o+p+)(?=[\\s.,;:!?\\#\\-\\*\\|\\[\\]\\(\\)])/isu', '', '', 'Y', 'TRNSL');

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_group`
--

CREATE TABLE `b_forum_group` (
  `ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '150',
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_group_lang`
--

CREATE TABLE `b_forum_group_lang` (
  `ID` int(11) NOT NULL,
  `FORUM_GROUP_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_letter`
--

CREATE TABLE `b_forum_letter` (
  `ID` int(11) NOT NULL,
  `DICTIONARY_ID` int(11) DEFAULT '0',
  `LETTER` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REPLACEMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_forum_letter`
--

INSERT INTO `b_forum_letter` (`ID`, `DICTIONARY_ID`, `LETTER`, `REPLACEMENT`) VALUES
(1, 2, 'а', 'АаAa'),
(2, 2, 'б', 'БбBb'),
(3, 2, 'в', 'ВвVv'),
(4, 2, 'г', 'Гг'),
(5, 2, 'д', 'ДдDd'),
(6, 2, 'е', 'ЁёЕеEe'),
(7, 2, 'ё', 'ЁёЕеEe, [Йй]+[Оо]+'),
(8, 2, 'ж', 'ЖжGg'),
(9, 2, 'з', 'ЗзZz3'),
(10, 2, 'и', 'ИиIi'),
(11, 2, 'й', 'ЙйИиYy'),
(12, 2, 'к', 'КкKk'),
(13, 2, 'л', 'ЛлLl'),
(14, 2, 'м', 'МмMm'),
(15, 2, 'н', 'НнNn'),
(16, 2, 'о', 'ОоOo'),
(17, 2, 'п', 'ПпPp'),
(18, 2, 'р', 'РрPpRr'),
(19, 2, 'с', 'СсCc'),
(20, 2, 'т', 'ТтTt'),
(21, 2, 'у', 'УуUu'),
(22, 2, 'ф', 'ФфFf'),
(23, 2, 'х', 'ХхXx'),
(24, 2, 'ц', 'ЦцCc'),
(25, 2, 'ч', 'Чч'),
(26, 2, 'ш', 'Шш'),
(27, 2, 'щ', 'Щщ'),
(28, 2, 'ь', 'ЪъЬь"\','),
(29, 2, 'ы', 'Ыы'),
(30, 2, 'ъ', 'ЪъЬь"\','),
(31, 2, 'э', 'Ээ'),
(32, 2, 'ю', 'Юю, [Йй]+[Оо]+'),
(33, 2, 'я', 'Яя'),
(34, 2, '%', '[Цц]+([Аа]+|[Оо]+), [Тт]+([Ьь]+|)[Сс]+[Яя]+'),
(35, 2, '^', ',ВвЗзСс,ВвЫы,ДдОо,ЗзАа,ИиЗзСс,НнАа,НнЕе,ОоТт,([Пп]*[Ее]+[Рр]+[Ее]+)'),
(36, 2, 'тся', '%'),
(37, 2, 'ться', '%');

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_message`
--

CREATE TABLE `b_forum_message` (
  `ID` bigint(20) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) NOT NULL,
  `USE_SMILES` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NEW_TOPIC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPROVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SOURCE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'WEB',
  `POST_DATE` datetime NOT NULL,
  `POST_MESSAGE` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_HTML` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_FILTER` text COLLATE utf8_unicode_ci,
  `POST_MESSAGE_CHECK` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ATTACH_IMG` int(11) DEFAULT NULL,
  `PARAM1` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAM2` int(11) DEFAULT NULL,
  `AUTHOR_ID` int(10) DEFAULT NULL,
  `AUTHOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUTHOR_REAL_IP` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GUEST_ID` int(10) DEFAULT NULL,
  `EDITOR_ID` int(10) DEFAULT NULL,
  `EDITOR_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDITOR_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_REASON` text COLLATE utf8_unicode_ci,
  `EDIT_DATE` datetime DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` text COLLATE utf8_unicode_ci,
  `MAIL_HEADER` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_perms`
--

CREATE TABLE `b_forum_perms` (
  `ID` int(11) NOT NULL,
  `FORUM_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_pm_folder`
--

CREATE TABLE `b_forum_pm_folder` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_forum_pm_folder`
--

INSERT INTO `b_forum_pm_folder` (`ID`, `TITLE`, `USER_ID`, `SORT`) VALUES
(1, 'SYSTEM_FOLDER_1', 0, 0),
(2, 'SYSTEM_FOLDER_2', 0, 0),
(3, 'SYSTEM_FOLDER_3', 0, 0),
(4, 'SYSTEM_FOLDER_4', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_points`
--

CREATE TABLE `b_forum_points` (
  `ID` int(11) NOT NULL,
  `MIN_POINTS` int(11) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_points2post`
--

CREATE TABLE `b_forum_points2post` (
  `ID` int(11) NOT NULL,
  `MIN_NUM_POSTS` int(11) NOT NULL,
  `POINTS_PER_POST` decimal(18,4) NOT NULL DEFAULT '0.0000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_points_lang`
--

CREATE TABLE `b_forum_points_lang` (
  `POINTS_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_private_message`
--

CREATE TABLE `b_forum_private_message` (
  `ID` bigint(10) NOT NULL,
  `AUTHOR_ID` int(11) DEFAULT '0',
  `RECIPIENT_ID` int(11) DEFAULT '0',
  `POST_DATE` datetime DEFAULT NULL,
  `POST_SUBJ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `POST_MESSAGE` text COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FOLDER_ID` int(11) NOT NULL,
  `IS_READ` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_IS_READ` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USE_SMILES` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_rank`
--

CREATE TABLE `b_forum_rank` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MIN_NUM_POSTS` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_rank_lang`
--

CREATE TABLE `b_forum_rank_lang` (
  `ID` int(11) NOT NULL,
  `RANK_ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_stat`
--

CREATE TABLE `b_forum_stat` (
  `ID` bigint(20) NOT NULL,
  `USER_ID` int(10) DEFAULT NULL,
  `IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PHPSESSID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORUM_ID` smallint(5) NOT NULL DEFAULT '0',
  `TOPIC_ID` int(10) DEFAULT NULL,
  `SHOW_NAME` varchar(101) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_subscribe`
--

CREATE TABLE `b_forum_subscribe` (
  `ID` int(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` int(10) DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `LAST_SEND` int(10) DEFAULT NULL,
  `NEW_TOPIC_ONLY` char(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ru',
  `SOCNET_GROUP_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_topic`
--

CREATE TABLE `b_forum_topic` (
  `ID` bigint(20) NOT NULL,
  `FORUM_ID` int(10) NOT NULL,
  `TOPIC_ID` bigint(20) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TITLE_SEO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ICON` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `APPROVED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `VIEWS` int(10) NOT NULL DEFAULT '0',
  `USER_START_ID` int(10) DEFAULT NULL,
  `USER_START_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `START_DATE` datetime NOT NULL,
  `POSTS` int(10) NOT NULL DEFAULT '0',
  `LAST_POSTER_ID` int(10) DEFAULT NULL,
  `LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_POST_DATE` datetime NOT NULL,
  `LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `POSTS_UNAPPROVED` int(11) DEFAULT '0',
  `ABS_LAST_POSTER_ID` int(10) DEFAULT NULL,
  `ABS_LAST_POSTER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ABS_LAST_POST_DATE` datetime DEFAULT NULL,
  `ABS_LAST_MESSAGE_ID` bigint(20) DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HTML` text COLLATE utf8_unicode_ci,
  `SOCNET_GROUP_ID` int(10) DEFAULT NULL,
  `OWNER_ID` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_user`
--

CREATE TABLE `b_forum_user` (
  `ID` bigint(10) NOT NULL,
  `USER_ID` int(10) NOT NULL,
  `ALIAS` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AVATAR` int(10) DEFAULT NULL,
  `NUM_POSTS` int(10) DEFAULT '0',
  `INTERESTS` text COLLATE utf8_unicode_ci,
  `LAST_POST` int(10) DEFAULT NULL,
  `ALLOW_POST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `LAST_VISIT` datetime NOT NULL,
  `DATE_REG` date NOT NULL,
  `REAL_IP_ADDRESS` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SIGNATURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SHOW_NAME` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RANK_ID` int(11) DEFAULT NULL,
  `POINTS` int(11) NOT NULL DEFAULT '0',
  `HIDE_FROM_ONLINE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SUBSC_GROUP_MESSAGE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SUBSC_GET_MY_MESSAGE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_user_forum`
--

CREATE TABLE `b_forum_user_forum` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL,
  `MAIN_LAST_VISIT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_user_points`
--

CREATE TABLE `b_forum_user_points` (
  `FROM_USER_ID` int(11) NOT NULL,
  `TO_USER_ID` int(11) NOT NULL,
  `POINTS` int(11) NOT NULL DEFAULT '0',
  `DATE_UPDATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_forum_user_topic`
--

CREATE TABLE `b_forum_user_topic` (
  `ID` bigint(20) NOT NULL,
  `TOPIC_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `FORUM_ID` int(11) DEFAULT NULL,
  `LAST_VISIT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_geoip_handlers`
--

CREATE TABLE `b_geoip_handlers` (
  `ID` int(11) NOT NULL,
  `SORT` int(10) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `CLASS_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_geoip_handlers`
--

INSERT INTO `b_geoip_handlers` (`ID`, `SORT`, `ACTIVE`, `CLASS_NAME`, `CONFIG`) VALUES
(1, 100, 'N', '\\Bitrix\\Main\\Service\\GeoIp\\MaxMind', NULL),
(2, 110, 'Y', '\\Bitrix\\Main\\Service\\GeoIp\\SypexGeo', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_group`
--

CREATE TABLE `b_group` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `C_SORT` int(18) NOT NULL DEFAULT '100',
  `ANONYMOUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECURITY_POLICY` text COLLATE utf8_unicode_ci,
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_group`
--

INSERT INTO `b_group` (`ID`, `TIMESTAMP_X`, `ACTIVE`, `C_SORT`, `ANONYMOUS`, `NAME`, `DESCRIPTION`, `SECURITY_POLICY`, `STRING_ID`) VALUES
(1, '2018-02-26 08:37:50', 'Y', 1, 'N', 'Администраторы', 'Полный доступ к управлению сайтом.', NULL, NULL),
(2, '2018-02-27 12:51:57', 'Y', 2, 'Y', 'Все пользователи (в том числе неавторизованные)', 'Все пользователи, включая неавторизованных.', 'a:1:{s:14:"LOGIN_ATTEMPTS";s:1:"1";}', ''),
(3, '2018-02-26 08:37:50', 'Y', 3, 'N', 'Пользователи, имеющие право голосовать за рейтинг', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE'),
(4, '2018-02-26 08:37:51', 'Y', 4, 'N', 'Пользователи имеющие право голосовать за авторитет', 'В эту группу пользователи добавляются автоматически.', NULL, 'RATING_VOTE_AUTHORITY'),
(5, '2018-02-26 08:41:28', 'Y', 300, 'N', 'Контент-редакторы', NULL, NULL, 'content_editor');

-- --------------------------------------------------------

--
-- Table structure for table `b_group_collection_task`
--

CREATE TABLE `b_group_collection_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `COLLECTION_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_group_subordinate`
--

CREATE TABLE `b_group_subordinate` (
  `ID` int(18) NOT NULL,
  `AR_SUBGROUP_ID` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_group_task`
--

CREATE TABLE `b_group_task` (
  `GROUP_ID` int(18) NOT NULL,
  `TASK_ID` int(18) NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_group_task`
--

INSERT INTO `b_group_task` (`GROUP_ID`, `TASK_ID`, `EXTERNAL_ID`) VALUES
(5, 22, ''),
(5, 49, '');

-- --------------------------------------------------------

--
-- Table structure for table `b_hlblock_entity`
--

CREATE TABLE `b_hlblock_entity` (
  `ID` int(11) UNSIGNED NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_NAME` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_hlblock_entity_lang`
--

CREATE TABLE `b_hlblock_entity_lang` (
  `ID` int(11) UNSIGNED NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_hlblock_entity_rights`
--

CREATE TABLE `b_hlblock_entity_rights` (
  `ID` int(11) UNSIGNED NOT NULL,
  `HL_ID` int(11) UNSIGNED NOT NULL,
  `TASK_ID` int(11) UNSIGNED NOT NULL,
  `ACCESS_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_hot_keys`
--

CREATE TABLE `b_hot_keys` (
  `ID` int(18) NOT NULL,
  `KEYS_STRING` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE_ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_hot_keys`
--

INSERT INTO `b_hot_keys` (`ID`, `KEYS_STRING`, `CODE_ID`, `USER_ID`) VALUES
(1, 'Ctrl+Alt+85', 139, 0),
(2, 'Ctrl+Alt+80', 17, 0),
(3, 'Ctrl+Alt+70', 120, 0),
(4, 'Ctrl+Alt+68', 117, 0),
(5, 'Ctrl+Alt+81', 3, 0),
(6, 'Ctrl+Alt+75', 106, 0),
(7, 'Ctrl+Alt+79', 133, 0),
(8, 'Ctrl+Alt+70', 121, 0),
(9, 'Ctrl+Alt+69', 118, 0),
(10, 'Ctrl+Shift+83', 87, 0),
(11, 'Ctrl+Shift+88', 88, 0),
(12, 'Ctrl+Shift+76', 89, 0),
(13, 'Ctrl+Alt+85', 139, 1),
(14, 'Ctrl+Alt+80', 17, 1),
(15, 'Ctrl+Alt+70', 120, 1),
(16, 'Ctrl+Alt+68', 117, 1),
(17, 'Ctrl+Alt+81', 3, 1),
(18, 'Ctrl+Alt+75', 106, 1),
(19, 'Ctrl+Alt+79', 133, 1),
(20, 'Ctrl+Alt+70', 121, 1),
(21, 'Ctrl+Alt+69', 118, 1),
(22, 'Ctrl+Shift+83', 87, 1),
(23, 'Ctrl+Shift+88', 88, 1),
(24, 'Ctrl+Shift+76', 89, 1);

-- --------------------------------------------------------

--
-- Table structure for table `b_hot_keys_code`
--

CREATE TABLE `b_hot_keys_code` (
  `ID` int(18) NOT NULL,
  `CLASS_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COMMENTS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TITLE_OBJ` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IS_CUSTOM` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_hot_keys_code`
--

INSERT INTO `b_hot_keys_code` (`ID`, `CLASS_NAME`, `CODE`, `NAME`, `COMMENTS`, `TITLE_OBJ`, `URL`, `IS_CUSTOM`) VALUES
(3, 'CAdminTabControl', 'NextTab();', 'HK_DB_CADMINTC', 'HK_DB_CADMINTC_C', 'tab-container', '', 0),
(5, 'btn_new', 'var d=BX (\'btn_new\'); if (d) location.href = d.href;', 'HK_DB_BUT_ADD', 'HK_DB_BUT_ADD_C', 'btn_new', '', 0),
(6, 'btn_excel', 'var d=BX(\'btn_excel\'); if (d) location.href = d.href;', 'HK_DB_BUT_EXL', 'HK_DB_BUT_EXL_C', 'btn_excel', '', 0),
(7, 'btn_settings', 'var d=BX(\'btn_settings\'); if (d) location.href = d.href;', 'HK_DB_BUT_OPT', 'HK_DB_BUT_OPT_C', 'btn_settings', '', 0),
(8, 'btn_list', 'var d=BX(\'btn_list\'); if (d) location.href = d.href;', 'HK_DB_BUT_LST', 'HK_DB_BUT_LST_C', 'btn_list', '', 0),
(9, 'Edit_Save_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'save\'}}, true );  if (d) d.click();', 'HK_DB_BUT_SAVE', 'HK_DB_BUT_SAVE_C', 'Edit_Save_Button', '', 0),
(10, 'btn_delete', 'var d=BX(\'btn_delete\'); if (d) location.href = d.href;', 'HK_DB_BUT_DEL', 'HK_DB_BUT_DEL_C', 'btn_delete', '', 0),
(12, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'find\'}}, true ); if (d) d.focus();', 'HK_DB_FLT_FND', 'HK_DB_FLT_FND_C', 'find', '', 0),
(13, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'set_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_F', 'HK_DB_FLT_BUT_F_C', 'set_filter', '', 0),
(14, 'CAdminFilter', 'var d=BX .findChild(document, {attribute: {\'name\': \'del_filter\'}}, true );  if (d) d.click();', 'HK_DB_FLT_BUT_CNL', 'HK_DB_FLT_BUT_CNL_C', 'del_filter', '', 0),
(15, 'bx-panel-admin-button-help-icon-id', 'var d=BX(\'bx-panel-admin-button-help-icon-id\'); if (d) location.href = d.href;', 'HK_DB_BUT_HLP', 'HK_DB_BUT_HLP_C', 'bx-panel-admin-button-help-icon-id', '', 0),
(17, 'Global', 'BXHotKeys.ShowSettings();', 'HK_DB_SHW_L', 'HK_DB_SHW_L_C', 'bx-panel-hotkeys', '', 0),
(19, 'Edit_Apply_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'apply\'}}, true );  if (d) d.click();', 'HK_DB_BUT_APPL', 'HK_DB_BUT_APPL_C', 'Edit_Apply_Button', '', 0),
(20, 'Edit_Cancel_Button', 'var d=BX .findChild(document, {attribute: {\'name\': \'cancel\'}}, true );  if (d) d.click();', 'HK_DB_BUT_CANCEL', 'HK_DB_BUT_CANCEL_C', 'Edit_Cancel_Button', '', 0),
(54, 'top_panel_org_fav', '', '-=AUTONAME=-', NULL, 'top_panel_org_fav', NULL, 0),
(55, 'top_panel_module_settings', '', '-=AUTONAME=-', NULL, 'top_panel_module_settings', '', 0),
(56, 'top_panel_interface_settings', '', '-=AUTONAME=-', NULL, 'top_panel_interface_settings', '', 0),
(57, 'top_panel_help', '', '-=AUTONAME=-', NULL, 'top_panel_help', '', 0),
(58, 'top_panel_bizproc_tasks', '', '-=AUTONAME=-', NULL, 'top_panel_bizproc_tasks', '', 0),
(59, 'top_panel_add_fav', '', '-=AUTONAME=-', NULL, 'top_panel_add_fav', NULL, 0),
(60, 'top_panel_create_page', '', '-=AUTONAME=-', NULL, 'top_panel_create_page', '', 0),
(62, 'top_panel_create_folder', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder', '', 0),
(63, 'top_panel_edit_page', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page', '', 0),
(64, 'top_panel_page_prop', '', '-=AUTONAME=-', NULL, 'top_panel_page_prop', '', 0),
(65, 'top_panel_edit_page_html', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_html', '', 0),
(67, 'top_panel_edit_page_php', '', '-=AUTONAME=-', NULL, 'top_panel_edit_page_php', '', 0),
(68, 'top_panel_del_page', '', '-=AUTONAME=-', NULL, 'top_panel_del_page', '', 0),
(69, 'top_panel_folder_prop', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop', '', 0),
(70, 'top_panel_access_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_access_folder_new', '', 0),
(71, 'main_top_panel_struct_panel', '', '-=AUTONAME=-', NULL, 'main_top_panel_struct_panel', '', 0),
(72, 'top_panel_cache_page', '', '-=AUTONAME=-', NULL, 'top_panel_cache_page', '', 0),
(73, 'top_panel_cache_comp', '', '-=AUTONAME=-', NULL, 'top_panel_cache_comp', '', 0),
(74, 'top_panel_cache_not', '', '-=AUTONAME=-', NULL, 'top_panel_cache_not', '', 0),
(75, 'top_panel_edit_mode', '', '-=AUTONAME=-', NULL, 'top_panel_edit_mode', '', 0),
(76, 'top_panel_templ_site_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site_css', '', 0),
(77, 'top_panel_templ_templ_css', '', '-=AUTONAME=-', NULL, 'top_panel_templ_templ_css', '', 0),
(78, 'top_panel_templ_site', '', '-=AUTONAME=-', NULL, 'top_panel_templ_site', '', 0),
(81, 'top_panel_debug_time', '', '-=AUTONAME=-', NULL, 'top_panel_debug_time', '', 0),
(82, 'top_panel_debug_incl', '', '-=AUTONAME=-', NULL, 'top_panel_debug_incl', '', 0),
(83, 'top_panel_debug_sql', '', '-=AUTONAME=-', NULL, 'top_panel_debug_sql', NULL, 0),
(84, 'top_panel_debug_compr', '', '-=AUTONAME=-', NULL, 'top_panel_debug_compr', '', 0),
(85, 'MTP_SHORT_URI1', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI1', '', 0),
(86, 'MTP_SHORT_URI_LIST', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI_LIST', '', 0),
(87, 'FMST_PANEL_STICKER_ADD', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKER_ADD', '', 0),
(88, 'FMST_PANEL_STICKERS_SHOW', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS_SHOW', '', 0),
(89, 'FMST_PANEL_CUR_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_CUR_STICKER_LIST', '', 0),
(90, 'FMST_PANEL_ALL_STICKER_LIST', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_ALL_STICKER_LIST', '', 0),
(91, 'top_panel_menu', 'var d=BX("bx-panel-menu"); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-menu', '', 0),
(92, 'top_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(93, 'admin_panel_site', 'var d=BX(\'bx-panel-view-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-view-tab', '', 0),
(94, 'admin_panel_admin', 'var d=BX(\'bx-panel-admin-tab\'); if (d) location.href = d.href;', '-=AUTONAME=-', NULL, 'bx-panel-admin-tab', '', 0),
(96, 'top_panel_folder_prop_new', '', '-=AUTONAME=-', NULL, 'top_panel_folder_prop_new', '', 0),
(97, 'main_top_panel_structure', '', '-=AUTONAME=-', NULL, 'main_top_panel_structure', '', 0),
(98, 'top_panel_clear_cache', '', '-=AUTONAME=-', NULL, 'top_panel_clear_cache', '', 0),
(99, 'top_panel_templ', '', '-=AUTONAME=-', NULL, 'top_panel_templ', '', 0),
(100, 'top_panel_debug', '', '-=AUTONAME=-', NULL, 'top_panel_debug', '', 0),
(101, 'MTP_SHORT_URI', '', '-=AUTONAME=-', NULL, 'MTP_SHORT_URI', '', 0),
(102, 'FMST_PANEL_STICKERS', '', '-=AUTONAME=-', NULL, 'FMST_PANEL_STICKERS', '', 0),
(103, 'top_panel_settings', '', '-=AUTONAME=-', NULL, 'top_panel_settings', '', 0),
(104, 'top_panel_fav', '', '-=AUTONAME=-', NULL, 'top_panel_fav', '', 0),
(106, 'Global', 'location.href=\'/bitrix/admin/hot_keys_list.php?lang=ru\';', 'HK_DB_SHW_HK', '', '', '', 0),
(107, 'top_panel_edit_new', '', '-=AUTONAME=-', NULL, 'top_panel_edit_new', '', 0),
(108, 'FLOW_PANEL_CREATE_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_CREATE_WITH_WF', '', 0),
(109, 'FLOW_PANEL_EDIT_WITH_WF', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_EDIT_WITH_WF', '', 0),
(110, 'FLOW_PANEL_HISTORY', '', '-=AUTONAME=-', NULL, 'FLOW_PANEL_HISTORY', '', 0),
(111, 'top_panel_create_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_new', '', 0),
(112, 'top_panel_create_folder_new', '', '-=AUTONAME=-', NULL, 'top_panel_create_folder_new', '', 0),
(116, 'bx-panel-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-toggle', '', 0),
(117, 'bx-panel-small-toggle', '', '-=AUTONAME=-', NULL, 'bx-panel-small-toggle', '', 0),
(118, 'bx-panel-expander', 'var d=BX(\'bx-panel-expander\'); if (d) BX.fireEvent(d, \'click\');', '-=AUTONAME=-', NULL, 'bx-panel-expander', '', 0),
(119, 'bx-panel-hider', 'var d=BX(\'bx-panel-hider\'); if (d) d.click();', '-=AUTONAME=-', NULL, 'bx-panel-hider', '', 0),
(120, 'search-textbox-input', 'var d=BX(\'search-textbox-input\'); if (d) { d.click(); d.focus();}', '-=AUTONAME=-', '', 'search', '', 0),
(121, 'bx-search-input', 'var d=BX(\'bx-search-input\'); if (d) { d.click(); d.focus(); }', '-=AUTONAME=-', '', 'bx-search-input', '', 0),
(133, 'bx-panel-logout', 'var d=BX(\'bx-panel-logout\'); if (d) location.href = d.href;', '-=AUTONAME=-', '', 'bx-panel-logout', '', 0),
(135, 'CDialog', 'var d=BX(\'cancel\'); if (d) d.click();', 'HK_DB_D_CANCEL', '', 'cancel', '', 0),
(136, 'CDialog', 'var d=BX(\'close\'); if (d) d.click();', 'HK_DB_D_CLOSE', '', 'close', '', 0),
(137, 'CDialog', 'var d=BX(\'savebtn\'); if (d) d.click();', 'HK_DB_D_SAVE', '', 'savebtn', '', 0),
(138, 'CDialog', 'var d=BX(\'btn_popup_save\'); if (d) d.click();', 'HK_DB_D_EDIT_SAVE', '', 'btn_popup_save', '', 0),
(139, 'Global', 'location.href=\'/bitrix/admin/user_admin.php?lang=\'+phpVars.LANGUAGE_ID;', 'HK_DB_SHW_U', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock`
--

CREATE TABLE `b_iblock` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIST_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CANONICAL_PAGE_URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `RSS_TTL` int(11) NOT NULL DEFAULT '24',
  `RSS_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `RSS_FILE_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RSS_FILE_LIMIT` int(11) DEFAULT NULL,
  `RSS_FILE_DAYS` int(11) DEFAULT NULL,
  `RSS_YANDEX_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_ELEMENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `INDEX_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `WORKFLOW` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `BIZPROC` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECTION_CHOOSER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RIGHTS_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_PROPERTY` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PROPERTY_INDEX` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `LAST_CONV_ELEMENT` int(11) NOT NULL DEFAULT '0',
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL,
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTIONS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENTS_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock`
--

INSERT INTO `b_iblock` (`ID`, `TIMESTAMP_X`, `IBLOCK_TYPE_ID`, `LID`, `CODE`, `NAME`, `ACTIVE`, `SORT`, `LIST_PAGE_URL`, `DETAIL_PAGE_URL`, `SECTION_PAGE_URL`, `CANONICAL_PAGE_URL`, `PICTURE`, `DESCRIPTION`, `DESCRIPTION_TYPE`, `RSS_TTL`, `RSS_ACTIVE`, `RSS_FILE_ACTIVE`, `RSS_FILE_LIMIT`, `RSS_FILE_DAYS`, `RSS_YANDEX_ACTIVE`, `XML_ID`, `TMP_ID`, `INDEX_ELEMENT`, `INDEX_SECTION`, `WORKFLOW`, `BIZPROC`, `SECTION_CHOOSER`, `LIST_MODE`, `RIGHTS_MODE`, `SECTION_PROPERTY`, `PROPERTY_INDEX`, `VERSION`, `LAST_CONV_ELEMENT`, `SOCNET_GROUP_ID`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `SECTIONS_NAME`, `SECTION_NAME`, `ELEMENTS_NAME`, `ELEMENT_NAME`) VALUES
(1, '2018-02-27 10:36:48', 'news', 's1', 'furniture_news_s1', 'Новости', 'Y', 500, '#SITE_DIR#/news/', '#SITE_DIR#/news/#ID#/', NULL, '', NULL, '', 'text', 24, 'Y', 'N', 0, 0, 'N', 'furniture_news_s1', '321bc7cc83bbe38e41b2fa6ce294c110', 'N', 'N', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Новости', 'Новость'),
(2, '2018-02-26 08:45:14', 'products', 's1', 'furniture_products_s1', '[s1] Продукция', 'Y', 500, '#SITE_DIR#/products/', '#SITE_DIR#/products/#SECTION_ID#/#ID#/', '#SITE_DIR#/products/#ID#/', NULL, NULL, NULL, 'text', 24, 'Y', 'N', NULL, NULL, 'N', 'furniture_products_s1', 'f61dd39d7959691c1e6643b085fd2cb6', 'Y', 'Y', 'N', 'N', 'L', NULL, 'S', NULL, NULL, 1, 0, NULL, NULL, NULL, 'Разделы', 'Раздел', 'Товары', 'Элемент'),
(3, '2018-02-26 08:45:33', 'products', 's1', 'furniture_services_s1', '[s1] Услуги', 'Y', 500, '#SITE_DIR#/services/', '#SITE_DIR#/services/#ID#/', NULL, NULL, NULL, NULL, 'text', 24, 'Y', 'N', NULL, NULL, 'N', 'furniture_services_s1', 'ebe9ea0b033240ce9790755a3d896d15', 'Y', 'Y', 'N', 'N', 'L', NULL, 'S', NULL, NULL, 1, 0, NULL, NULL, NULL, 'Разделы', 'Раздел', 'Услуги', 'Услуга'),
(4, '2018-02-26 08:45:54', 'vacancies', 's1', 'furniture_vacancies_s1', 'Вакансии', 'Y', 500, '#SITE_DIR#/company/vacancies.php', '#SITE_DIR#/company/vacancies.php##ID#', NULL, NULL, NULL, NULL, 'text', 24, 'Y', 'N', NULL, NULL, 'N', 'furniture_vacancies_s1', '05c36bf799c292da6b9777540626c685', 'Y', 'N', 'N', 'N', 'L', NULL, 'S', NULL, NULL, 1, 0, NULL, NULL, NULL, 'Разделы', 'Раздел', 'Вакансии', 'Вакансия'),
(5, '2018-02-27 10:43:58', 'reviews', 's1', 'rew', 'Отзывы', 'Y', 500, '#SITE_DIR#/rew/index.php', '#SITE_DIR#/rew/#ELEMENT_ID#.php', '#SITE_DIR#/demo/list.php?SECTION_ID=#SECTION_ID#', '', NULL, '', 'text', 24, 'Y', 'N', NULL, NULL, 'N', '5', NULL, 'Y', 'Y', 'N', 'N', 'L', '', 'S', 'N', 'N', 1, 0, NULL, '', '', 'Разделы', 'Раздел', 'Элементы', 'Элемент');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_cache`
--

CREATE TABLE `b_iblock_cache` (
  `CACHE_KEY` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `CACHE` longtext COLLATE utf8_unicode_ci NOT NULL,
  `CACHE_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_element`
--

CREATE TABLE `b_iblock_element` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` datetime DEFAULT NULL,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL DEFAULT '0',
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PREVIEW_PICTURE` int(18) DEFAULT NULL,
  `PREVIEW_TEXT` text COLLATE utf8_unicode_ci,
  `PREVIEW_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `DETAIL_TEXT` longtext COLLATE utf8_unicode_ci,
  `DETAIL_TEXT_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `WF_STATUS_ID` int(18) DEFAULT '1',
  `WF_PARENT_ELEMENT_ID` int(11) DEFAULT NULL,
  `WF_NEW` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LOCKED_BY` int(18) DEFAULT NULL,
  `WF_DATE_LOCK` datetime DEFAULT NULL,
  `WF_COMMENTS` text COLLATE utf8_unicode_ci,
  `IN_SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WF_LAST_HISTORY_ID` int(11) DEFAULT NULL,
  `SHOW_COUNTER` int(18) DEFAULT NULL,
  `SHOW_COUNTER_START` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_element`
--

INSERT INTO `b_iblock_element` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `ACTIVE_FROM`, `ACTIVE_TO`, `SORT`, `NAME`, `PREVIEW_PICTURE`, `PREVIEW_TEXT`, `PREVIEW_TEXT_TYPE`, `DETAIL_PICTURE`, `DETAIL_TEXT`, `DETAIL_TEXT_TYPE`, `SEARCHABLE_CONTENT`, `WF_STATUS_ID`, `WF_PARENT_ELEMENT_ID`, `WF_NEW`, `WF_LOCKED_BY`, `WF_DATE_LOCK`, `WF_COMMENTS`, `IN_SECTIONS`, `XML_ID`, `CODE`, `TAGS`, `TMP_ID`, `WF_LAST_HISTORY_ID`, `SHOW_COUNTER`, `SHOW_COUNTER_START`) VALUES
(1, '2018-02-26 11:41:52', 1, '2018-02-26 11:41:46', 1, 1, NULL, 'Y', '2010-05-25 00:00:00', NULL, 500, 'Мебельный форум Беларуси', NULL, 'С 20 по 23 апреля 2010 года состоится <strong>Мебельный Форум Беларуси</strong> &ndash; важнейшее мероприятии отрасли в текущем году.', 'html', NULL, '\r\n<p>С 20 по 23 апреля 2010 года состоится <strong>Мебельный Форум Беларуси</strong> &ndash; важнейшее мероприятии отрасли в текущем году. В экспозиции принимают участие свыше 160 компаний из <em>Беларуси, Австрии, Латвии, Литвы, России, Польши </em>и<em> Украины</em>. В составе форума состоится пять выставок:&quot;Минский мебельный салон&quot;, &quot;Мебельные технологии&quot;, &quot;ОфисКомфорт&quot;, &quot;Кухня&quot; и &quot;Домотех&quot;. Экспозиция будет строиться по принципу двух тематических секторов:<em> готовой мебели</em> и <em>материалов для ее производства</em>.\r\n \r\n \r\n \r\n  <br />\r\n\r\n \r\n \r\n </p>\r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>В секторе готовой мебели будут представлены:</p>\r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n<ul>\r\n \r\n \r\n \r\n  <li>корпусная и мягкая мебель;</li>\r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n  <li>мебель для детей и молодежи;</li>\r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n  <li>предметы интерьера;</li>\r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n  <li>кухонная мебель;</li>\r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n  <li>мебель для офиса и административных зданий.</li>\r\n\r\n \r\n \r\n </ul>\r\n\r\n \r\n \r\n \r\n \r\n \r\n \r\n<p>В секторе материалов для производства мебели будут демонстрироваться новинки рынка мебельной фурнитуры, материалов, обивочных тканей, элементов и аксессуаров для производства мебели.\r\n \r\n \r\n  <br />\r\n\r\n \r\n \r\n </p>\r\n\r\n \r\n \r\n \r\n \r\n<p>Помимо расширенной экспозиции пяти тематических выставок &quot;Экспофорум&quot; подготовил разнообразную деловую программу Мебельного форума. В рамках выставки состоятся семинары и мастер-классы. И поистине масштабным в этом году обещает стать республиканский конкурс форума &quot;<strong>Народное признание</strong>&quot;. В этом году он выходит за рамки выставки и становится республиканским смотром образцов мебели.\r\n \r\n \r\n  <br />\r\n\r\n \r\n <strong>Мебельный Форум</strong> предоставляет специалистам возможность познакомиться с тенденциями мебельной моды, провести переговоры, получить практические предложения рынка, увидеть перспективы развития и новые конкурентные преимущества. Впервые для участников конкурса будет подготовлен маркетинговый отчет по результатам опроса посетителей выставок <strong>Мебельного Форума</strong>.\r\n \r\n \r\n  <br />\r\n\r\n \r\n </p>\r\n\r\n<p><em>Прием заявок на участие в конкурсе осуществляется до 12 апреля 2010 года.</em></p>\r\n\r\n \r\n \r\n \r\n \r\n<ul>\r\n </ul>\r\n\r\n \r\n \r\n \r\n ', 'html', 'МЕБЕЛЬНЫЙ ФОРУМ БЕЛАРУСИ\r\nС 20 ПО 23 АПРЕЛЯ 2010 ГОДА СОСТОИТСЯ МЕБЕЛЬНЫЙ \r\nФОРУМ БЕЛАРУСИ &NDASH; ВАЖНЕЙШЕЕ МЕРОПРИЯТИИ ОТРАСЛИ В ТЕКУЩЕМ ГОДУ.\r\nС 20 ПО 23 АПРЕЛЯ 2010 ГОДА СОСТОИТСЯ МЕБЕЛЬНЫЙ \r\nФОРУМ БЕЛАРУСИ &NDASH; ВАЖНЕЙШЕЕ МЕРОПРИЯТИИ ОТРАСЛИ В ТЕКУЩЕМ ГОДУ. В ЭКСПОЗИЦИИ ПРИНИМАЮТ УЧАСТИЕ СВЫШЕ 160 КОМПАНИЙ ИЗ БЕЛАРУСИ, АВСТРИИ, ЛАТВИИ, ЛИТВЫ, РОССИИ, ПОЛЬШИ И УКРАИНЫ. В СОСТАВЕ ФОРУМА СОСТОИТСЯ ПЯТЬ ВЫСТАВОК:"МИНСКИЙ МЕБЕЛЬНЫЙ САЛОН", "МЕБЕЛЬНЫЕ ТЕХНОЛОГИИ", "ОФИСКОМФОРТ", "КУХНЯ" И "ДОМОТЕХ". ЭКСПОЗИЦИЯ БУДЕТ СТРОИТЬСЯ ПО ПРИНЦИПУ ДВУХ ТЕМАТИЧЕСКИХ СЕКТОРОВ: ГОТОВОЙ МЕБЕЛИ И МАТЕРИАЛОВ ДЛЯ ЕЕ ПРОИЗВОДСТВА. \r\n \r\n\r\nВ СЕКТОРЕ ГОТОВОЙ МЕБЕЛИ БУДУТ ПРЕДСТАВЛЕНЫ: \r\n\r\n- КОРПУСНАЯ И МЯГКАЯ МЕБЕЛЬ; \r\n- МЕБЕЛЬ ДЛЯ ДЕТЕЙ И МОЛОДЕЖИ; \r\n- ПРЕДМЕТЫ ИНТЕРЬЕРА; \r\n- КУХОННАЯ МЕБЕЛЬ; \r\n- МЕБЕЛЬ ДЛЯ ОФИСА И АДМИНИСТРАТИВНЫХ ЗДАНИЙ. \r\n\r\nВ СЕКТОРЕ МАТЕРИАЛОВ ДЛЯ ПРОИЗВОДСТВА \r\nМЕБЕЛИ БУДУТ ДЕМОНСТРИРОВАТЬСЯ НОВИНКИ РЫНКА МЕБЕЛЬНОЙ ФУРНИТУРЫ, МАТЕРИАЛОВ, ОБИВОЧНЫХ ТКАНЕЙ, ЭЛЕМЕНТОВ И АКСЕССУАРОВ ДЛЯ ПРОИЗВОДСТВА МЕБЕЛИ. \r\n \r\n\r\nПОМИМО РАСШИРЕННОЙ ЭКСПОЗИЦИИ ПЯТИ ТЕМАТИЧЕСКИХ \r\nВЫСТАВОК "ЭКСПОФОРУМ" ПОДГОТОВИЛ РАЗНООБРАЗНУЮ ДЕЛОВУЮ ПРОГРАММУ МЕБЕЛЬНОГО ФОРУМА. В РАМКАХ ВЫСТАВКИ СОСТОЯТСЯ СЕМИНАРЫ И МАСТЕР-КЛАССЫ. И ПОИСТИНЕ МАСШТАБНЫМ В ЭТОМ ГОДУ ОБЕЩАЕТ СТАТЬ РЕСПУБЛИКАНСКИЙ КОНКУРС ФОРУМА "НАРОДНОЕ ПРИЗНАНИЕ". В ЭТОМ ГОДУ ОН ВЫХОДИТ ЗА РАМКИ ВЫСТАВКИ И СТАНОВИТСЯ РЕСПУБЛИКАНСКИМ СМОТРОМ ОБРАЗЦОВ МЕБЕЛИ. \r\nМЕБЕЛЬНЫЙ ФОРУМ ПРЕДОСТАВЛЯЕТ СПЕЦИАЛИСТАМ \r\nВОЗМОЖНОСТЬ ПОЗНАКОМИТЬСЯ С ТЕНДЕНЦИЯМИ МЕБЕЛЬНОЙ МОДЫ, ПРОВЕСТИ ПЕРЕГОВОРЫ, ПОЛУЧИТЬ ПРАКТИЧЕСКИЕ ПРЕДЛОЖЕНИЯ РЫНКА, УВИДЕТЬ ПЕРСПЕКТИВЫ РАЗВИТИЯ И НОВЫЕ КОНКУРЕНТНЫЕ ПРЕИМУЩЕСТВА. ВПЕРВЫЕ ДЛЯ УЧАСТНИКОВ КОНКУРСА БУДЕТ ПОДГОТОВЛЕН МАРКЕТИНГОВЫЙ ОТЧЕТ ПО РЕЗУЛЬТАТАМ ОПРОСА ПОСЕТИТЕЛЕЙ ВЫСТАВОК МЕБЕЛЬНОГО ФОРУМА. \r\n \r\n\r\nПРИЕМ ЗАЯВОК НА УЧАСТИЕ В КОНКУРСЕ ОСУЩЕСТВЛЯЕТСЯ \r\nДО 12 АПРЕЛЯ 2010 ГОДА.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '1', '', '', '-384246935', NULL, NULL, NULL),
(2, '2018-02-26 11:41:54', 1, '2018-02-26 11:41:52', 1, 1, NULL, 'Y', '2010-05-26 00:00:00', NULL, 500, 'Международная мебельная выставка SALON DEL MOBILE', NULL, 'В 2010 году выставка Salon del Mobile обещает быть еще более расширенной и интересной. ', 'html', NULL, 'В 2010 году выставка Salon del Mobile обещает быть еще более расширенной и интересной. На выставке Salon del Mobile будут представлены все типы мебели для офиса и дома от спален и гостиных до VIP-кабинетов, включая оборудование для сада и детской мебели. Заявки на участие подали более чем 1 500 компаний со всего мира. Предполагается, что за время проведения выставки ее посетят более 300 000 тысяч человек. Экспозиция выставки разместится на общей площади 149 871 кв.м. В 2010 году эта поистине грандиозная выставка будет проводиться уже в 10-й раз.', 'text', 'МЕЖДУНАРОДНАЯ МЕБЕЛЬНАЯ ВЫСТАВКА SALON DEL MOBILE\r\nВ 2010 ГОДУ ВЫСТАВКА SALON DEL MOBILE ОБЕЩАЕТ БЫТЬ \r\nЕЩЕ БОЛЕЕ РАСШИРЕННОЙ И ИНТЕРЕСНОЙ.\r\nВ 2010 ГОДУ ВЫСТАВКА SALON DEL MOBILE ОБЕЩАЕТ БЫТЬ ЕЩЕ БОЛЕЕ РАСШИРЕННОЙ И ИНТЕРЕСНОЙ. НА ВЫСТАВКЕ SALON DEL MOBILE БУДУТ ПРЕДСТАВЛЕНЫ ВСЕ ТИПЫ МЕБЕЛИ ДЛЯ ОФИСА И ДОМА ОТ СПАЛЕН И ГОСТИНЫХ ДО VIP-КАБИНЕТОВ, ВКЛЮЧАЯ ОБОРУДОВАНИЕ ДЛЯ САДА И ДЕТСКОЙ МЕБЕЛИ. ЗАЯВКИ НА УЧАСТИЕ ПОДАЛИ БОЛЕЕ ЧЕМ 1 500 КОМПАНИЙ СО ВСЕГО МИРА. ПРЕДПОЛАГАЕТСЯ, ЧТО ЗА ВРЕМЯ ПРОВЕДЕНИЯ ВЫСТАВКИ ЕЕ ПОСЕТЯТ БОЛЕЕ 300 000 ТЫСЯЧ ЧЕЛОВЕК. ЭКСПОЗИЦИЯ ВЫСТАВКИ РАЗМЕСТИТСЯ НА ОБЩЕЙ ПЛОЩАДИ 149 871 КВ.М. В 2010 ГОДУ ЭТА ПОИСТИНЕ ГРАНДИОЗНАЯ ВЫСТАВКА БУДЕТ ПРОВОДИТЬСЯ УЖЕ В 10-Й РАЗ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '8', '', '', '373546319', NULL, NULL, NULL),
(3, '2018-02-26 11:42:00', 1, '2018-02-26 11:41:54', 1, 1, NULL, 'Y', '2010-05-27 00:00:00', NULL, 500, 'Получено прочное водостойкое соединение', NULL, 'Получено новое прочное водостойкое клеевое соединение.Изобретение относится к области получения и применения клеящих составов, используемых в деревообрабатывающей, мебельной и строительной промышленности. Данная клеевая композиция предназначена только для горячего прессования и имеет в своем составе многокомпонентный отвердитель. ', 'html', NULL, '<b>Авторы изобретения</b>: Разиньков Егор Михайлович  и Мещерякова Анна Анатольевна </br>\r\n              Патент Российской Федерации RU2277566</br>\r\n              <h3>Описание изобретения</h3>\r\n              <p>Изобретение относится к области получения и применения клеящих составов, используемых в деревообрабатывающей, мебельной и строительной промышленности.\r\n              Данная клеевая композиция предназначена только для горячего прессования и имеет в своем составе многокомпонентный отвердитель. Прототипом клеевой композиции является клей, состоящий из карбамидоформальдегидной смолы, сополимера акрилонитрила с N-винилкапролактамом и отвердитель. В качестве отвердителя применяют хлористый аммоний либо акриловую кислоту. </p>\r\n\r\n              <p>Изобретение решает задачу по получению прочного и водостойкого клеевого соединения.\r\n              Это достигается тем, что клеевая композиция, включающая синтетическую смолу и отвердитель, согласно изобретению, дополнительно содержит модификатор, причем в качестве синтетической смолы клеевая композиция включает карбамидомеламиноформальдегидную смолу с отвердителем 2542, в качестве модификатора - карбамидоформальдегидную смолу, а в качестве отвердителя - 10%-ный раствор щавелевой кислоты при следующем соотношении компонентов, мас.ч.:\r\n              </p>\r\n              <table cellspacing="10">\r\n              <tr>\r\n              <td>Карбамидомеламиноформальдегидная смола</td><td>64,5-79,2</td>\r\n              </tr>	\r\n              <tr>\r\n              <td>10%-ный Раствор щавелевой кислоты</td><td>4,4-20,5</td>\r\n\r\n              </tr>\r\n              <tr>\r\n              <td> Отвердитель для карбамидомеламиноформальдегидной </td><td>0,6-2,0</td>\r\n              </tr>\r\n              <tr>\r\n              <td> смолы 2542</td><td>13,0-15,8</td>\r\n\r\n              </tr>	\r\n              </table>\r\n', 'html', 'ПОЛУЧЕНО ПРОЧНОЕ ВОДОСТОЙКОЕ СОЕДИНЕНИЕ\r\nПОЛУЧЕНО НОВОЕ ПРОЧНОЕ ВОДОСТОЙКОЕ КЛЕЕВОЕ \r\nСОЕДИНЕНИЕ.ИЗОБРЕТЕНИЕ ОТНОСИТСЯ К ОБЛАСТИ ПОЛУЧЕНИЯ И ПРИМЕНЕНИЯ КЛЕЯЩИХ СОСТАВОВ, ИСПОЛЬЗУЕМЫХ В ДЕРЕВООБРАБАТЫВАЮЩЕЙ, МЕБЕЛЬНОЙ И СТРОИТЕЛЬНОЙ ПРОМЫШЛЕННОСТИ. ДАННАЯ КЛЕЕВАЯ КОМПОЗИЦИЯ ПРЕДНАЗНАЧЕНА ТОЛЬКО ДЛЯ ГОРЯЧЕГО ПРЕССОВАНИЯ И ИМЕЕТ В СВОЕМ СОСТАВЕ МНОГОКОМПОНЕНТНЫЙ ОТВЕРДИТЕЛЬ.\r\nАВТОРЫ ИЗОБРЕТЕНИЯ: РАЗИНЬКОВ ЕГОР МИХАЙЛОВИЧ \r\nИ МЕЩЕРЯКОВА АННА АНАТОЛЬЕВНА ПАТЕНТ РОССИЙСКОЙ ФЕДЕРАЦИИ RU2277566 ОПИСАНИЕ ИЗОБРЕТЕНИЯ \r\n\r\nИЗОБРЕТЕНИЕ ОТНОСИТСЯ К ОБЛАСТИ ПОЛУЧЕНИЯ \r\nИ ПРИМЕНЕНИЯ КЛЕЯЩИХ СОСТАВОВ, ИСПОЛЬЗУЕМЫХ В ДЕРЕВООБРАБАТЫВАЮЩЕЙ, МЕБЕЛЬНОЙ И СТРОИТЕЛЬНОЙ ПРОМЫШЛЕННОСТИ. ДАННАЯ КЛЕЕВАЯ КОМПОЗИЦИЯ ПРЕДНАЗНАЧЕНА ТОЛЬКО ДЛЯ ГОРЯЧЕГО ПРЕССОВАНИЯ И ИМЕЕТ В СВОЕМ СОСТАВЕ МНОГОКОМПОНЕНТНЫЙ ОТВЕРДИТЕЛЬ. ПРОТОТИПОМ КЛЕЕВОЙ КОМПОЗИЦИИ ЯВЛЯЕТСЯ КЛЕЙ, СОСТОЯЩИЙ ИЗ КАРБАМИДОФОРМАЛЬДЕГИДНОЙ СМОЛЫ, СОПОЛИМЕРА АКРИЛОНИТРИЛА С N-ВИНИЛКАПРОЛАКТАМОМ И ОТВЕРДИТЕЛЬ. В КАЧЕСТВЕ ОТВЕРДИТЕЛЯ ПРИМЕНЯЮТ ХЛОРИСТЫЙ АММОНИЙ ЛИБО АКРИЛОВУЮ КИСЛОТУ. \r\n\r\nИЗОБРЕТЕНИЕ РЕШАЕТ ЗАДАЧУ ПО ПОЛУЧЕНИЮ \r\nПРОЧНОГО И ВОДОСТОЙКОГО КЛЕЕВОГО СОЕДИНЕНИЯ. ЭТО ДОСТИГАЕТСЯ ТЕМ, ЧТО КЛЕЕВАЯ КОМПОЗИЦИЯ, ВКЛЮЧАЮЩАЯ СИНТЕТИЧЕСКУЮ СМОЛУ И ОТВЕРДИТЕЛЬ, СОГЛАСНО ИЗОБРЕТЕНИЮ, ДОПОЛНИТЕЛЬНО СОДЕРЖИТ МОДИФИКАТОР, ПРИЧЕМ В КАЧЕСТВЕ СИНТЕТИЧЕСКОЙ СМОЛЫ КЛЕЕВАЯ КОМПОЗИЦИЯ ВКЛЮЧАЕТ КАРБАМИДОМЕЛАМИНОФОРМАЛЬДЕГИДНУЮ СМОЛУ С ОТВЕРДИТЕЛЕМ 2542, В КАЧЕСТВЕ МОДИФИКАТОРА - КАРБАМИДОФОРМАЛЬДЕГИДНУЮ СМОЛУ, А В КАЧЕСТВЕ ОТВЕРДИТЕЛЯ - 10%-НЫЙ РАСТВОР ЩАВЕЛЕВОЙ КИСЛОТЫ ПРИ СЛЕДУЮЩЕМ СООТНОШЕНИИ КОМПОНЕНТОВ, МАС.Ч.: \r\n КАРБАМИДОМЕЛАМИНОФОРМАЛЬДЕГИДНАЯ СМОЛА \r\n   64,5-79,2     \r\n 10%-НЫЙ РАСТВОР ЩАВЕЛЕВОЙ КИСЛОТЫ    4,4-20,5 \r\n    \r\n ОТВЕРДИТЕЛЬ ДЛЯ КАРБАМИДОМЕЛАМИНОФОРМАЛЬДЕГИДНОЙ \r\n    0,6-2,0     \r\n СМОЛЫ 2542    13,0-15,8', 1, NULL, NULL, NULL, NULL, NULL, 'N', '9', '', '', '868533081', NULL, NULL, NULL),
(4, '2018-02-26 11:44:33', 1, '2018-02-26 11:44:32', 1, 2, 1, 'Y', NULL, NULL, 500, 'Герцог', 5, '<p>Изящный каркас с элементами росписи, роскошные ткани для обивки, яркие цвета и богатый декор.</p>', 'html', 6, '        <p>Изящный каркас с элементами росписи, роскошные ткани для обивки, яркие цвета и богатый декор.</p>', 'html', 'ГЕРЦОГ\r\nИЗЯЩНЫЙ КАРКАС С ЭЛЕМЕНТАМИ РОСПИСИ, РОСКОШНЫЕ \r\nТКАНИ ДЛЯ ОБИВКИ, ЯРКИЕ ЦВЕТА И БОГАТЫЙ ДЕКОР.\r\nИЗЯЩНЫЙ КАРКАС С ЭЛЕМЕНТАМИ РОСПИСИ, РОСКОШНЫЕ \r\nТКАНИ ДЛЯ ОБИВКИ, ЯРКИЕ ЦВЕТА И БОГАТЫЙ ДЕКОР.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '10', '', '', '-782370160', NULL, NULL, NULL),
(5, '2018-02-26 11:44:35', 1, '2018-02-26 11:44:34', 1, 2, 1, 'Y', NULL, NULL, 500, 'Монализа', 7, '        <p>Богатство и изыск выражен в данной модели. Каркас дополнительно расписывается золотом.\r\n        По желанию клиента возможна простежка на спинке и подлокотниках.</p>\r\n      ', 'html', 8, '        <p>Богатство и изыск выражен в данной модели. Каркас дополнительно расписывается золотом.\r\n        По желанию клиента возможна простежка на спинке и подлокотниках.</p>\r\n      ', 'html', 'МОНАЛИЗА\r\nБОГАТСТВО И ИЗЫСК ВЫРАЖЕН В ДАННОЙ МОДЕЛИ. \r\nКАРКАС ДОПОЛНИТЕЛЬНО РАСПИСЫВАЕТСЯ ЗОЛОТОМ. ПО ЖЕЛАНИЮ КЛИЕНТА ВОЗМОЖНА ПРОСТЕЖКА НА СПИНКЕ И ПОДЛОКОТНИКАХ.\r\nБОГАТСТВО И ИЗЫСК ВЫРАЖЕН В ДАННОЙ МОДЕЛИ. \r\nКАРКАС ДОПОЛНИТЕЛЬНО РАСПИСЫВАЕТСЯ ЗОЛОТОМ. ПО ЖЕЛАНИЮ КЛИЕНТА ВОЗМОЖНА ПРОСТЕЖКА НА СПИНКЕ И ПОДЛОКОТНИКАХ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '11', '', '', '-48879568', NULL, NULL, NULL),
(6, '2018-02-26 11:44:37', 1, '2018-02-26 11:44:35', 1, 2, 2, 'Y', NULL, NULL, 500, 'Министр', 9, '        <p>Кресло руководителя Министр, несмотря на низкую стоимость, впечатляюще выглядит. \r\n          С его помощью можно создать офисный интерьер высокого уровня. К тому же в нем можно работать с комфортом, не чувствуя усталости.</p>\r\n      ', 'html', 10, '          <p>Кресло руководителя Министр, несмотря на низкую стоимость, впечатляюще выглядит. \r\n          С его помощью можно создать офисный интерьер высокого уровня. К тому же в нем можно работать с комфортом, не чувствуя усталости.</p>\r\n        ', 'html', 'МИНИСТР\r\nКРЕСЛО РУКОВОДИТЕЛЯ МИНИСТР, НЕСМОТРЯ \r\nНА НИЗКУЮ СТОИМОСТЬ, ВПЕЧАТЛЯЮЩЕ ВЫГЛЯДИТ. С ЕГО ПОМОЩЬЮ МОЖНО СОЗДАТЬ ОФИСНЫЙ ИНТЕРЬЕР ВЫСОКОГО УРОВНЯ. К ТОМУ ЖЕ В НЕМ МОЖНО РАБОТАТЬ С КОМФОРТОМ, НЕ ЧУВСТВУЯ УСТАЛОСТИ.\r\nКРЕСЛО РУКОВОДИТЕЛЯ МИНИСТР, НЕСМОТРЯ \r\nНА НИЗКУЮ СТОИМОСТЬ, ВПЕЧАТЛЯЮЩЕ ВЫГЛЯДИТ. С ЕГО ПОМОЩЬЮ МОЖНО СОЗДАТЬ ОФИСНЫЙ ИНТЕРЬЕР ВЫСОКОГО УРОВНЯ. К ТОМУ ЖЕ В НЕМ МОЖНО РАБОТАТЬ С КОМФОРТОМ, НЕ ЧУВСТВУЯ УСТАЛОСТИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '12', '', '', '-2121649046', NULL, NULL, NULL),
(7, '2018-02-26 11:44:39', 1, '2018-02-26 11:44:37', 1, 2, 2, 'Y', NULL, NULL, 500, 'Хром', 11, '        \r\n          <p>Динамичная модель офисного кресла примечательна оригинальным внешним видом, который достигнут за \r\n          счет хромированной крестовины,необычных подлокотников и потрясающей эргономики. \r\n          Твердая спинка жестко поддерживает позвоночник.</p>\r\n      ', 'html', 12, '          \r\n          <p>Динамичная модель офисного кресла примечательна оригинальным внешним видом, который достигнут за \r\n          счет хромированной крестовины,необычных подлокотников и потрясающей эргономики. \r\n          Твердая спинка жестко поддерживает позвоночник.</p>\r\n        ', 'html', 'ХРОМ\r\nДИНАМИЧНАЯ МОДЕЛЬ ОФИСНОГО КРЕСЛА ПРИМЕЧАТЕЛЬНА \r\nОРИГИНАЛЬНЫМ ВНЕШНИМ ВИДОМ, КОТОРЫЙ ДОСТИГНУТ ЗА СЧЕТ ХРОМИРОВАННОЙ КРЕСТОВИНЫ,НЕОБЫЧНЫХ ПОДЛОКОТНИКОВ И ПОТРЯСАЮЩЕЙ ЭРГОНОМИКИ. ТВЕРДАЯ СПИНКА ЖЕСТКО ПОДДЕРЖИВАЕТ ПОЗВОНОЧНИК.\r\nДИНАМИЧНАЯ МОДЕЛЬ ОФИСНОГО КРЕСЛА ПРИМЕЧАТЕЛЬНА \r\nОРИГИНАЛЬНЫМ ВНЕШНИМ ВИДОМ, КОТОРЫЙ ДОСТИГНУТ ЗА СЧЕТ ХРОМИРОВАННОЙ КРЕСТОВИНЫ,НЕОБЫЧНЫХ ПОДЛОКОТНИКОВ И ПОТРЯСАЮЩЕЙ ЭРГОНОМИКИ. ТВЕРДАЯ СПИНКА ЖЕСТКО ПОДДЕРЖИВАЕТ ПОЗВОНОЧНИК.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '13', '', '', '-256131656', NULL, NULL, NULL),
(8, '2018-02-26 11:44:40', 1, '2018-02-26 11:44:39', 1, 2, 3, 'Y', NULL, NULL, 500, 'Ливерпуль', 13, '        <p>Деревянные стулья Ливерпуль, выполненные в классическом английском стиле, \r\n        создают особую атмосферу в кухне.</p>\r\n      ', 'html', 14, '        \r\n        <p>Деревянные стулья Ливерпуль, выполненные в классическом английском стиле, \r\n        создают особую атмосферу в кухне.</p>\r\n        \r\n      ', 'html', 'ЛИВЕРПУЛЬ\r\nДЕРЕВЯННЫЕ СТУЛЬЯ ЛИВЕРПУЛЬ, ВЫПОЛНЕННЫЕ \r\nВ КЛАССИЧЕСКОМ АНГЛИЙСКОМ СТИЛЕ, СОЗДАЮТ ОСОБУЮ АТМОСФЕРУ В КУХНЕ.\r\nДЕРЕВЯННЫЕ СТУЛЬЯ ЛИВЕРПУЛЬ, ВЫПОЛНЕННЫЕ \r\nВ КЛАССИЧЕСКОМ АНГЛИЙСКОМ СТИЛЕ, СОЗДАЮТ ОСОБУЮ АТМОСФЕРУ В КУХНЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '14', '', '', '1081715374', NULL, NULL, NULL),
(9, '2018-02-26 11:44:41', 1, '2018-02-26 11:44:41', 1, 2, 1, 'Y', NULL, NULL, 500, 'Изабелла', 15, '        <p>Изящный каркас с элементами росписи золотом. Обивка может быть представлена в ткани или коже.</p>\r\n      ', 'html', 16, '        <p>Изящный каркас с элементами росписи золотом. Обивка может быть представлена в ткани или коже.</p>\r\n      ', 'html', 'ИЗАБЕЛЛА\r\nИЗЯЩНЫЙ КАРКАС С ЭЛЕМЕНТАМИ РОСПИСИ ЗОЛОТОМ. \r\nОБИВКА МОЖЕТ БЫТЬ ПРЕДСТАВЛЕНА В ТКАНИ ИЛИ КОЖЕ.\r\nИЗЯЩНЫЙ КАРКАС С ЭЛЕМЕНТАМИ РОСПИСИ ЗОЛОТОМ. \r\nОБИВКА МОЖЕТ БЫТЬ ПРЕДСТАВЛЕНА В ТКАНИ ИЛИ КОЖЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '15', '', '', '-1320392841', NULL, NULL, NULL),
(10, '2018-02-26 11:44:44', 1, '2018-02-26 11:44:42', 1, 2, 1, 'Y', NULL, NULL, 500, 'Аладдин', 17, '        <p>Комфортная, массивная модель. Обивка - элитные ткани, ручная строчка, \r\n        придают изделию необыкновенный шарм и элегантную роскошь. \r\n        По желанию клиента можно установить механизм трансформации для ежедневного использования или «гостевую раскладушку»</p>\r\n      ', 'html', 18, '        <p>Комфортная, массивная модель. Обивка - элитные ткани, ручная строчка, \r\n        придают изделию необыкновенный шарм и элегантную роскошь. \r\n        По желанию клиента можно установить механизм трансформации для ежедневного использования или «гостевую раскладушку»</p>\r\n      ', 'html', 'АЛАДДИН\r\nКОМФОРТНАЯ, МАССИВНАЯ МОДЕЛЬ. ОБИВКА - ЭЛИТНЫЕ \r\nТКАНИ, РУЧНАЯ СТРОЧКА, ПРИДАЮТ ИЗДЕЛИЮ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ. ПО ЖЕЛАНИЮ КЛИЕНТА МОЖНО УСТАНОВИТЬ МЕХАНИЗМ ТРАНСФОРМАЦИИ ДЛЯ ЕЖЕДНЕВНОГО ИСПОЛЬЗОВАНИЯ ИЛИ «ГОСТЕВУЮ РАСКЛАДУШКУ»\r\nКОМФОРТНАЯ, МАССИВНАЯ МОДЕЛЬ. ОБИВКА - ЭЛИТНЫЕ \r\nТКАНИ, РУЧНАЯ СТРОЧКА, ПРИДАЮТ ИЗДЕЛИЮ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ. ПО ЖЕЛАНИЮ КЛИЕНТА МОЖНО УСТАНОВИТЬ МЕХАНИЗМ ТРАНСФОРМАЦИИ ДЛЯ ЕЖЕДНЕВНОГО ИСПОЛЬЗОВАНИЯ ИЛИ «ГОСТЕВУЮ РАСКЛАДУШКУ»', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '16', '', '', '1053250178', NULL, NULL, NULL),
(11, '2018-02-26 11:44:45', 1, '2018-02-26 11:44:44', 1, 2, 1, 'Y', NULL, NULL, 500, 'Джоконда', 19, '          <p>Изящный каркас, элитные ткани для обивки, ручная строчка, придают изделию необыкновенный шарм и элегантную роскошь. \r\n          Обивка также может быть в коже, по желанию клиента возможна простежка на подлокотниках и спинке.</p>\r\n        ', 'html', 20, '          <p>Изящный каркас, элитные ткани для обивки, ручная строчка, придают изделию необыкновенный шарм и элегантную роскошь. \r\n          Обивка также может быть в коже, по желанию клиента возможна простежка на подлокотниках и спинке.</p>\r\n        ', 'html', 'ДЖОКОНДА\r\nИЗЯЩНЫЙ КАРКАС, ЭЛИТНЫЕ ТКАНИ ДЛЯ ОБИВКИ, \r\nРУЧНАЯ СТРОЧКА, ПРИДАЮТ ИЗДЕЛИЮ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ. ОБИВКА ТАКЖЕ МОЖЕТ БЫТЬ В КОЖЕ, ПО ЖЕЛАНИЮ КЛИЕНТА ВОЗМОЖНА ПРОСТЕЖКА НА ПОДЛОКОТНИКАХ И СПИНКЕ.\r\nИЗЯЩНЫЙ КАРКАС, ЭЛИТНЫЕ ТКАНИ ДЛЯ ОБИВКИ, \r\nРУЧНАЯ СТРОЧКА, ПРИДАЮТ ИЗДЕЛИЮ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ. ОБИВКА ТАКЖЕ МОЖЕТ БЫТЬ В КОЖЕ, ПО ЖЕЛАНИЮ КЛИЕНТА ВОЗМОЖНА ПРОСТЕЖКА НА ПОДЛОКОТНИКАХ И СПИНКЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '17', '', '', '-106709740', NULL, NULL, NULL),
(12, '2018-02-26 11:44:46', 1, '2018-02-26 11:44:45', 1, 2, 1, 'Y', NULL, NULL, 500, 'Флора', 21, '        <p>Классическая модель создана для украшения роскошных интерьеров. \r\n        Элегантность и колоритность модели придают накладки из натурального дерева.</p>\r\n      ', 'html', 22, '        <p>Классическая модель создана для украшения роскошных интерьеров. \r\n        Элегантность и колоритность модели придают накладки из натурального дерева.</p>\r\n      ', 'html', 'ФЛОРА\r\nКЛАССИЧЕСКАЯ МОДЕЛЬ СОЗДАНА ДЛЯ УКРАШЕНИЯ \r\nРОСКОШНЫХ ИНТЕРЬЕРОВ. ЭЛЕГАНТНОСТЬ И КОЛОРИТНОСТЬ МОДЕЛИ ПРИДАЮТ НАКЛАДКИ ИЗ НАТУРАЛЬНОГО ДЕРЕВА.\r\nКЛАССИЧЕСКАЯ МОДЕЛЬ СОЗДАНА ДЛЯ УКРАШЕНИЯ \r\nРОСКОШНЫХ ИНТЕРЬЕРОВ. ЭЛЕГАНТНОСТЬ И КОЛОРИТНОСТЬ МОДЕЛИ ПРИДАЮТ НАКЛАДКИ ИЗ НАТУРАЛЬНОГО ДЕРЕВА.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '18', '', '', '-1053944437', NULL, NULL, NULL),
(13, '2018-02-26 11:44:47', 1, '2018-02-26 11:44:46', 1, 2, 1, 'Y', NULL, NULL, 500, 'Престиж', 23, '          <p>Тахта в классическом исполнении. Подлокотник находится слева – это стандарт. Обивка может быть как в ткани, так и в коже.</p>\r\n        ', 'html', 24, '          <p>Тахта в классическом исполнении. Подлокотник находится слева – это стандарт. Обивка может быть как в ткани, так и в коже.</p>\r\n        ', 'html', 'ПРЕСТИЖ\r\nТАХТА В КЛАССИЧЕСКОМ ИСПОЛНЕНИИ. ПОДЛОКОТНИК \r\nНАХОДИТСЯ СЛЕВА – ЭТО СТАНДАРТ. ОБИВКА МОЖЕТ БЫТЬ КАК В ТКАНИ, ТАК И В КОЖЕ.\r\nТАХТА В КЛАССИЧЕСКОМ ИСПОЛНЕНИИ. ПОДЛОКОТНИК \r\nНАХОДИТСЯ СЛЕВА – ЭТО СТАНДАРТ. ОБИВКА МОЖЕТ БЫТЬ КАК В ТКАНИ, ТАК И В КОЖЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '19', '', '', '273423738', NULL, NULL, NULL),
(14, '2018-02-26 11:44:49', 1, '2018-02-26 11:44:48', 1, 2, 1, 'Y', NULL, NULL, 500, 'Лаура', 25, '        <p>Двухместная софа на основе конусных пружин или на основе комбинации плотных поролонов, по Вашему желанию. \r\n        Элитные ткани для обивки придают модели необыкновенный шарм и элегантную роскошь.</p>\r\n      ', 'html', 26, '        <p>Двухместная софа на основе конусных пружин или на основе комбинации плотных поролонов, по Вашему желанию. \r\n        Элитные ткани для обивки придают модели необыкновенный шарм и элегантную роскошь.</p>\r\n      ', 'html', 'ЛАУРА\r\nДВУХМЕСТНАЯ СОФА НА ОСНОВЕ КОНУСНЫХ ПРУЖИН \r\nИЛИ НА ОСНОВЕ КОМБИНАЦИИ ПЛОТНЫХ ПОРОЛОНОВ, ПО ВАШЕМУ ЖЕЛАНИЮ. ЭЛИТНЫЕ ТКАНИ ДЛЯ ОБИВКИ ПРИДАЮТ МОДЕЛИ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ.\r\nДВУХМЕСТНАЯ СОФА НА ОСНОВЕ КОНУСНЫХ ПРУЖИН \r\nИЛИ НА ОСНОВЕ КОМБИНАЦИИ ПЛОТНЫХ ПОРОЛОНОВ, ПО ВАШЕМУ ЖЕЛАНИЮ. ЭЛИТНЫЕ ТКАНИ ДЛЯ ОБИВКИ ПРИДАЮТ МОДЕЛИ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '20', '', '', '-281088768', NULL, NULL, NULL),
(15, '2018-02-26 11:44:51', 1, '2018-02-26 11:44:49', 1, 2, 2, 'Y', NULL, NULL, 500, 'Модерн', 27, '         <p>Основными характеристиками данной серии является новизна дизайнерской мысли, \r\n          которая воплощена во внешнем облике этой мебели, и оригинальность исполнения классической компоновки, \r\n          которая сочетает в себе оптимальный набор всех необходимых элементов и свежие решения в их организации. \r\n          Что в сочетании с удачными цветовыми решениями создаст в вашем офисе атмосферу неповторимой индивидуальности. \r\n          Данная серия – наилучшее решение для бизнесменов, которые привыкли быть на шаг впереди не только своих конкурентов, \r\n          но и самого времени.</p>\r\n        ', 'html', 28, '          <p>Основными характеристиками данной серии является новизна дизайнерской мысли, \r\n          которая воплощена во внешнем облике этой мебели, и оригинальность исполнения классической компоновки, \r\n          которая сочетает в себе оптимальный набор всех необходимых элементов и свежие решения в их организации. \r\n          Что в сочетании с удачными цветовыми решениями создаст в вашем офисе атмосферу неповторимой индивидуальности. \r\n          Данная серия – наилучшее решение для бизнесменов, которые привыкли быть на шаг впереди не только своих конкурентов, \r\n          но и самого времени.</p>\r\n        ', 'html', 'МОДЕРН\r\nОСНОВНЫМИ ХАРАКТЕРИСТИКАМИ ДАННОЙ СЕРИИ \r\nЯВЛЯЕТСЯ НОВИЗНА ДИЗАЙНЕРСКОЙ МЫСЛИ, КОТОРАЯ ВОПЛОЩЕНА ВО ВНЕШНЕМ ОБЛИКЕ ЭТОЙ МЕБЕЛИ, И ОРИГИНАЛЬНОСТЬ ИСПОЛНЕНИЯ КЛАССИЧЕСКОЙ КОМПОНОВКИ, КОТОРАЯ СОЧЕТАЕТ В СЕБЕ ОПТИМАЛЬНЫЙ НАБОР ВСЕХ НЕОБХОДИМЫХ ЭЛЕМЕНТОВ И СВЕЖИЕ РЕШЕНИЯ В ИХ ОРГАНИЗАЦИИ. ЧТО В СОЧЕТАНИИ С УДАЧНЫМИ ЦВЕТОВЫМИ РЕШЕНИЯМИ СОЗДАСТ В ВАШЕМ ОФИСЕ АТМОСФЕРУ НЕПОВТОРИМОЙ ИНДИВИДУАЛЬНОСТИ. ДАННАЯ СЕРИЯ – НАИЛУЧШЕЕ РЕШЕНИЕ ДЛЯ БИЗНЕСМЕНОВ, КОТОРЫЕ ПРИВЫКЛИ БЫТЬ НА ШАГ ВПЕРЕДИ НЕ ТОЛЬКО СВОИХ КОНКУРЕНТОВ, НО И САМОГО ВРЕМЕНИ.\r\nОСНОВНЫМИ ХАРАКТЕРИСТИКАМИ ДАННОЙ СЕРИИ \r\nЯВЛЯЕТСЯ НОВИЗНА ДИЗАЙНЕРСКОЙ МЫСЛИ, КОТОРАЯ ВОПЛОЩЕНА ВО ВНЕШНЕМ ОБЛИКЕ ЭТОЙ МЕБЕЛИ, И ОРИГИНАЛЬНОСТЬ ИСПОЛНЕНИЯ КЛАССИЧЕСКОЙ КОМПОНОВКИ, КОТОРАЯ СОЧЕТАЕТ В СЕБЕ ОПТИМАЛЬНЫЙ НАБОР ВСЕХ НЕОБХОДИМЫХ ЭЛЕМЕНТОВ И СВЕЖИЕ РЕШЕНИЯ В ИХ ОРГАНИЗАЦИИ. ЧТО В СОЧЕТАНИИ С УДАЧНЫМИ ЦВЕТОВЫМИ РЕШЕНИЯМИ СОЗДАСТ В ВАШЕМ ОФИСЕ АТМОСФЕРУ НЕПОВТОРИМОЙ ИНДИВИДУАЛЬНОСТИ. ДАННАЯ СЕРИЯ – НАИЛУЧШЕЕ РЕШЕНИЕ ДЛЯ БИЗНЕСМЕНОВ, КОТОРЫЕ ПРИВЫКЛИ БЫТЬ НА ШАГ ВПЕРЕДИ НЕ ТОЛЬКО СВОИХ КОНКУРЕНТОВ, НО И САМОГО ВРЕМЕНИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '21', '', '', '-1185689438', NULL, NULL, NULL),
(16, '2018-02-26 11:44:54', 1, '2018-02-26 11:44:52', 1, 2, 2, 'Y', NULL, NULL, 500, 'Оптима', 29, '         <p>\r\n          Удачный выбор мебели для персонала во многом определяет успешность деятельности всей компании. \r\n          Правильно организовать рабочее пространство  - значит помочь коллегам выполнять свои функции быстрее и эффективнее.</p><p>\r\n          Серия <b>«Оптима»</b> позволит найти массу решений для обустройства рабочей зоны, приспособить интерьер к должностным \r\n          обязанностям всех категорий сотрудников. Эргономичные угловые столы, перегородки, шкафы и тумбы  помогут рационально использовать \r\n          пространство под уникальное рабочее место, приспособленное к потребностям каждого работника и всей фирмы в целом.</p><p>\r\n          Мебель <b>«Оптима»</b> - это полный набор интерьерных решений для обустройства пространства в офисе по современным стандартам.</p>\r\n        </p>\r\n      ', 'html', 30, '            \r\n        <p>\r\n          Удачный выбор мебели для персонала во многом определяет успешность деятельности всей компании. Правильно организовать рабочее пространство  - значит помочь коллегам выполнять свои функции быстрее и эффективнее.</br>\r\n          Серия <b>«Оптима»</b> позволит найти массу решений для обустройства рабочей зоны, приспособить интерьер к должностным обязанностям всех категорий сотрудников. Эргономичные угловые столы, перегородки, шкафы и тумбы  помогут рационально использовать пространство под уникальное рабочее место, приспособленное к потребностям каждого работника и всей фирмы в целом.</br>\r\n          Мебель <b>«Оптима»</b> - это полный набор интерьерных решений для обустройства пространства в офисе по современным стандартам.\r\n        </p>\r\n      ', 'html', 'ОПТИМА\r\nУДАЧНЫЙ ВЫБОР МЕБЕЛИ ДЛЯ ПЕРСОНАЛА ВО МНОГОМ \r\nОПРЕДЕЛЯЕТ УСПЕШНОСТЬ ДЕЯТЕЛЬНОСТИ ВСЕЙ КОМПАНИИ. ПРАВИЛЬНО ОРГАНИЗОВАТЬ РАБОЧЕЕ ПРОСТРАНСТВО - ЗНАЧИТ ПОМОЧЬ КОЛЛЕГАМ ВЫПОЛНЯТЬ СВОИ ФУНКЦИИ БЫСТРЕЕ И ЭФФЕКТИВНЕЕ.\r\n\r\nСЕРИЯ «ОПТИМА» ПОЗВОЛИТ НАЙТИ МАССУ РЕШЕНИЙ \r\nДЛЯ ОБУСТРОЙСТВА РАБОЧЕЙ ЗОНЫ, ПРИСПОСОБИТЬ ИНТЕРЬЕР К ДОЛЖНОСТНЫМ ОБЯЗАННОСТЯМ ВСЕХ КАТЕГОРИЙ СОТРУДНИКОВ. ЭРГОНОМИЧНЫЕ УГЛОВЫЕ СТОЛЫ, ПЕРЕГОРОДКИ, ШКАФЫ И ТУМБЫ ПОМОГУТ РАЦИОНАЛЬНО ИСПОЛЬЗОВАТЬ ПРОСТРАНСТВО ПОД УНИКАЛЬНОЕ РАБОЧЕЕ МЕСТО, ПРИСПОСОБЛЕННОЕ К ПОТРЕБНОСТЯМ КАЖДОГО РАБОТНИКА И ВСЕЙ ФИРМЫ В ЦЕЛОМ.\r\n\r\nМЕБЕЛЬ «ОПТИМА» - ЭТО ПОЛНЫЙ НАБОР ИНТЕРЬЕРНЫХ \r\nРЕШЕНИЙ ДЛЯ ОБУСТРОЙСТВА ПРОСТРАНСТВА В ОФИСЕ ПО СОВРЕМЕННЫМ СТАНДАРТАМ.\r\nУДАЧНЫЙ ВЫБОР МЕБЕЛИ ДЛЯ ПЕРСОНАЛА ВО МНОГОМ \r\nОПРЕДЕЛЯЕТ УСПЕШНОСТЬ ДЕЯТЕЛЬНОСТИ ВСЕЙ КОМПАНИИ. ПРАВИЛЬНО ОРГАНИЗОВАТЬ РАБОЧЕЕ ПРОСТРАНСТВО - ЗНАЧИТ ПОМОЧЬ КОЛЛЕГАМ ВЫПОЛНЯТЬ СВОИ ФУНКЦИИ БЫСТРЕЕ И ЭФФЕКТИВНЕЕ. СЕРИЯ «ОПТИМА» ПОЗВОЛИТ НАЙТИ МАССУ РЕШЕНИЙ ДЛЯ ОБУСТРОЙСТВА РАБОЧЕЙ ЗОНЫ, ПРИСПОСОБИТЬ ИНТЕРЬЕР К ДОЛЖНОСТНЫМ ОБЯЗАННОСТЯМ ВСЕХ КАТЕГОРИЙ СОТРУДНИКОВ. ЭРГОНОМИЧНЫЕ УГЛОВЫЕ СТОЛЫ, ПЕРЕГОРОДКИ, ШКАФЫ И ТУМБЫ ПОМОГУТ РАЦИОНАЛЬНО ИСПОЛЬЗОВАТЬ ПРОСТРАНСТВО ПОД УНИКАЛЬНОЕ РАБОЧЕЕ МЕСТО, ПРИСПОСОБЛЕННОЕ К ПОТРЕБНОСТЯМ КАЖДОГО РАБОТНИКА И ВСЕЙ ФИРМЫ В ЦЕЛОМ. МЕБЕЛЬ «ОПТИМА» - ЭТО ПОЛНЫЙ НАБОР ИНТЕРЬЕРНЫХ РЕШЕНИЙ ДЛЯ ОБУСТРОЙСТВА ПРОСТРАНСТВА В ОФИСЕ ПО СОВРЕМЕННЫМ СТАНДАРТАМ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '22', '', '', '1945328005', NULL, NULL, NULL),
(17, '2018-02-26 11:44:57', 1, '2018-02-26 11:44:54', 1, 2, 2, 'Y', NULL, NULL, 500, 'Собрание', 31, '        <p>\r\n          Заходя в помещение, где находятся столы для переговоров «Собрание», возникает стойкое ощущение, что находишься в кабинете если не президента страны, то премьер-министра как минимум. Вот-вот в комнату войдет высокопоставленный чиновник, и начнется обсуждение глобальных вопросов.\r\n          Удивительное сочетание изысканной роскоши стиля и красоты классических линий столов «Собрание» и привлекательной цены опровергает устоявшееся утверждение о качестве дешевой мебели. Уменьшение себестоимости происходит за счет использования более дешевых материалов – ДСП и ДВП, что позволяет офисной мебели сохранять великолепные эксплуатационные характеристики.\r\n        </p>\r\n      ', 'html', 32, '        \r\n        <p>\r\n          Заходя в помещение, где находятся столы для переговоров «Собрание», возникает стойкое ощущение, что находишься в кабинете если не президента страны, то премьер-министра как минимум. Вот-вот в комнату войдет высокопоставленный чиновник, и начнется обсуждение глобальных вопросов.\r\n          Удивительное сочетание изысканной роскоши стиля и красоты классических линий столов «Собрание» и привлекательной цены опровергает устоявшееся утверждение о качестве дешевой мебели. Уменьшение себестоимости происходит за счет использования более дешевых материалов – ДСП и ДВП, что позволяет офисной мебели сохранять великолепные эксплуатационные характеристики.\r\n        </p>\r\n      ', 'html', 'СОБРАНИЕ\r\nЗАХОДЯ В ПОМЕЩЕНИЕ, ГДЕ НАХОДЯТСЯ СТОЛЫ \r\nДЛЯ ПЕРЕГОВОРОВ «СОБРАНИЕ», ВОЗНИКАЕТ СТОЙКОЕ ОЩУЩЕНИЕ, ЧТО НАХОДИШЬСЯ В КАБИНЕТЕ ЕСЛИ НЕ ПРЕЗИДЕНТА СТРАНЫ, ТО ПРЕМЬЕР-МИНИСТРА КАК МИНИМУМ. ВОТ-ВОТ В КОМНАТУ ВОЙДЕТ ВЫСОКОПОСТАВЛЕННЫЙ ЧИНОВНИК, И НАЧНЕТСЯ ОБСУЖДЕНИЕ ГЛОБАЛЬНЫХ ВОПРОСОВ. УДИВИТЕЛЬНОЕ СОЧЕТАНИЕ ИЗЫСКАННОЙ РОСКОШИ СТИЛЯ И КРАСОТЫ КЛАССИЧЕСКИХ ЛИНИЙ СТОЛОВ «СОБРАНИЕ» И ПРИВЛЕКАТЕЛЬНОЙ ЦЕНЫ ОПРОВЕРГАЕТ УСТОЯВШЕЕСЯ УТВЕРЖДЕНИЕ О КАЧЕСТВЕ ДЕШЕВОЙ МЕБЕЛИ. УМЕНЬШЕНИЕ СЕБЕСТОИМОСТИ ПРОИСХОДИТ ЗА СЧЕТ ИСПОЛЬЗОВАНИЯ БОЛЕЕ ДЕШЕВЫХ МАТЕРИАЛОВ – ДСП И ДВП, ЧТО ПОЗВОЛЯЕТ ОФИСНОЙ МЕБЕЛИ СОХРАНЯТЬ ВЕЛИКОЛЕПНЫЕ ЭКСПЛУАТАЦИОННЫЕ ХАРАКТЕРИСТИКИ.\r\nЗАХОДЯ В ПОМЕЩЕНИЕ, ГДЕ НАХОДЯТСЯ СТОЛЫ \r\nДЛЯ ПЕРЕГОВОРОВ «СОБРАНИЕ», ВОЗНИКАЕТ СТОЙКОЕ ОЩУЩЕНИЕ, ЧТО НАХОДИШЬСЯ В КАБИНЕТЕ ЕСЛИ НЕ ПРЕЗИДЕНТА СТРАНЫ, ТО ПРЕМЬЕР-МИНИСТРА КАК МИНИМУМ. ВОТ-ВОТ В КОМНАТУ ВОЙДЕТ ВЫСОКОПОСТАВЛЕННЫЙ ЧИНОВНИК, И НАЧНЕТСЯ ОБСУЖДЕНИЕ ГЛОБАЛЬНЫХ ВОПРОСОВ. УДИВИТЕЛЬНОЕ СОЧЕТАНИЕ ИЗЫСКАННОЙ РОСКОШИ СТИЛЯ И КРАСОТЫ КЛАССИЧЕСКИХ ЛИНИЙ СТОЛОВ «СОБРАНИЕ» И ПРИВЛЕКАТЕЛЬНОЙ ЦЕНЫ ОПРОВЕРГАЕТ УСТОЯВШЕЕСЯ УТВЕРЖДЕНИЕ О КАЧЕСТВЕ ДЕШЕВОЙ МЕБЕЛИ. УМЕНЬШЕНИЕ СЕБЕСТОИМОСТИ ПРОИСХОДИТ ЗА СЧЕТ ИСПОЛЬЗОВАНИЯ БОЛЕЕ ДЕШЕВЫХ МАТЕРИАЛОВ – ДСП И ДВП, ЧТО ПОЗВОЛЯЕТ ОФИСНОЙ МЕБЕЛИ СОХРАНЯТЬ ВЕЛИКОЛЕПНЫЕ ЭКСПЛУАТАЦИОННЫЕ ХАРАКТЕРИСТИКИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '23', '', '', '1523163777', NULL, NULL, NULL),
(18, '2018-02-26 11:44:59', 1, '2018-02-26 11:44:57', 1, 2, 2, 'Y', NULL, NULL, 500, 'Лидер', 33, '        <p>Этот стильный стол абсолютно не симметричен, и это придает ему изящность и оригинальность. \r\n        Слева он опирается на ножку, освобождая полезное пространство для системного блока и ног. \r\n        Справа основанием служит удобная и вместительная тумба. Плавные линии, стильный дизайн и высокая эргономичность являются \r\n        основными достоинствами данной серии.</p>\r\n      ', 'html', 34, '        \r\n        <p>Этот стильный стол абсолютно не симметричен, и это придает ему изящность и оригинальность. \r\n        Слева он опирается на ножку, освобождая полезное пространство для системного блока и ног. \r\n        Справа основанием служит удобная и вместительная тумба. Плавные линии, стильный дизайн и высокая эргономичность являются \r\n        основными достоинствами данной серии.</p>\r\n        \r\n      ', 'html', 'ЛИДЕР\r\nЭТОТ СТИЛЬНЫЙ СТОЛ АБСОЛЮТНО НЕ СИММЕТРИЧЕН, \r\nИ ЭТО ПРИДАЕТ ЕМУ ИЗЯЩНОСТЬ И ОРИГИНАЛЬНОСТЬ. СЛЕВА ОН ОПИРАЕТСЯ НА НОЖКУ, ОСВОБОЖДАЯ ПОЛЕЗНОЕ ПРОСТРАНСТВО ДЛЯ СИСТЕМНОГО БЛОКА И НОГ. СПРАВА ОСНОВАНИЕМ СЛУЖИТ УДОБНАЯ И ВМЕСТИТЕЛЬНАЯ ТУМБА. ПЛАВНЫЕ ЛИНИИ, СТИЛЬНЫЙ ДИЗАЙН И ВЫСОКАЯ ЭРГОНОМИЧНОСТЬ ЯВЛЯЮТСЯ ОСНОВНЫМИ ДОСТОИНСТВАМИ ДАННОЙ СЕРИИ.\r\nЭТОТ СТИЛЬНЫЙ СТОЛ АБСОЛЮТНО НЕ СИММЕТРИЧЕН, \r\nИ ЭТО ПРИДАЕТ ЕМУ ИЗЯЩНОСТЬ И ОРИГИНАЛЬНОСТЬ. СЛЕВА ОН ОПИРАЕТСЯ НА НОЖКУ, ОСВОБОЖДАЯ ПОЛЕЗНОЕ ПРОСТРАНСТВО ДЛЯ СИСТЕМНОГО БЛОКА И НОГ. СПРАВА ОСНОВАНИЕМ СЛУЖИТ УДОБНАЯ И ВМЕСТИТЕЛЬНАЯ ТУМБА. ПЛАВНЫЕ ЛИНИИ, СТИЛЬНЫЙ ДИЗАЙН И ВЫСОКАЯ ЭРГОНОМИЧНОСТЬ ЯВЛЯЮТСЯ ОСНОВНЫМИ ДОСТОИНСТВАМИ ДАННОЙ СЕРИИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '24', '', '', '-1927682590', NULL, NULL, NULL),
(19, '2018-02-26 11:45:01', 1, '2018-02-26 11:44:59', 1, 2, 2, 'Y', NULL, NULL, 500, 'Президент', 35, '        <p><b>Кресло руководителя Президент</b> во главе большого круглого стола поможет создать в вашем кабинете\r\n        обстановку легендарной совещательной комнаты. Ведь это не просто мебель офисная – это настоящий трон, который \r\n        поможет управленцу решать любые вопросы, согласуясь с понятиями чести и совести.</p> \r\n      ', 'html', 36, '        \r\n        <p><b>Кресло руководителя Президент</b> во главе большого круглого стола поможет создать в вашем кабинете\r\n        обстановку легендарной совещательной комнаты. Ведь это не просто мебель офисная – это настоящий трон, который \r\n        поможет управленцу решать любые вопросы, согласуясь с понятиями чести и совести. \r\n        Дизайн кресла выполнен в строгом классическом стиле. Окантовка и подлокотники кресла выточена вручную и потому уникальны. \r\n        Производится ограниченными партиями - не более 10 кресел в год.</p>\r\n        \r\n      ', 'html', 'ПРЕЗИДЕНТ\r\nКРЕСЛО РУКОВОДИТЕЛЯ ПРЕЗИДЕНТ ВО ГЛАВЕ \r\nБОЛЬШОГО КРУГЛОГО СТОЛА ПОМОЖЕТ СОЗДАТЬ В ВАШЕМ КАБИНЕТЕ ОБСТАНОВКУ ЛЕГЕНДАРНОЙ СОВЕЩАТЕЛЬНОЙ КОМНАТЫ. ВЕДЬ ЭТО НЕ ПРОСТО МЕБЕЛЬ ОФИСНАЯ – ЭТО НАСТОЯЩИЙ ТРОН, КОТОРЫЙ ПОМОЖЕТ УПРАВЛЕНЦУ РЕШАТЬ ЛЮБЫЕ ВОПРОСЫ, СОГЛАСУЯСЬ С ПОНЯТИЯМИ ЧЕСТИ И СОВЕСТИ.\r\nКРЕСЛО РУКОВОДИТЕЛЯ ПРЕЗИДЕНТ ВО ГЛАВЕ \r\nБОЛЬШОГО КРУГЛОГО СТОЛА ПОМОЖЕТ СОЗДАТЬ В ВАШЕМ КАБИНЕТЕ ОБСТАНОВКУ ЛЕГЕНДАРНОЙ СОВЕЩАТЕЛЬНОЙ КОМНАТЫ. ВЕДЬ ЭТО НЕ ПРОСТО МЕБЕЛЬ ОФИСНАЯ – ЭТО НАСТОЯЩИЙ ТРОН, КОТОРЫЙ ПОМОЖЕТ УПРАВЛЕНЦУ РЕШАТЬ ЛЮБЫЕ ВОПРОСЫ, СОГЛАСУЯСЬ С ПОНЯТИЯМИ ЧЕСТИ И СОВЕСТИ. ДИЗАЙН КРЕСЛА ВЫПОЛНЕН В СТРОГОМ КЛАССИЧЕСКОМ СТИЛЕ. ОКАНТОВКА И ПОДЛОКОТНИКИ КРЕСЛА ВЫТОЧЕНА ВРУЧНУЮ И ПОТОМУ УНИКАЛЬНЫ. ПРОИЗВОДИТСЯ ОГРАНИЧЕННЫМИ ПАРТИЯМИ - НЕ БОЛЕЕ 10 КРЕСЕЛ В ГОД.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '25', '', '', '-1836002422', NULL, NULL, NULL),
(20, '2018-02-26 11:45:03', 1, '2018-02-26 11:45:01', 1, 2, 2, 'Y', NULL, NULL, 500, 'Плутон', 37, '        <p>Офисное кресло, подобранное с учетом ваших физиологических особенностей - важная составляющая работоспособности и здоровья. \r\n        Данная модель будет незаменима для тех, кто много работает за компьютером.</p>\r\n      ', 'html', 38, '        \r\n        <p>Офисное кресло, подобранное с учетом ваших физиологических особенностей - важная составляющая работоспособности и здоровья. \r\n        Данная модель будет незаменима для тех, кто много работает за компьютером.</p>\r\n        \r\n      ', 'html', 'ПЛУТОН\r\nОФИСНОЕ КРЕСЛО, ПОДОБРАННОЕ С УЧЕТОМ ВАШИХ \r\nФИЗИОЛОГИЧЕСКИХ ОСОБЕННОСТЕЙ - ВАЖНАЯ СОСТАВЛЯЮЩАЯ РАБОТОСПОСОБНОСТИ И ЗДОРОВЬЯ. ДАННАЯ МОДЕЛЬ БУДЕТ НЕЗАМЕНИМА ДЛЯ ТЕХ, КТО МНОГО РАБОТАЕТ ЗА КОМПЬЮТЕРОМ.\r\nОФИСНОЕ КРЕСЛО, ПОДОБРАННОЕ С УЧЕТОМ ВАШИХ \r\nФИЗИОЛОГИЧЕСКИХ ОСОБЕННОСТЕЙ - ВАЖНАЯ СОСТАВЛЯЮЩАЯ РАБОТОСПОСОБНОСТИ И ЗДОРОВЬЯ. ДАННАЯ МОДЕЛЬ БУДЕТ НЕЗАМЕНИМА ДЛЯ ТЕХ, КТО МНОГО РАБОТАЕТ ЗА КОМПЬЮТЕРОМ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '26', '', '', '1990779533', NULL, NULL, NULL),
(21, '2018-02-26 11:45:04', 1, '2018-02-26 11:45:03', 1, 2, 3, 'Y', NULL, NULL, 500, 'Парма', 39, '        <p>Стулья Парма внесут в кухню уютное обаяние экологически чистого древесного материала. \r\n        Стул практически целиком сделан из массива бука, исключением стало лишь мягкое сиденье. \r\n        Тонировка деревянных деталей может быть выполнена в любой цветовой палитре.</p>\r\n      ', 'html', 40, '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;p&gt;Стулья Парма внесут в кухню уютное обаяние экологически чистого древесного материала. <br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Стул практически целиком сделан из массива бука, исключением стало лишь мягкое сиденье. <br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Тонировка деревянных деталей может быть выполнена в любой цветовой палитре.&lt;/p&gt;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;', 'html', 'ПАРМА\r\nСТУЛЬЯ ПАРМА ВНЕСУТ В КУХНЮ УЮТНОЕ ОБАЯНИЕ \r\nЭКОЛОГИЧЕСКИ ЧИСТОГО ДРЕВЕСНОГО МАТЕРИАЛА. СТУЛ ПРАКТИЧЕСКИ ЦЕЛИКОМ СДЕЛАН ИЗ МАССИВА БУКА, ИСКЛЮЧЕНИЕМ СТАЛО ЛИШЬ МЯГКОЕ СИДЕНЬЕ. ТОНИРОВКА ДЕРЕВЯННЫХ ДЕТАЛЕЙ МОЖЕТ БЫТЬ ВЫПОЛНЕНА В ЛЮБОЙ ЦВЕТОВОЙ ПАЛИТРЕ.\r\n&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;\r\n&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&LT;P&GT;СТУЛЬЯ ПАРМА \r\nВНЕСУТ В КУХНЮ УЮТНОЕ ОБАЯНИЕ ЭКОЛОГИЧЕСКИ ЧИСТОГО ДРЕВЕСНОГО МАТЕРИАЛА. \r\n&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;СТУЛ ПРАКТИЧЕСКИ \r\nЦЕЛИКОМ СДЕЛАН ИЗ МАССИВА БУКА, ИСКЛЮЧЕНИЕМ СТАЛО ЛИШЬ МЯГКОЕ СИДЕНЬЕ. \r\n&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;ТОНИРОВКА ДЕРЕВЯННЫХ \r\nДЕТАЛЕЙ МОЖЕТ БЫТЬ ВЫПОЛНЕНА В ЛЮБОЙ ЦВЕТОВОЙ ПАЛИТРЕ.&LT;/P&GT;\r\n&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;\r\n&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;&NBSP;', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '27', '', '', '964589627', NULL, NULL, NULL),
(22, '2018-02-26 11:45:06', 1, '2018-02-26 11:45:05', 1, 2, 3, 'Y', NULL, NULL, 500, 'Палермо', 41, '        <p>Универсальный дизайн стульев Палермо позволит с успехом использовать их и в офисных помещениях, \r\n        и в интерьере кафе, и в домашней обстановке. Стулья Палермо добавят уюта в каждое помещение и \r\n        органично сольются с его стилем.</p>\r\n      ', 'html', 42, '        \r\n        <p>Универсальный дизайн стульев Палермо позволит с успехом использовать их и в офисных помещениях, \r\n        и в интерьере кафе, и в домашней обстановке. Стулья Палермо добавят уюта в каждое помещение и \r\n        органично сольются с его стилем.</p>\r\n        \r\n      ', 'html', 'ПАЛЕРМО\r\nУНИВЕРСАЛЬНЫЙ ДИЗАЙН СТУЛЬЕВ ПАЛЕРМО ПОЗВОЛИТ \r\nС УСПЕХОМ ИСПОЛЬЗОВАТЬ ИХ И В ОФИСНЫХ ПОМЕЩЕНИЯХ, И В ИНТЕРЬЕРЕ КАФЕ, И В ДОМАШНЕЙ ОБСТАНОВКЕ. СТУЛЬЯ ПАЛЕРМО ДОБАВЯТ УЮТА В КАЖДОЕ ПОМЕЩЕНИЕ И ОРГАНИЧНО СОЛЬЮТСЯ С ЕГО СТИЛЕМ.\r\nУНИВЕРСАЛЬНЫЙ ДИЗАЙН СТУЛЬЕВ ПАЛЕРМО ПОЗВОЛИТ \r\nС УСПЕХОМ ИСПОЛЬЗОВАТЬ ИХ И В ОФИСНЫХ ПОМЕЩЕНИЯХ, И В ИНТЕРЬЕРЕ КАФЕ, И В ДОМАШНЕЙ ОБСТАНОВКЕ. СТУЛЬЯ ПАЛЕРМО ДОБАВЯТ УЮТА В КАЖДОЕ ПОМЕЩЕНИЕ И ОРГАНИЧНО СОЛЬЮТСЯ С ЕГО СТИЛЕМ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '28', '', '', '-1151185156', NULL, NULL, NULL),
(23, '2018-02-26 11:45:07', 1, '2018-02-26 11:45:06', 1, 2, 3, 'Y', NULL, NULL, 500, 'Валенсия', 43, '        <p>Стильный дизайн стульев Валенсия сразу привлекает внимание, а эргономичная форма спинки и \r\n        мягкое сиденье делают их необычайно удобными. Эти стулья хорошо подойдут к любой офисной мебели для \r\n        персонала.</p>\r\n      ', 'html', 44, '        \r\n        <p>Стильный дизайн стульев Валенсия сразу привлекает внимание, а эргономичная форма спинки и \r\n        мягкое сиденье делают их необычайно удобными. Эти стулья хорошо подойдут к любой офисной мебели для \r\n        персонала.</p>\r\n        \r\n      ', 'html', 'ВАЛЕНСИЯ\r\nСТИЛЬНЫЙ ДИЗАЙН СТУЛЬЕВ ВАЛЕНСИЯ СРАЗУ \r\nПРИВЛЕКАЕТ ВНИМАНИЕ, А ЭРГОНОМИЧНАЯ ФОРМА СПИНКИ И МЯГКОЕ СИДЕНЬЕ ДЕЛАЮТ ИХ НЕОБЫЧАЙНО УДОБНЫМИ. ЭТИ СТУЛЬЯ ХОРОШО ПОДОЙДУТ К ЛЮБОЙ ОФИСНОЙ МЕБЕЛИ ДЛЯ ПЕРСОНАЛА.\r\nСТИЛЬНЫЙ ДИЗАЙН СТУЛЬЕВ ВАЛЕНСИЯ СРАЗУ \r\nПРИВЛЕКАЕТ ВНИМАНИЕ, А ЭРГОНОМИЧНАЯ ФОРМА СПИНКИ И МЯГКОЕ СИДЕНЬЕ ДЕЛАЮТ ИХ НЕОБЫЧАЙНО УДОБНЫМИ. ЭТИ СТУЛЬЯ ХОРОШО ПОДОЙДУТ К ЛЮБОЙ ОФИСНОЙ МЕБЕЛИ ДЛЯ ПЕРСОНАЛА.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '29', '', '', '589017098', NULL, NULL, NULL),
(24, '2018-02-26 11:45:09', 1, '2018-02-26 11:45:07', 1, 2, 4, 'Y', NULL, NULL, 500, 'Фазенда', 45, '        <p>Складной деревянный стул с сиденьем и спинкой из плотного хлопка, изготовленный из натуральных природных материалов. \r\n        Ткань и дерево считаются теплыми материалами - даже зимой сидеть на них комфортнее, чем на железе или пластике. Это прекрасное решение для дачи.</p>\r\n      ', 'html', 46, '        \r\n        <p>Складной деревянный стул с сиденьем и спинкой из плотного хлопка, изготовленный из натуральных природных материалов. \r\n        Ткань и дерево считаются теплыми материалами - даже зимой сидеть на них комфортнее, чем на железе или пластике. Это прекрасное решение для дачи.</p>\r\n        \r\n      ', 'html', 'ФАЗЕНДА\r\nСКЛАДНОЙ ДЕРЕВЯННЫЙ СТУЛ С СИДЕНЬЕМ И СПИНКОЙ \r\nИЗ ПЛОТНОГО ХЛОПКА, ИЗГОТОВЛЕННЫЙ ИЗ НАТУРАЛЬНЫХ ПРИРОДНЫХ МАТЕРИАЛОВ. ТКАНЬ И ДЕРЕВО СЧИТАЮТСЯ ТЕПЛЫМИ МАТЕРИАЛАМИ - ДАЖЕ ЗИМОЙ СИДЕТЬ НА НИХ КОМФОРТНЕЕ, ЧЕМ НА ЖЕЛЕЗЕ ИЛИ ПЛАСТИКЕ. ЭТО ПРЕКРАСНОЕ РЕШЕНИЕ ДЛЯ ДАЧИ.\r\nСКЛАДНОЙ ДЕРЕВЯННЫЙ СТУЛ С СИДЕНЬЕМ И СПИНКОЙ \r\nИЗ ПЛОТНОГО ХЛОПКА, ИЗГОТОВЛЕННЫЙ ИЗ НАТУРАЛЬНЫХ ПРИРОДНЫХ МАТЕРИАЛОВ. ТКАНЬ И ДЕРЕВО СЧИТАЮТСЯ ТЕПЛЫМИ МАТЕРИАЛАМИ - ДАЖЕ ЗИМОЙ СИДЕТЬ НА НИХ КОМФОРТНЕЕ, ЧЕМ НА ЖЕЛЕЗЕ ИЛИ ПЛАСТИКЕ. ЭТО ПРЕКРАСНОЕ РЕШЕНИЕ ДЛЯ ДАЧИ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '30', '', '', '-1288812514', NULL, NULL, NULL),
(25, '2018-02-26 11:45:11', 1, '2018-02-26 11:45:09', 1, 2, 4, 'Y', NULL, NULL, 500, 'Эра', 47, '        <p>Стильный стул необычный формы с жесткими сиденьями на металлическом каркасе удобен тем, \r\n        что можно компактно сложить для хранения до 45 таких стульев. Легкая и прочная модель отлично подойдет \r\n        к компьютерной стойке, также ее можно использовать как мебель для кафе и баров.</p>\r\n      ', 'html', 48, '        \r\n        <p>Стильный стул необычный формы с жесткими сиденьями на металлическом каркасе удобен тем, \r\n        что можно компактно сложить для хранения до 45 таких стульев. Легкая и прочная модель отлично подойдет \r\n        к компьютерной стойке, также ее можно использовать как мебель для кафе и баров.</p>\r\n        \r\n      ', 'html', 'ЭРА\r\nСТИЛЬНЫЙ СТУЛ НЕОБЫЧНЫЙ ФОРМЫ С ЖЕСТКИМИ \r\nСИДЕНЬЯМИ НА МЕТАЛЛИЧЕСКОМ КАРКАСЕ УДОБЕН ТЕМ, ЧТО МОЖНО КОМПАКТНО СЛОЖИТЬ ДЛЯ ХРАНЕНИЯ ДО 45 ТАКИХ СТУЛЬЕВ. ЛЕГКАЯ И ПРОЧНАЯ МОДЕЛЬ ОТЛИЧНО ПОДОЙДЕТ К КОМПЬЮТЕРНОЙ СТОЙКЕ, ТАКЖЕ ЕЕ МОЖНО ИСПОЛЬЗОВАТЬ КАК МЕБЕЛЬ ДЛЯ КАФЕ И БАРОВ.\r\nСТИЛЬНЫЙ СТУЛ НЕОБЫЧНЫЙ ФОРМЫ С ЖЕСТКИМИ \r\nСИДЕНЬЯМИ НА МЕТАЛЛИЧЕСКОМ КАРКАСЕ УДОБЕН ТЕМ, ЧТО МОЖНО КОМПАКТНО СЛОЖИТЬ ДЛЯ ХРАНЕНИЯ ДО 45 ТАКИХ СТУЛЬЕВ. ЛЕГКАЯ И ПРОЧНАЯ МОДЕЛЬ ОТЛИЧНО ПОДОЙДЕТ К КОМПЬЮТЕРНОЙ СТОЙКЕ, ТАКЖЕ ЕЕ МОЖНО ИСПОЛЬЗОВАТЬ КАК МЕБЕЛЬ ДЛЯ КАФЕ И БАРОВ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '31', '', '', '858154825', NULL, NULL, NULL),
(26, '2018-02-26 11:45:12', 1, '2018-02-26 11:45:11', 1, 2, 4, 'Y', NULL, NULL, 500, 'Сити', 49, '        <p>Стильный, легкий и удобный стул на хромированном основании сразу привлекает внимание \r\n        своей необычной формой. А разнообразные варианты обивки позволяют подобрать наилучшее сочетание с \r\n        любой компьютерной мебелью.</p>\r\n      ', 'html', 50, '        \r\n        <p>Стильный, легкий и удобный стул на хромированном основании сразу привлекает внимание \r\n        своей необычной формой. А разнообразные варианты обивки позволяют подобрать наилучшее сочетание с \r\n        любой компьютерной мебелью.</p>\r\n        \r\n      ', 'html', 'СИТИ\r\nСТИЛЬНЫЙ, ЛЕГКИЙ И УДОБНЫЙ СТУЛ НА ХРОМИРОВАННОМ \r\nОСНОВАНИИ СРАЗУ ПРИВЛЕКАЕТ ВНИМАНИЕ СВОЕЙ НЕОБЫЧНОЙ ФОРМОЙ. А РАЗНООБРАЗНЫЕ ВАРИАНТЫ ОБИВКИ ПОЗВОЛЯЮТ ПОДОБРАТЬ НАИЛУЧШЕЕ СОЧЕТАНИЕ С ЛЮБОЙ КОМПЬЮТЕРНОЙ МЕБЕЛЬЮ.\r\nСТИЛЬНЫЙ, ЛЕГКИЙ И УДОБНЫЙ СТУЛ НА ХРОМИРОВАННОМ \r\nОСНОВАНИИ СРАЗУ ПРИВЛЕКАЕТ ВНИМАНИЕ СВОЕЙ НЕОБЫЧНОЙ ФОРМОЙ. А РАЗНООБРАЗНЫЕ ВАРИАНТЫ ОБИВКИ ПОЗВОЛЯЮТ ПОДОБРАТЬ НАИЛУЧШЕЕ СОЧЕТАНИЕ С ЛЮБОЙ КОМПЬЮТЕРНОЙ МЕБЕЛЬЮ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '32', '', '', '-252178488', NULL, NULL, NULL),
(27, '2018-02-26 11:45:13', 1, '2018-02-26 11:45:12', 1, 2, 4, 'Y', NULL, NULL, 500, 'Изопласт Хром', 51, '        <p>Популярная модель офисного стула на хромированном металлическом каркасе с пластиковыми спинкой и \r\n        сиденьем хорошо вписывается в любой интерьер. Прочные и долговечные, эти стулья удобны для использования \r\n        в качестве аудиторных конференц-кресел, кроме того, их легко хранить.</p>\r\n      ', 'html', 52, '        \r\n        <p>Популярная модель офисного стула на хромированном металлическом каркасе с пластиковыми спинкой и \r\n        сиденьем хорошо вписывается в любой интерьер. Прочные и долговечные, эти стулья удобны для использования \r\n        в качестве аудиторных конференц-кресел, кроме того, их легко хранить.</p>\r\n        \r\n      ', 'html', 'ИЗОПЛАСТ ХРОМ\r\nПОПУЛЯРНАЯ МОДЕЛЬ ОФИСНОГО СТУЛА НА ХРОМИРОВАННОМ \r\nМЕТАЛЛИЧЕСКОМ КАРКАСЕ С ПЛАСТИКОВЫМИ СПИНКОЙ И СИДЕНЬЕМ ХОРОШО ВПИСЫВАЕТСЯ В ЛЮБОЙ ИНТЕРЬЕР. ПРОЧНЫЕ И ДОЛГОВЕЧНЫЕ, ЭТИ СТУЛЬЯ УДОБНЫ ДЛЯ ИСПОЛЬЗОВАНИЯ В КАЧЕСТВЕ АУДИТОРНЫХ КОНФЕРЕНЦ-КРЕСЕЛ, КРОМЕ ТОГО, ИХ ЛЕГКО ХРАНИТЬ.\r\nПОПУЛЯРНАЯ МОДЕЛЬ ОФИСНОГО СТУЛА НА ХРОМИРОВАННОМ \r\nМЕТАЛЛИЧЕСКОМ КАРКАСЕ С ПЛАСТИКОВЫМИ СПИНКОЙ И СИДЕНЬЕМ ХОРОШО ВПИСЫВАЕТСЯ В ЛЮБОЙ ИНТЕРЬЕР. ПРОЧНЫЕ И ДОЛГОВЕЧНЫЕ, ЭТИ СТУЛЬЯ УДОБНЫ ДЛЯ ИСПОЛЬЗОВАНИЯ В КАЧЕСТВЕ АУДИТОРНЫХ КОНФЕРЕНЦ-КРЕСЕЛ, КРОМЕ ТОГО, ИХ ЛЕГКО ХРАНИТЬ.', 1, NULL, NULL, NULL, NULL, NULL, 'Y', '33', '', '', '2001037389', NULL, NULL, NULL),
(28, '2018-02-26 11:45:30', 1, '2018-02-26 11:45:28', 1, 3, NULL, 'Y', NULL, NULL, 500, 'Мебель на заказ', 53, 'Наша компания занимается разработкой мебели на заказ.', 'html', NULL, '        <p>Наша компания занимается разработкой мебели на заказ по индивидуальным проектам: встроенные и корпусные шкафы купе,\r\n        гардеробные комнаты, прихожие, библиотеки, платяные шкафы, комоды и другие сложные конструкции.</p>\r\n        <p>Мы создаем мебель идеально подходящую именно к вашему дому и офису, интерьеры, максимально отображающие вашу индивидуальность.\r\n        По Вашей заявке наш специалист приезжает со всеми образцами материалов, с которыми мы работаем, в любое удобное для Вас время и\r\n        произведет все необходимые замеры. Учитывая все Ваши пожелания и особенности помещения, составляется эскизный проект.</p>\r\n        <p>После заключения договора, в котором оговариваются сроки доставки и монтажа мебели, эскизный проект передается на производство,\r\n        где опытными специалистами производятся расчеты в программе трехмерного моделирования. После всех расчетов готовый проект поступает\r\n        непосредственно на производство, где производят раскрой деталей, их обработку, и сборку некоторых элементов. Накануне дня доставки\r\n        сотрудники отдела транспортных услуг свяжутся с Вами и более конкретно оговорят время доставки. После заключения договора вами\r\n        вносится предоплата в размере 30% от суммы заказанной Вами мебели. Остальная сумма оплачивается Вами по доставке.</p>\r\n        \r\n      ', 'html', 'МЕБЕЛЬ НА ЗАКАЗ\r\nНАША КОМПАНИЯ ЗАНИМАЕТСЯ РАЗРАБОТКОЙ МЕБЕЛИ \r\nНА ЗАКАЗ.\r\nНАША КОМПАНИЯ ЗАНИМАЕТСЯ РАЗРАБОТКОЙ МЕБЕЛИ \r\nНА ЗАКАЗ ПО ИНДИВИДУАЛЬНЫМ ПРОЕКТАМ: ВСТРОЕННЫЕ И КОРПУСНЫЕ ШКАФЫ КУПЕ, ГАРДЕРОБНЫЕ КОМНАТЫ, ПРИХОЖИЕ, БИБЛИОТЕКИ, ПЛАТЯНЫЕ ШКАФЫ, КОМОДЫ И ДРУГИЕ СЛОЖНЫЕ КОНСТРУКЦИИ. \r\n\r\nМЫ СОЗДАЕМ МЕБЕЛЬ ИДЕАЛЬНО ПОДХОДЯЩУЮ \r\nИМЕННО К ВАШЕМУ ДОМУ И ОФИСУ, ИНТЕРЬЕРЫ, МАКСИМАЛЬНО ОТОБРАЖАЮЩИЕ ВАШУ ИНДИВИДУАЛЬНОСТЬ. ПО ВАШЕЙ ЗАЯВКЕ НАШ СПЕЦИАЛИСТ ПРИЕЗЖАЕТ СО ВСЕМИ ОБРАЗЦАМИ МАТЕРИАЛОВ, С КОТОРЫМИ МЫ РАБОТАЕМ, В ЛЮБОЕ УДОБНОЕ ДЛЯ ВАС ВРЕМЯ И ПРОИЗВЕДЕТ ВСЕ НЕОБХОДИМЫЕ ЗАМЕРЫ. УЧИТЫВАЯ ВСЕ ВАШИ ПОЖЕЛАНИЯ И ОСОБЕННОСТИ ПОМЕЩЕНИЯ, СОСТАВЛЯЕТСЯ ЭСКИЗНЫЙ ПРОЕКТ. \r\n\r\nПОСЛЕ ЗАКЛЮЧЕНИЯ ДОГОВОРА, В КОТОРОМ ОГОВАРИВАЮТСЯ \r\nСРОКИ ДОСТАВКИ И МОНТАЖА МЕБЕЛИ, ЭСКИЗНЫЙ ПРОЕКТ ПЕРЕДАЕТСЯ НА ПРОИЗВОДСТВО, ГДЕ ОПЫТНЫМИ СПЕЦИАЛИСТАМИ ПРОИЗВОДЯТСЯ РАСЧЕТЫ В ПРОГРАММЕ ТРЕХМЕРНОГО МОДЕЛИРОВАНИЯ. ПОСЛЕ ВСЕХ РАСЧЕТОВ ГОТОВЫЙ ПРОЕКТ ПОСТУПАЕТ НЕПОСРЕДСТВЕННО НА ПРОИЗВОДСТВО, ГДЕ ПРОИЗВОДЯТ РАСКРОЙ ДЕТАЛЕЙ, ИХ ОБРАБОТКУ, И СБОРКУ НЕКОТОРЫХ ЭЛЕМЕНТОВ. НАКАНУНЕ ДНЯ ДОСТАВКИ СОТРУДНИКИ ОТДЕЛА ТРАНСПОРТНЫХ УСЛУГ СВЯЖУТСЯ С ВАМИ И БОЛЕЕ КОНКРЕТНО ОГОВОРЯТ ВРЕМЯ ДОСТАВКИ. ПОСЛЕ ЗАКЛЮЧЕНИЯ ДОГОВОРА ВАМИ ВНОСИТСЯ ПРЕДОПЛАТА В РАЗМЕРЕ 30% ОТ СУММЫ ЗАКАЗАННОЙ ВАМИ МЕБЕЛИ. ОСТАЛЬНАЯ СУММА ОПЛАЧИВАЕТСЯ ВАМИ ПО ДОСТАВКЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '5', '', '', '841280321', NULL, NULL, NULL);
INSERT INTO `b_iblock_element` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `ACTIVE_FROM`, `ACTIVE_TO`, `SORT`, `NAME`, `PREVIEW_PICTURE`, `PREVIEW_TEXT`, `PREVIEW_TEXT_TYPE`, `DETAIL_PICTURE`, `DETAIL_TEXT`, `DETAIL_TEXT_TYPE`, `SEARCHABLE_CONTENT`, `WF_STATUS_ID`, `WF_PARENT_ELEMENT_ID`, `WF_NEW`, `WF_LOCKED_BY`, `WF_DATE_LOCK`, `WF_COMMENTS`, `IN_SECTIONS`, `XML_ID`, `CODE`, `TAGS`, `TMP_ID`, `WF_LAST_HISTORY_ID`, `SHOW_COUNTER`, `SHOW_COUNTER_START`) VALUES
(29, '2018-02-26 11:45:33', 1, '2018-02-26 11:45:31', 1, 3, NULL, 'Y', NULL, NULL, 500, 'Услуги дизайнера', 54, 'Мы предлагаем широкий спектр услуг по дизайну мебели.', 'html', NULL, '        \r\n        <ul>\r\n          <li>Диагностика возможностей преобразования помещений – определение вариантов перепланировки, отделки, разработка новых решений колористки, освещения, перестановки мебели и декора, разработка специальных функциональных зон для переключения в различные режимы жизни.</li>\r\n          <li>Разработка Идеи-Образа, проведение предварительных расчётов и создание 3D-модели: изображение передает цвет и фактуру, предлагая клиенту экспериментировать и подбирать оптимальный вариант.</li>\r\n          <li>Разработка компьютерных цветных трехмерных моделей мебели. Натуралистичность изображений, их высокая схожесть с оригиналом позволяют представить, как будет выглядеть готовое изделие,  рассмотреть его в деталях.</li>\r\n          <li>Подбор и расстановка мебели.</li>\r\n          <li>Декорирование - подбор декора и аксессуаров интерьера в соответствии с образом и стилем помещения. Возможно создание по индивидуальному запросу эксклюзивных, авторских коллекций.</li>\r\n        </ul>\r\n        \r\n      ', 'html', 'УСЛУГИ ДИЗАЙНЕРА\r\nМЫ ПРЕДЛАГАЕМ ШИРОКИЙ СПЕКТР УСЛУГ ПО ДИЗАЙНУ \r\nМЕБЕЛИ.\r\n- ДИАГНОСТИКА ВОЗМОЖНОСТЕЙ ПРЕОБРАЗОВАНИЯ \r\nПОМЕЩЕНИЙ – ОПРЕДЕЛЕНИЕ ВАРИАНТОВ ПЕРЕПЛАНИРОВКИ, ОТДЕЛКИ, РАЗРАБОТКА НОВЫХ РЕШЕНИЙ КОЛОРИСТКИ, ОСВЕЩЕНИЯ, ПЕРЕСТАНОВКИ МЕБЕЛИ И ДЕКОРА, РАЗРАБОТКА СПЕЦИАЛЬНЫХ ФУНКЦИОНАЛЬНЫХ ЗОН ДЛЯ ПЕРЕКЛЮЧЕНИЯ В РАЗЛИЧНЫЕ РЕЖИМЫ ЖИЗНИ. \r\n- РАЗРАБОТКА ИДЕИ-ОБРАЗА, ПРОВЕДЕНИЕ ПРЕДВАРИТЕЛЬНЫХ \r\nРАСЧЁТОВ И СОЗДАНИЕ 3D-МОДЕЛИ: ИЗОБРАЖЕНИЕ ПЕРЕДАЕТ ЦВЕТ И ФАКТУРУ, ПРЕДЛАГАЯ КЛИЕНТУ ЭКСПЕРИМЕНТИРОВАТЬ И ПОДБИРАТЬ ОПТИМАЛЬНЫЙ ВАРИАНТ. \r\n- РАЗРАБОТКА КОМПЬЮТЕРНЫХ ЦВЕТНЫХ ТРЕХМЕРНЫХ \r\nМОДЕЛЕЙ МЕБЕЛИ. НАТУРАЛИСТИЧНОСТЬ ИЗОБРАЖЕНИЙ, ИХ ВЫСОКАЯ СХОЖЕСТЬ С ОРИГИНАЛОМ ПОЗВОЛЯЮТ ПРЕДСТАВИТЬ, КАК БУДЕТ ВЫГЛЯДЕТЬ ГОТОВОЕ ИЗДЕЛИЕ, РАССМОТРЕТЬ ЕГО В ДЕТАЛЯХ. \r\n- ПОДБОР И РАССТАНОВКА МЕБЕЛИ. \r\n- ДЕКОРИРОВАНИЕ - ПОДБОР ДЕКОРА И АКСЕССУАРОВ \r\nИНТЕРЬЕРА В СООТВЕТСТВИИ С ОБРАЗОМ И СТИЛЕМ ПОМЕЩЕНИЯ. ВОЗМОЖНО СОЗДАНИЕ ПО ИНДИВИДУАЛЬНОМУ ЗАПРОСУ ЭКСКЛЮЗИВНЫХ, АВТОРСКИХ КОЛЛЕКЦИЙ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '6', '', '', '-1080381355', NULL, NULL, NULL),
(30, '2018-02-26 11:45:50', 1, '2018-02-26 11:45:49', 1, 4, NULL, 'Y', '2010-05-01 00:00:00', NULL, 200, 'Продавец-дизайнер (кухни)', NULL, '', 'html', NULL, '<b>Требования</b> 						 						 \r\n<p>Уверенный пользователь ПК, навыки черчения от руки и в программах, опыт работы дизайнером/конструктором в мебельной сфере, этика делового общения</p>\r\n 						 						<b>Обязанности</b> 						 \r\n<p>Консультирование клиентов по кухонной мебели, оставление художественно-конструкторских проектов, прием и оформление заказов.</p>\r\n 						 						<b>Условия</b> 						 \r\n<p>Зарплата: 13500 оклад + % от личных продаж + премии‚ совокупный доход от 20000 руб,полный соц. пакет‚ оформление согласно ТК РФ</p>\r\n ', 'html', 'ПРОДАВЕЦ-ДИЗАЙНЕР (КУХНИ)\r\n\r\nТРЕБОВАНИЯ \r\n\r\nУВЕРЕННЫЙ ПОЛЬЗОВАТЕЛЬ ПК, НАВЫКИ ЧЕРЧЕНИЯ \r\nОТ РУКИ И В ПРОГРАММАХ, ОПЫТ РАБОТЫ ДИЗАЙНЕРОМ/КОНСТРУКТОРОМ В МЕБЕЛЬНОЙ СФЕРЕ, ЭТИКА ДЕЛОВОГО ОБЩЕНИЯ ОБЯЗАННОСТИ \r\n\r\nКОНСУЛЬТИРОВАНИЕ КЛИЕНТОВ ПО КУХОННОЙ \r\nМЕБЕЛИ, ОСТАВЛЕНИЕ ХУДОЖЕСТВЕННО-КОНСТРУКТОРСКИХ ПРОЕКТОВ, ПРИЕМ И ОФОРМЛЕНИЕ ЗАКАЗОВ. УСЛОВИЯ \r\n\r\nЗАРПЛАТА: 13500 ОКЛАД + % ОТ ЛИЧНЫХ ПРОДАЖ + \r\nПРЕМИИ‚ СОВОКУПНЫЙ ДОХОД ОТ 20000 РУБ,ПОЛНЫЙ СОЦ. ПАКЕТ‚ ОФОРМЛЕНИЕ СОГЛАСНО ТК РФ', 1, NULL, NULL, NULL, NULL, NULL, 'N', '2', '', '', '1704140047', NULL, NULL, NULL),
(31, '2018-02-26 11:45:52', 1, '2018-02-26 11:45:51', 1, 4, NULL, 'Y', '2010-05-01 00:00:00', NULL, 300, 'Директор магазина', NULL, '', 'html', NULL, '<b>Требования</b> 						 						 \r\n<p>Высшее образование‚ опыт руководящей работы в рознице от 3 лет‚ опытный пользователь ПК‚ этика делового общения‚ знание методов управления и заключения договоров‚ отличное знание торгового и трудового законодательств‚ ответственность‚ инициативность‚ активность.</p>\r\n 						 						<b>Обязанности</b> 						 \r\n<p>Руководство деятельностью магазина‚ организация эффективной работы персонала магазина‚ финансово-хозяйственная деятельность и отчетность‚ выполнение плана продаж‚ отчетность.</p>\r\n 						 						<b>Условия</b> 						 \r\n<p>Трудоустройство по ТК РФ‚ полный соц. пакет‚ график работы 5 чере 2 (168 час/мес)‚ зарплата: оклад 28000 + % от оборота + премии‚ совокупный доход от 35000 руб</p>\r\n ', 'html', 'ДИРЕКТОР МАГАЗИНА\r\n\r\nТРЕБОВАНИЯ \r\n\r\nВЫСШЕЕ ОБРАЗОВАНИЕ‚ ОПЫТ РУКОВОДЯЩЕЙ \r\nРАБОТЫ В РОЗНИЦЕ ОТ 3 ЛЕТ‚ ОПЫТНЫЙ ПОЛЬЗОВАТЕЛЬ ПК‚ ЭТИКА ДЕЛОВОГО ОБЩЕНИЯ‚ ЗНАНИЕ МЕТОДОВ УПРАВЛЕНИЯ И ЗАКЛЮЧЕНИЯ ДОГОВОРОВ‚ ОТЛИЧНОЕ ЗНАНИЕ ТОРГОВОГО И ТРУДОВОГО ЗАКОНОДАТЕЛЬСТВ‚ ОТВЕТСТВЕННОСТЬ‚ ИНИЦИАТИВНОСТЬ‚ АКТИВНОСТЬ. ОБЯЗАННОСТИ \r\n\r\nРУКОВОДСТВО ДЕЯТЕЛЬНОСТЬЮ МАГАЗИНА‚ ОРГАНИЗАЦИЯ \r\nЭФФЕКТИВНОЙ РАБОТЫ ПЕРСОНАЛА МАГАЗИНА‚ ФИНАНСОВО-ХОЗЯЙСТВЕННАЯ ДЕЯТЕЛЬНОСТЬ И ОТЧЕТНОСТЬ‚ ВЫПОЛНЕНИЕ ПЛАНА ПРОДАЖ‚ ОТЧЕТНОСТЬ. УСЛОВИЯ \r\n\r\nТРУДОУСТРОЙСТВО ПО ТК РФ‚ ПОЛНЫЙ СОЦ. ПАКЕТ‚ \r\nГРАФИК РАБОТЫ 5 ЧЕРЕ 2 (168 ЧАС/МЕС)‚ ЗАРПЛАТА: ОКЛАД 28000 + % ОТ ОБОРОТА + ПРЕМИИ‚ СОВОКУПНЫЙ ДОХОД ОТ 35000 РУБ', 1, NULL, NULL, NULL, NULL, NULL, 'N', '3', '', '', '192768702', NULL, NULL, NULL),
(32, '2018-02-26 11:45:54', 1, '2018-02-26 11:45:53', 1, 4, NULL, 'Y', '2010-05-01 00:00:00', NULL, 400, 'Бухгалтер отдела учета готовой продукции', NULL, '', 'html', NULL, '<b>Требования</b> 						 						 \r\n<p>Жен., 22-45, уверенный пользователь ПК, опыт работы бухгалтером приветсвуется, знание бухгалтерского учета (базовый уровень), самостоятельность, ответственность, коммуникабельность, быстрая обучаемость, желание работать.</p>\r\n 						 						<b>Обязанности</b> 						 \r\n<p>Работа с первичными документами по учету МПЗ Ведение журналов-ордеров по производственным счетам Формирование материальных отчетов подразделений Исполнение дополнительных функций по указанию руководителя</p>\r\n 						 						<b>Условия</b> 						 \r\n<p>График работы 5 дней в неделю, адрес работы г. Шатура, Ботинский пр-д, 37. Зарплата: оклад 10 800 р. + премия 40% от оклада, полный соц. пакет.</p>\r\n ', 'html', 'БУХГАЛТЕР ОТДЕЛА УЧЕТА ГОТОВОЙ ПРОДУКЦИИ\r\n\r\nТРЕБОВАНИЯ \r\n\r\nЖЕН., 22-45, УВЕРЕННЫЙ ПОЛЬЗОВАТЕЛЬ ПК, ОПЫТ \r\nРАБОТЫ БУХГАЛТЕРОМ ПРИВЕТСВУЕТСЯ, ЗНАНИЕ БУХГАЛТЕРСКОГО УЧЕТА (БАЗОВЫЙ УРОВЕНЬ), САМОСТОЯТЕЛЬНОСТЬ, ОТВЕТСТВЕННОСТЬ, КОММУНИКАБЕЛЬНОСТЬ, БЫСТРАЯ ОБУЧАЕМОСТЬ, ЖЕЛАНИЕ РАБОТАТЬ. ОБЯЗАННОСТИ \r\n\r\nРАБОТА С ПЕРВИЧНЫМИ ДОКУМЕНТАМИ ПО УЧЕТУ \r\nМПЗ ВЕДЕНИЕ ЖУРНАЛОВ-ОРДЕРОВ ПО ПРОИЗВОДСТВЕННЫМ СЧЕТАМ ФОРМИРОВАНИЕ МАТЕРИАЛЬНЫХ ОТЧЕТОВ ПОДРАЗДЕЛЕНИЙ ИСПОЛНЕНИЕ ДОПОЛНИТЕЛЬНЫХ ФУНКЦИЙ ПО УКАЗАНИЮ РУКОВОДИТЕЛЯ УСЛОВИЯ \r\n\r\nГРАФИК РАБОТЫ 5 ДНЕЙ В НЕДЕЛЮ, АДРЕС РАБОТЫ \r\nГ. ШАТУРА, БОТИНСКИЙ ПР-Д, 37. ЗАРПЛАТА: ОКЛАД 10 800 Р. + ПРЕМИЯ 40% ОТ ОКЛАДА, ПОЛНЫЙ СОЦ. ПАКЕТ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '4', '', '', '790068583', NULL, NULL, NULL),
(33, '2018-02-27 11:24:13', 1, '2018-02-26 14:34:26', 1, 5, NULL, 'Y', '2017-04-17 14:21:00', NULL, 500, 'Cергей Родионов', 55, 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.', 'text', 56, 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.', 'text', 'CЕРГЕЙ РОДИОНОВ\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '33', 'cergey-rodionov', '', '0', NULL, 6, '2018-02-26 16:09:49'),
(34, '2018-02-26 14:34:28', 1, '2018-02-26 14:34:27', 1, 5, NULL, 'Y', '2017-04-10 14:21:00', NULL, 500, 'Анна Андреева', 57, 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.', 'text', 58, 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.', 'text', 'АННА АНДРЕЕВА\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.', 1, NULL, NULL, NULL, NULL, NULL, 'N', '34', 'anna-andreeva', '', '632358743', NULL, 1, '2018-02-27 13:23:10'),
(35, '2018-02-27 11:57:46', 1, '2018-02-26 14:34:28', 1, 5, NULL, 'Y', '2017-04-24 14:21:00', NULL, 500, 'Дмитрия Пялов', 59, 'Можете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала', 'text', 60, 'Можете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала.\r\nМожете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала.\r\nМожете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала.\r\n', 'text', 'ДМИТРИЯ ПЯЛОВ\r\nМОЖЕТЕ СРАЗУ ПЕРЕЙТИ С «МЛАДШЕЙ», БАЗОВОЙ РЕДАКЦИИ НА «БИЗНЕС-ПРОЦЕССЫ». ПОСЛЕ ТАКОГО ПЕРЕХОДА ВАШ ПОРТАЛ МОЖНО БУДЕТ ИНТЕГРИРОВАТЬ С ВНЕШНИМ САЙТОМ, НА ПОРТАЛЕ ДОБАВЯТСЯ ВОЗМОЖНОСТИ ВИЗУАЛЬНОГО ПРОЕКТИРОВАНИЯ БИЗНЕС-ПРОЦЕССОВ И УПРАВЛЕНИЯ СПИСКАМИ, ВКЛЮЧАЯ СПИСКИ В РАБОЧИХ ГРУППАХ. КРОМЕ ТОГО, ВЫ СМОЖЕТЕ АНАЛИЗИРОВАТЬ ПОСЕЩАЕМОСТЬ СВОЕГО ПОРТАЛА\r\nМОЖЕТЕ СРАЗУ ПЕРЕЙТИ С «МЛАДШЕЙ», БАЗОВОЙ РЕДАКЦИИ НА «БИЗНЕС-ПРОЦЕССЫ». ПОСЛЕ ТАКОГО ПЕРЕХОДА ВАШ ПОРТАЛ МОЖНО БУДЕТ ИНТЕГРИРОВАТЬ С ВНЕШНИМ САЙТОМ, НА ПОРТАЛЕ ДОБАВЯТСЯ ВОЗМОЖНОСТИ ВИЗУАЛЬНОГО ПРОЕКТИРОВАНИЯ БИЗНЕС-ПРОЦЕССОВ И УПРАВЛЕНИЯ СПИСКАМИ, ВКЛЮЧАЯ СПИСКИ В РАБОЧИХ ГРУППАХ. КРОМЕ ТОГО, ВЫ СМОЖЕТЕ АНАЛИЗИРОВАТЬ ПОСЕЩАЕМОСТЬ СВОЕГО ПОРТАЛА.\r\nМОЖЕТЕ СРАЗУ ПЕРЕЙТИ С «МЛАДШЕЙ», БАЗОВОЙ РЕДАКЦИИ НА «БИЗНЕС-ПРОЦЕССЫ». ПОСЛЕ ТАКОГО ПЕРЕХОДА ВАШ ПОРТАЛ МОЖНО БУДЕТ ИНТЕГРИРОВАТЬ С ВНЕШНИМ САЙТОМ, НА ПОРТАЛЕ ДОБАВЯТСЯ ВОЗМОЖНОСТИ ВИЗУАЛЬНОГО ПРОЕКТИРОВАНИЯ БИЗНЕС-ПРОЦЕССОВ И УПРАВЛЕНИЯ СПИСКАМИ, ВКЛЮЧАЯ СПИСКИ В РАБОЧИХ ГРУППАХ. КРОМЕ ТОГО, ВЫ СМОЖЕТЕ АНАЛИЗИРОВАТЬ ПОСЕЩАЕМОСТЬ СВОЕГО ПОРТАЛА.\r\nМОЖЕТЕ СРАЗУ ПЕРЕЙТИ С «МЛАДШЕЙ», БАЗОВОЙ РЕДАКЦИИ НА «БИЗНЕС-ПРОЦЕССЫ». ПОСЛЕ ТАКОГО ПЕРЕХОДА ВАШ ПОРТАЛ МОЖНО БУДЕТ ИНТЕГРИРОВАТЬ С ВНЕШНИМ САЙТОМ, НА ПОРТАЛЕ ДОБАВЯТСЯ ВОЗМОЖНОСТИ ВИЗУАЛЬНОГО ПРОЕКТИРОВАНИЯ БИЗНЕС-ПРОЦЕССОВ И УПРАВЛЕНИЯ СПИСКАМИ, ВКЛЮЧАЯ СПИСКИ В РАБОЧИХ ГРУППАХ. КРОМЕ ТОГО, ВЫ СМОЖЕТЕ АНАЛИЗИРОВАТЬ ПОСЕЩАЕМОСТЬ СВОЕГО ПОРТАЛА.\r\n', 1, NULL, NULL, NULL, NULL, NULL, 'N', '35', 'dmitriya-pyalov', '', '0', NULL, 3, '2018-02-26 15:36:18'),
(36, '2018-02-27 12:00:53', 1, '2018-02-27 11:58:48', 1, 5, NULL, 'Y', '2018-02-01 11:58:00', NULL, 500, 'askdgfjas klasdfh', NULL, 'dfgsdgerhdwfhrthr', 'text', NULL, 'rethjgfhet6ityke', 'text', 'ASKDGFJAS KLASDFH\r\nDFGSDGERHDWFHRTHR\r\nRETHJGFHET6ITYKE', 1, NULL, NULL, NULL, NULL, NULL, 'N', '36', 'askdgfjas-klasdfh', '', '0', NULL, 1, '2018-02-27 12:00:38'),
(37, '2018-02-27 13:40:30', 1, '2018-02-27 13:24:57', 1, 5, NULL, 'Y', '2018-02-22 13:24:00', NULL, 500, 'gdhjsjfsoioisudhifusidufiushgd', NULL, 'sdgsdg', 'text', NULL, 'dgsdgыфаыафыа', 'text', 'GDHJSJFSOIOISUDHIFUSIDUFIUSHGD\r\nSDGSDG\r\nDGSDGЫФАЫАФЫА', 1, NULL, NULL, NULL, NULL, NULL, 'N', '37', 'gdhjsjfsoioisudhifusidufiushgd', '', '0', NULL, 1, '2018-02-27 13:25:04');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_element_iprop`
--

CREATE TABLE `b_iblock_element_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_element_iprop`
--

INSERT INTO `b_iblock_element_iprop` (`IBLOCK_ID`, `SECTION_ID`, `ELEMENT_ID`, `IPROP_ID`, `VALUE`) VALUES
(5, 0, 33, 1, 'Отзыв - Cергей Родионов'),
(5, 0, 33, 2, 'Отзыв - Cергей Родионов - CTC-Медиа'),
(5, 0, 33, 3, 'лучшие, отзывы, CTC-Медиа'),
(5, 0, 33, 4, 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.'),
(5, 0, 34, 1, 'Отзыв - Анна Андреева'),
(5, 0, 34, 2, 'Отзыв - Анна Андреева - RK-Telecom'),
(5, 0, 34, 3, 'лучшие, отзывы, RK-Telecom'),
(5, 0, 34, 4, 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.'),
(5, 0, 35, 1, 'Отзыв - Дмитрия Пялов'),
(5, 0, 35, 2, 'Отзыв - Дмитрия Пялов - .NET-девелопмент'),
(5, 0, 35, 3, 'лучшие, отзывы, .NET-девелопмент'),
(5, 0, 35, 4, 'Можете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала'),
(5, 0, 36, 1, 'Отзыв - askdgfjas klasdfh'),
(5, 0, 36, 2, 'Отзыв - askdgfjas klasdfh - sdfsdf'),
(5, 0, 36, 3, 'лучшие, отзывы, sdfsdf'),
(5, 0, 36, 4, 'dfgsdgerhdwfhrthr'),
(5, 0, 37, 1, 'Отзыв - gdhjsjfsoioisudhifusidufiushgd'),
(5, 0, 37, 2, 'Отзыв - gdhjsjfsoioisudhifusidufiushgd - dsgsdg'),
(5, 0, 37, 3, 'лучшие, отзывы, dsgsdg'),
(5, 0, 37, 4, 'sdgsdg');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_element_lock`
--

CREATE TABLE `b_iblock_element_lock` (
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `DATE_LOCK` datetime DEFAULT NULL,
  `LOCKED_BY` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_element_property`
--

CREATE TABLE `b_iblock_element_property` (
  `ID` int(11) NOT NULL,
  `IBLOCK_PROPERTY_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL,
  `VALUE_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `VALUE_ENUM` int(11) DEFAULT NULL,
  `VALUE_NUM` decimal(18,4) DEFAULT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_element_property`
--

INSERT INTO `b_iblock_element_property` (`ID`, `IBLOCK_PROPERTY_ID`, `IBLOCK_ELEMENT_ID`, `VALUE`, `VALUE_TYPE`, `VALUE_ENUM`, `VALUE_NUM`, `DESCRIPTION`) VALUES
(1, 2, 4, '10000', 'text', NULL, '10000.0000', ''),
(2, 3, 4, '2', 'text', 2, NULL, NULL),
(3, 4, 4, '195x95x125', 'text', NULL, '195.0000', ''),
(4, 6, 4, '40324А', 'text', NULL, '40324.0000', ''),
(5, 7, 4, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(6, 8, 4, 'Россия', 'text', NULL, '0.0000', ''),
(7, 2, 5, '12000', 'text', NULL, '12000.0000', ''),
(8, 3, 5, '2', 'text', 2, NULL, NULL),
(9, 4, 5, '175x95x115', 'text', NULL, '175.0000', ''),
(10, 6, 5, '56830Е', 'text', NULL, '56830.0000', ''),
(11, 7, 5, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(12, 8, 5, 'Россия', 'text', NULL, '0.0000', ''),
(13, 1, 6, '1', 'text', 1, NULL, NULL),
(14, 2, 6, '7899', 'text', NULL, '7899.0000', ''),
(15, 3, 6, '2', 'text', 2, NULL, NULL),
(16, 4, 6, '54x49x120', 'text', NULL, '54.0000', ''),
(17, 6, 6, '435245', 'text', NULL, '435245.0000', ''),
(18, 7, 6, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(19, 8, 6, 'Россия', 'text', NULL, '0.0000', ''),
(20, 2, 7, '8999', 'text', NULL, '8999.0000', ''),
(21, 3, 7, '2', 'text', 2, NULL, NULL),
(22, 4, 7, '66x60x36', 'text', NULL, '66.0000', ''),
(23, 6, 7, '234523', 'text', NULL, '234523.0000', ''),
(24, 7, 7, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(25, 8, 7, 'Россия', 'text', NULL, '0.0000', ''),
(26, 2, 8, '1500', 'text', NULL, '1500.0000', ''),
(27, 3, 8, '2', 'text', 2, NULL, NULL),
(28, 4, 8, '51x43x85', 'text', NULL, '51.0000', ''),
(29, 6, 8, '234011', 'text', NULL, '234011.0000', ''),
(30, 7, 8, 'Дерево, ткань', 'text', NULL, '0.0000', ''),
(31, 8, 8, 'Россия', 'text', NULL, '0.0000', ''),
(32, 1, 9, '1', 'text', 1, NULL, NULL),
(33, 2, 9, '11899', 'text', NULL, '11899.0000', ''),
(34, 3, 9, '2', 'text', 2, NULL, NULL),
(35, 4, 9, '155x90x95', 'text', NULL, '155.0000', ''),
(36, 6, 9, '47539Р', 'text', NULL, '47539.0000', ''),
(37, 7, 9, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(38, 8, 9, 'Россия', 'text', NULL, '0.0000', ''),
(39, 2, 10, '12500', 'text', NULL, '12500.0000', ''),
(40, 3, 10, '2', 'text', 2, NULL, NULL),
(41, 4, 10, '165x90x115', 'text', NULL, '165.0000', ''),
(42, 6, 10, '00549Е', 'text', NULL, '549.0000', ''),
(43, 7, 10, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(44, 8, 10, 'Россия', 'text', NULL, '0.0000', ''),
(45, 2, 11, '8000', 'text', NULL, '8000.0000', ''),
(46, 3, 11, '2', 'text', 2, NULL, NULL),
(47, 4, 11, '155x95x105', 'text', NULL, '155.0000', ''),
(48, 6, 11, '98922К', 'text', NULL, '98922.0000', ''),
(49, 7, 11, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(50, 8, 11, 'Россия', 'text', NULL, '0.0000', ''),
(51, 1, 12, '1', 'text', 1, NULL, NULL),
(52, 2, 12, '10999', 'text', NULL, '10999.0000', ''),
(53, 3, 12, '2', 'text', 2, NULL, NULL),
(54, 4, 12, '165x90x115', 'text', NULL, '165.0000', ''),
(55, 6, 12, '64512Т', 'text', NULL, '64512.0000', ''),
(56, 7, 12, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(57, 8, 12, 'Россия', 'text', NULL, '0.0000', ''),
(58, 2, 13, '9999', 'text', NULL, '9999.0000', ''),
(59, 3, 13, '2', 'text', 2, NULL, NULL),
(60, 4, 13, '210x105x135', 'text', NULL, '210.0000', ''),
(61, 6, 13, '96395Т', 'text', NULL, '96395.0000', ''),
(62, 7, 13, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(63, 8, 13, 'Россия', 'text', NULL, '0.0000', ''),
(64, 2, 14, '1499', 'text', NULL, '1499.0000', ''),
(65, 3, 14, '2', 'text', 2, NULL, NULL),
(66, 4, 14, '175x110x115', 'text', NULL, '175.0000', ''),
(67, 5, 14, '200x100', 'text', NULL, '200.0000', ''),
(68, 6, 14, '38263Е', 'text', NULL, '38263.0000', ''),
(69, 7, 14, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(70, 8, 14, 'Россия', 'text', NULL, '0.0000', ''),
(71, 2, 15, '9999', 'text', NULL, '9999.0000', ''),
(72, 3, 15, '2', 'text', 2, NULL, NULL),
(73, 6, 15, '634645', 'text', NULL, '634645.0000', ''),
(74, 7, 15, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(75, 8, 15, 'Россия', 'text', NULL, '0.0000', ''),
(76, 2, 16, '7799', 'text', NULL, '7799.0000', ''),
(77, 3, 16, '2', 'text', 2, NULL, NULL),
(78, 6, 16, '634045', 'text', NULL, '634045.0000', ''),
(79, 7, 16, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(80, 8, 16, 'Россия', 'text', NULL, '0.0000', ''),
(81, 2, 17, '6779', 'text', NULL, '6779.0000', ''),
(82, 3, 17, '2', 'text', 2, NULL, NULL),
(83, 4, 17, '220x140x120', 'text', NULL, '220.0000', ''),
(84, 6, 17, '634043', 'text', NULL, '634043.0000', ''),
(85, 7, 17, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(86, 8, 17, 'Россия', 'text', NULL, '0.0000', ''),
(87, 2, 18, '4579', 'text', NULL, '4579.0000', ''),
(88, 3, 18, '2', 'text', 2, NULL, NULL),
(89, 4, 18, '200x150x120', 'text', NULL, '200.0000', ''),
(90, 6, 18, '634023', 'text', NULL, '634023.0000', ''),
(91, 7, 18, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(92, 8, 18, 'Россия', 'text', NULL, '0.0000', ''),
(93, 1, 19, '1', 'text', 1, NULL, NULL),
(94, 2, 19, '14999', 'text', NULL, '14999.0000', ''),
(95, 3, 19, '2', 'text', 2, NULL, NULL),
(96, 4, 19, '50x69x130', 'text', NULL, '50.0000', ''),
(97, 6, 19, '634023', 'text', NULL, '634023.0000', ''),
(98, 7, 19, 'Кожа, ткань', 'text', NULL, '0.0000', ''),
(99, 8, 19, 'Россия', 'text', NULL, '0.0000', ''),
(100, 2, 20, '12999', 'text', NULL, '12999.0000', ''),
(101, 3, 20, '2', 'text', 2, NULL, NULL),
(102, 4, 20, '58x48x86', 'text', NULL, '58.0000', ''),
(103, 6, 20, '634011', 'text', NULL, '634011.0000', ''),
(104, 7, 20, 'Кожа, металл, ткань', 'text', NULL, '0.0000', ''),
(105, 8, 20, 'Россия', 'text', NULL, '0.0000', ''),
(106, 2, 21, '1700', 'text', NULL, '1700.0000', ''),
(107, 3, 21, '2', 'text', 2, NULL, NULL),
(108, 4, 21, '52x42x88', 'text', NULL, '52.0000', ''),
(109, 6, 21, '234012', 'text', NULL, '234012.0000', ''),
(110, 7, 21, 'Дерево, ткань', 'text', NULL, '0.0000', ''),
(111, 8, 21, 'Россия', 'text', NULL, '0.0000', ''),
(112, 2, 22, '1000', 'text', NULL, '1000.0000', ''),
(113, 3, 22, '2', 'text', 2, NULL, NULL),
(114, 4, 22, '52x42x88', 'text', NULL, '52.0000', ''),
(115, 6, 22, '234014', 'text', NULL, '234014.0000', ''),
(116, 7, 22, 'Дерево, ткань', 'text', NULL, '0.0000', ''),
(117, 8, 22, 'Россия', 'text', NULL, '0.0000', ''),
(118, 2, 23, '1399', 'text', NULL, '1399.0000', ''),
(119, 3, 23, '2', 'text', 2, NULL, NULL),
(120, 4, 23, '55x39x90', 'text', NULL, '55.0000', ''),
(121, 6, 23, '234017', 'text', NULL, '234017.0000', ''),
(122, 7, 23, 'Дерево, ткань', 'text', NULL, '0.0000', ''),
(123, 8, 23, 'Россия', 'text', NULL, '0.0000', ''),
(124, 2, 24, '1000', 'text', NULL, '1000.0000', ''),
(125, 3, 24, '2', 'text', 2, NULL, NULL),
(126, 4, 24, '56x48x80', 'text', NULL, '56.0000', ''),
(127, 6, 24, '234013', 'text', NULL, '234013.0000', ''),
(128, 7, 24, 'Дерево, ткань', 'text', NULL, '0.0000', ''),
(129, 8, 24, 'Россия', 'text', NULL, '0.0000', ''),
(130, 2, 25, '1300', 'text', NULL, '1300.0000', ''),
(131, 3, 25, '2', 'text', 2, NULL, NULL),
(132, 4, 25, '52x42x88', 'text', NULL, '52.0000', ''),
(133, 6, 25, '234015', 'text', NULL, '234015.0000', ''),
(134, 7, 25, 'Металл, пластик', 'text', NULL, '0.0000', ''),
(135, 8, 25, 'Россия', 'text', NULL, '0.0000', ''),
(136, 2, 26, '1699', 'text', NULL, '1699.0000', ''),
(137, 3, 26, '2', 'text', 2, NULL, NULL),
(138, 4, 26, '52x45x65', 'text', NULL, '52.0000', ''),
(139, 6, 26, '234016', 'text', NULL, '234016.0000', ''),
(140, 7, 26, 'Металл, пластик, кожа', 'text', NULL, '0.0000', ''),
(141, 8, 26, 'Россия', 'text', NULL, '0.0000', ''),
(142, 2, 27, '1679', 'text', NULL, '1679.0000', ''),
(143, 3, 27, '2', 'text', 2, NULL, NULL),
(144, 4, 27, '54x43x82', 'text', NULL, '54.0000', ''),
(145, 6, 27, '234017', 'text', NULL, '234017.0000', ''),
(146, 7, 27, 'Металл, пластик', 'text', NULL, '0.0000', ''),
(147, 8, 27, 'Россия', 'text', NULL, '0.0000', ''),
(148, 9, 33, 'Генеральный директор', 'text', NULL, '0.0000', ''),
(149, 10, 33, 'CTC-Медиа', 'text', NULL, '0.0000', ''),
(150, 9, 34, 'Маркетолог', 'text', NULL, '0.0000', ''),
(151, 10, 34, 'RK-Telecom', 'text', NULL, '0.0000', ''),
(152, 9, 35, 'программист ', 'text', NULL, '0.0000', ''),
(153, 10, 35, '.NET-девелопмент', 'text', NULL, '0.0000', ''),
(157, 11, 33, '64', 'text', NULL, '64.0000', ''),
(158, 11, 33, '65', 'text', NULL, '65.0000', ''),
(160, 9, 36, 'sdfsd', 'text', NULL, '0.0000', ''),
(161, 10, 36, 'sdfsdf', 'text', NULL, '0.0000', ''),
(162, 9, 37, 'sdgsdg', 'text', NULL, '0.0000', ''),
(163, 10, 37, 'dsgsdg', 'text', NULL, '0.0000', '');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_element_right`
--

CREATE TABLE `b_iblock_element_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `ELEMENT_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_fields`
--

CREATE TABLE `b_iblock_fields` (
  `IBLOCK_ID` int(18) NOT NULL,
  `FIELD_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_fields`
--

INSERT INTO `b_iblock_fields` (`IBLOCK_ID`, `FIELD_ID`, `IS_REQUIRED`, `DEFAULT_VALUE`) VALUES
(1, 'ACTIVE', 'Y', 'Y'),
(1, 'ACTIVE_FROM', 'N', '=today'),
(1, 'ACTIVE_TO', 'N', ''),
(1, 'CODE', 'N', 'a:8:{s:6:"UNIQUE";s:1:"N";s:15:"TRANSLITERATION";s:1:"N";s:9:"TRANS_LEN";i:100;s:10:"TRANS_CASE";s:0:"";s:11:"TRANS_SPACE";b:0;s:11:"TRANS_OTHER";b:0;s:9:"TRANS_EAT";s:1:"N";s:10:"USE_GOOGLE";s:1:"N";}'),
(1, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:0:"";s:11:"COMPRESSION";s:0:"";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
(1, 'DETAIL_TEXT', 'N', ''),
(1, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(1, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:"KEEP_IBLOCK_SECTION_ID";s:1:"N";}'),
(1, 'LOG_ELEMENT_ADD', 'N', NULL),
(1, 'LOG_ELEMENT_DELETE', 'N', NULL),
(1, 'LOG_ELEMENT_EDIT', 'N', NULL),
(1, 'LOG_SECTION_ADD', 'N', NULL),
(1, 'LOG_SECTION_DELETE', 'N', NULL),
(1, 'LOG_SECTION_EDIT', 'N', NULL),
(1, 'NAME', 'Y', ''),
(1, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:0:"";s:11:"COMPRESSION";s:0:"";s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
(1, 'PREVIEW_TEXT', 'N', ''),
(1, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(1, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'SECTION_CODE', 'N', 'a:8:{s:6:"UNIQUE";s:1:"N";s:15:"TRANSLITERATION";s:1:"N";s:9:"TRANS_LEN";i:100;s:10:"TRANS_CASE";s:1:"L";s:11:"TRANS_SPACE";s:1:"-";s:11:"TRANS_OTHER";s:1:"-";s:9:"TRANS_EAT";s:1:"Y";s:10:"USE_GOOGLE";s:1:"N";}'),
(1, 'SECTION_DESCRIPTION', 'N', ''),
(1, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(1, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(1, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
(1, 'SECTION_NAME', 'Y', ''),
(1, 'SECTION_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
(1, 'SECTION_XML_ID', 'N', ''),
(1, 'SORT', 'N', '0'),
(1, 'TAGS', 'N', ''),
(1, 'XML_ID', 'Y', ''),
(1, 'XML_IMPORT_START_TIME', 'N', '2018-02-26 11:41:44'),
(2, 'ACTIVE', 'Y', 'Y'),
(2, 'ACTIVE_FROM', 'N', ''),
(2, 'ACTIVE_TO', 'N', ''),
(2, 'CODE', 'N', ''),
(2, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:0:"";s:11:"COMPRESSION";s:0:"";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(2, 'DETAIL_TEXT', 'N', ''),
(2, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(2, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(2, 'IBLOCK_SECTION', 'N', ''),
(2, 'LOG_ELEMENT_ADD', 'N', NULL),
(2, 'LOG_ELEMENT_DELETE', 'N', NULL),
(2, 'LOG_ELEMENT_EDIT', 'N', NULL),
(2, 'LOG_SECTION_ADD', 'N', NULL),
(2, 'LOG_SECTION_DELETE', 'N', NULL),
(2, 'LOG_SECTION_EDIT', 'N', NULL),
(2, 'NAME', 'Y', ''),
(2, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:0:"";s:11:"COMPRESSION";s:0:"";s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(2, 'PREVIEW_TEXT', 'N', ''),
(2, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(2, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(2, 'SECTION_CODE', 'N', 'a:8:{s:6:"UNIQUE";s:1:"N";s:15:"TRANSLITERATION";s:1:"N";s:9:"TRANS_LEN";i:100;s:10:"TRANS_CASE";s:1:"L";s:11:"TRANS_SPACE";s:1:"-";s:11:"TRANS_OTHER";s:1:"-";s:9:"TRANS_EAT";s:1:"Y";s:10:"USE_GOOGLE";s:1:"N";}'),
(2, 'SECTION_DESCRIPTION', 'N', NULL),
(2, 'SECTION_DESCRIPTION_TYPE', 'Y', NULL),
(2, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(2, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(2, 'SECTION_NAME', 'Y', NULL),
(2, 'SECTION_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(2, 'SECTION_XML_ID', 'N', NULL),
(2, 'SORT', 'N', '0'),
(2, 'TAGS', 'N', ''),
(2, 'XML_ID', 'Y', ''),
(2, 'XML_IMPORT_START_TIME', 'N', '2018-02-26 11:44:26'),
(3, 'ACTIVE', 'Y', 'Y'),
(3, 'ACTIVE_FROM', 'N', ''),
(3, 'ACTIVE_TO', 'N', ''),
(3, 'CODE', 'N', ''),
(3, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:0:"";s:11:"COMPRESSION";s:0:"";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(3, 'DETAIL_TEXT', 'N', ''),
(3, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(3, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(3, 'IBLOCK_SECTION', 'N', ''),
(3, 'LOG_ELEMENT_ADD', 'N', NULL),
(3, 'LOG_ELEMENT_DELETE', 'N', NULL),
(3, 'LOG_ELEMENT_EDIT', 'N', NULL),
(3, 'LOG_SECTION_ADD', 'N', NULL),
(3, 'LOG_SECTION_DELETE', 'N', NULL),
(3, 'LOG_SECTION_EDIT', 'N', NULL),
(3, 'NAME', 'Y', ''),
(3, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:0:"";s:11:"COMPRESSION";s:0:"";s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(3, 'PREVIEW_TEXT', 'N', ''),
(3, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(3, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(3, 'SECTION_CODE', 'N', 'a:8:{s:6:"UNIQUE";s:1:"N";s:15:"TRANSLITERATION";s:1:"N";s:9:"TRANS_LEN";i:100;s:10:"TRANS_CASE";s:1:"L";s:11:"TRANS_SPACE";s:1:"-";s:11:"TRANS_OTHER";s:1:"-";s:9:"TRANS_EAT";s:1:"Y";s:10:"USE_GOOGLE";s:1:"N";}'),
(3, 'SECTION_DESCRIPTION', 'N', NULL),
(3, 'SECTION_DESCRIPTION_TYPE', 'Y', NULL),
(3, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(3, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(3, 'SECTION_NAME', 'Y', NULL),
(3, 'SECTION_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(3, 'SECTION_XML_ID', 'N', NULL),
(3, 'SORT', 'N', '0'),
(3, 'TAGS', 'N', ''),
(3, 'XML_ID', 'Y', ''),
(3, 'XML_IMPORT_START_TIME', 'N', '2018-02-26 11:45:26'),
(4, 'ACTIVE', 'Y', 'Y'),
(4, 'ACTIVE_FROM', 'N', ''),
(4, 'ACTIVE_TO', 'N', ''),
(4, 'CODE', 'N', ''),
(4, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:0:"";s:11:"COMPRESSION";s:0:"";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(4, 'DETAIL_TEXT', 'N', ''),
(4, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(4, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(4, 'IBLOCK_SECTION', 'N', ''),
(4, 'LOG_ELEMENT_ADD', 'N', NULL),
(4, 'LOG_ELEMENT_DELETE', 'N', NULL),
(4, 'LOG_ELEMENT_EDIT', 'N', NULL),
(4, 'LOG_SECTION_ADD', 'N', NULL),
(4, 'LOG_SECTION_DELETE', 'N', NULL),
(4, 'LOG_SECTION_EDIT', 'N', NULL),
(4, 'NAME', 'Y', ''),
(4, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:0:"";s:11:"COMPRESSION";s:0:"";s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(4, 'PREVIEW_TEXT', 'N', ''),
(4, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(4, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(4, 'SECTION_CODE', 'N', 'a:8:{s:6:"UNIQUE";s:1:"N";s:15:"TRANSLITERATION";s:1:"N";s:9:"TRANS_LEN";i:100;s:10:"TRANS_CASE";s:1:"L";s:11:"TRANS_SPACE";s:1:"-";s:11:"TRANS_OTHER";s:1:"-";s:9:"TRANS_EAT";s:1:"Y";s:10:"USE_GOOGLE";s:1:"N";}'),
(4, 'SECTION_DESCRIPTION', 'N', NULL),
(4, 'SECTION_DESCRIPTION_TYPE', 'Y', NULL),
(4, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(4, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(4, 'SECTION_NAME', 'Y', NULL),
(4, 'SECTION_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";N;s:19:"WATERMARK_TEXT_FONT";N;s:20:"WATERMARK_TEXT_COLOR";N;s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";N;s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";N;s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";N;s:20:"WATERMARK_FILE_ORDER";N;}'),
(4, 'SECTION_XML_ID', 'N', NULL),
(4, 'SORT', 'N', '0'),
(4, 'TAGS', 'N', ''),
(4, 'XML_ID', 'Y', ''),
(4, 'XML_IMPORT_START_TIME', 'N', '2018-02-26 11:45:47'),
(5, 'ACTIVE', 'Y', 'Y'),
(5, 'ACTIVE_FROM', 'N', ''),
(5, 'ACTIVE_TO', 'N', ''),
(5, 'CODE', 'N', 'a:8:{s:6:"UNIQUE";s:1:"N";s:15:"TRANSLITERATION";s:1:"Y";s:9:"TRANS_LEN";i:100;s:10:"TRANS_CASE";s:1:"L";s:11:"TRANS_SPACE";s:1:"-";s:11:"TRANS_OTHER";s:1:"-";s:9:"TRANS_EAT";s:1:"Y";s:10:"USE_GOOGLE";s:1:"N";}'),
(5, 'DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
(5, 'DETAIL_TEXT', 'N', ''),
(5, 'DETAIL_TEXT_TYPE', 'Y', 'text'),
(5, 'DETAIL_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(5, 'IBLOCK_SECTION', 'N', 'a:1:{s:22:"KEEP_IBLOCK_SECTION_ID";s:1:"N";}'),
(5, 'LOG_ELEMENT_ADD', 'Y', NULL),
(5, 'LOG_ELEMENT_DELETE', 'Y', NULL),
(5, 'LOG_ELEMENT_EDIT', 'Y', NULL),
(5, 'LOG_SECTION_ADD', 'N', NULL),
(5, 'LOG_SECTION_DELETE', 'N', NULL),
(5, 'LOG_SECTION_EDIT', 'N', NULL),
(5, 'NAME', 'Y', ''),
(5, 'PREVIEW_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
(5, 'PREVIEW_TEXT', 'N', ''),
(5, 'PREVIEW_TEXT_TYPE', 'Y', 'text'),
(5, 'PREVIEW_TEXT_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(5, 'SECTION_CODE', 'N', 'a:8:{s:6:"UNIQUE";s:1:"N";s:15:"TRANSLITERATION";s:1:"N";s:9:"TRANS_LEN";i:100;s:10:"TRANS_CASE";s:1:"L";s:11:"TRANS_SPACE";s:1:"-";s:11:"TRANS_OTHER";s:1:"-";s:9:"TRANS_EAT";s:1:"Y";s:10:"USE_GOOGLE";s:1:"N";}'),
(5, 'SECTION_DESCRIPTION', 'N', ''),
(5, 'SECTION_DESCRIPTION_TYPE', 'Y', 'text'),
(5, 'SECTION_DESCRIPTION_TYPE_ALLOW_CHANGE', 'N', 'Y'),
(5, 'SECTION_DETAIL_PICTURE', 'N', 'a:17:{s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
(5, 'SECTION_NAME', 'Y', ''),
(5, 'SECTION_PICTURE', 'N', 'a:20:{s:11:"FROM_DETAIL";s:1:"N";s:5:"SCALE";s:1:"N";s:5:"WIDTH";s:0:"";s:6:"HEIGHT";s:0:"";s:13:"IGNORE_ERRORS";s:1:"N";s:6:"METHOD";s:8:"resample";s:11:"COMPRESSION";i:95;s:18:"DELETE_WITH_DETAIL";s:1:"N";s:18:"UPDATE_WITH_DETAIL";s:1:"N";s:18:"USE_WATERMARK_TEXT";s:1:"N";s:14:"WATERMARK_TEXT";s:0:"";s:19:"WATERMARK_TEXT_FONT";s:0:"";s:20:"WATERMARK_TEXT_COLOR";s:0:"";s:19:"WATERMARK_TEXT_SIZE";s:0:"";s:23:"WATERMARK_TEXT_POSITION";s:2:"tl";s:18:"USE_WATERMARK_FILE";s:1:"N";s:14:"WATERMARK_FILE";s:0:"";s:20:"WATERMARK_FILE_ALPHA";s:0:"";s:23:"WATERMARK_FILE_POSITION";s:2:"tl";s:20:"WATERMARK_FILE_ORDER";N;}'),
(5, 'SECTION_XML_ID', 'N', ''),
(5, 'SORT', 'N', '0'),
(5, 'TAGS', 'N', ''),
(5, 'XML_ID', 'Y', ''),
(5, 'XML_IMPORT_START_TIME', 'N', '2018-02-26 14:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_group`
--

CREATE TABLE `b_iblock_group` (
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `PERMISSION` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_group`
--

INSERT INTO `b_iblock_group` (`IBLOCK_ID`, `GROUP_ID`, `PERMISSION`) VALUES
(1, 1, 'X'),
(1, 2, 'R'),
(1, 5, 'W'),
(2, 1, 'X'),
(2, 2, 'R'),
(2, 5, 'W'),
(3, 1, 'X'),
(3, 2, 'R'),
(3, 5, 'W'),
(4, 1, 'X'),
(4, 2, 'R'),
(4, 5, 'W'),
(5, 1, 'X'),
(5, 2, 'R');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_iblock_iprop`
--

CREATE TABLE `b_iblock_iblock_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_iproperty`
--

CREATE TABLE `b_iblock_iproperty` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `TEMPLATE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_iproperty`
--

INSERT INTO `b_iblock_iproperty` (`ID`, `IBLOCK_ID`, `CODE`, `ENTITY_TYPE`, `ENTITY_ID`, `TEMPLATE`) VALUES
(1, 5, 'ELEMENT_META_TITLE', 'B', 5, 'Отзыв - {=this.Name}'),
(2, 5, 'ELEMENT_PAGE_TITLE', 'B', 5, 'Отзыв - {=this.Name} - {=this.property.COMPANY}'),
(3, 5, 'ELEMENT_META_KEYWORDS', 'B', 5, 'лучшие, отзывы, {=this.property.COMPANY}'),
(4, 5, 'ELEMENT_META_DESCRIPTION', 'B', 5, '{=this.PreviewText}');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_messages`
--

CREATE TABLE `b_iblock_messages` (
  `IBLOCK_ID` int(18) NOT NULL,
  `MESSAGE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_TEXT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_messages`
--

INSERT INTO `b_iblock_messages` (`IBLOCK_ID`, `MESSAGE_ID`, `MESSAGE_TEXT`) VALUES
(1, 'ELEMENT_ADD', 'Добавить новость'),
(1, 'ELEMENT_DELETE', 'Удалить новость'),
(1, 'ELEMENT_EDIT', 'Изменить новость'),
(1, 'ELEMENT_NAME', 'Новость'),
(1, 'ELEMENTS_NAME', 'Новости'),
(1, 'SECTION_ADD', 'Добавить раздел'),
(1, 'SECTION_DELETE', 'Удалить раздел'),
(1, 'SECTION_EDIT', 'Изменить раздел'),
(1, 'SECTION_NAME', 'Раздел'),
(1, 'SECTIONS_NAME', 'Разделы'),
(2, 'ELEMENT_ADD', 'Добавить товар'),
(2, 'ELEMENT_DELETE', 'Удалить товар'),
(2, 'ELEMENT_EDIT', 'Изменить товар'),
(2, 'ELEMENT_NAME', 'Элемент'),
(2, 'ELEMENTS_NAME', 'Товары'),
(2, 'SECTION_ADD', 'Добавить раздел'),
(2, 'SECTION_DELETE', 'Удалить раздел'),
(2, 'SECTION_EDIT', 'Изменить раздел'),
(2, 'SECTION_NAME', 'Раздел'),
(2, 'SECTIONS_NAME', 'Разделы'),
(3, 'ELEMENT_ADD', 'Добавить услугу'),
(3, 'ELEMENT_DELETE', 'Удалить услугу'),
(3, 'ELEMENT_EDIT', 'Изменить услугу'),
(3, 'ELEMENT_NAME', 'Услуга'),
(3, 'ELEMENTS_NAME', 'Услуги'),
(3, 'SECTION_ADD', 'Добавить раздел'),
(3, 'SECTION_DELETE', 'Удалить раздел'),
(3, 'SECTION_EDIT', 'Изменить раздел'),
(3, 'SECTION_NAME', 'Раздел'),
(3, 'SECTIONS_NAME', 'Разделы'),
(4, 'ELEMENT_ADD', 'Добавить вакансию'),
(4, 'ELEMENT_DELETE', 'Удалить вакансию'),
(4, 'ELEMENT_EDIT', 'Изменить вакансию'),
(4, 'ELEMENT_NAME', 'Вакансия'),
(4, 'ELEMENTS_NAME', 'Вакансии'),
(4, 'SECTION_ADD', 'Добавить раздел'),
(4, 'SECTION_DELETE', 'Удалить раздел'),
(4, 'SECTION_EDIT', 'Изменить раздел'),
(4, 'SECTION_NAME', 'Раздел'),
(4, 'SECTIONS_NAME', 'Разделы'),
(5, 'ELEMENT_ADD', 'Добавить элемент'),
(5, 'ELEMENT_DELETE', 'Удалить элемент'),
(5, 'ELEMENT_EDIT', 'Изменить элемент'),
(5, 'ELEMENT_NAME', 'Элемент'),
(5, 'ELEMENTS_NAME', 'Элементы'),
(5, 'SECTION_ADD', 'Добавить раздел'),
(5, 'SECTION_DELETE', 'Удалить раздел'),
(5, 'SECTION_EDIT', 'Изменить раздел'),
(5, 'SECTION_NAME', 'Раздел'),
(5, 'SECTIONS_NAME', 'Разделы');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_offers_tmp`
--

CREATE TABLE `b_iblock_offers_tmp` (
  `ID` int(11) UNSIGNED NOT NULL,
  `PRODUCT_IBLOCK_ID` int(11) UNSIGNED NOT NULL,
  `OFFERS_IBLOCK_ID` int(11) UNSIGNED NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_property`
--

CREATE TABLE `b_iblock_property` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IBLOCK_ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `CODE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DEFAULT_VALUE` text COLLATE utf8_unicode_ci,
  `PROPERTY_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ROW_COUNT` int(11) NOT NULL DEFAULT '1',
  `COL_COUNT` int(11) NOT NULL DEFAULT '30',
  `LIST_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'L',
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILE_TYPE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MULTIPLE_CNT` int(11) DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_IBLOCK_ID` int(18) DEFAULT NULL,
  `WITH_DESCRIPTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `FILTRABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IS_REQUIRED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT '1',
  `USER_TYPE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_SETTINGS` text COLLATE utf8_unicode_ci,
  `HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_property`
--

INSERT INTO `b_iblock_property` (`ID`, `TIMESTAMP_X`, `IBLOCK_ID`, `NAME`, `ACTIVE`, `SORT`, `CODE`, `DEFAULT_VALUE`, `PROPERTY_TYPE`, `ROW_COUNT`, `COL_COUNT`, `LIST_TYPE`, `MULTIPLE`, `XML_ID`, `FILE_TYPE`, `MULTIPLE_CNT`, `TMP_ID`, `LINK_IBLOCK_ID`, `WITH_DESCRIPTION`, `SEARCHABLE`, `FILTRABLE`, `IS_REQUIRED`, `VERSION`, `USER_TYPE`, `USER_TYPE_SETTINGS`, `HINT`) VALUES
(1, '2018-02-26 08:44:27', 2, 'Специальное предложение', 'Y', 100, 'SPECIALOFFER', NULL, 'L', 1, 30, 'C', 'N', '5', NULL, 5, NULL, NULL, 'N', 'N', 'N', 'N', 1, NULL, NULL, NULL),
(2, '2018-02-26 08:44:27', 2, 'Цена', 'Y', 200, 'PRICE', NULL, 'N', 1, 30, 'L', 'N', '6', NULL, 5, NULL, NULL, 'N', 'N', 'N', 'N', 1, NULL, NULL, NULL),
(3, '2018-02-26 08:44:27', 2, 'Валюта цены (подпись)', 'Y', 300, 'PRICECURRENCY', NULL, 'L', 1, 30, 'C', 'N', '7', NULL, 5, NULL, NULL, 'N', 'N', 'N', 'N', 1, NULL, NULL, NULL),
(4, '2018-02-26 08:44:28', 2, 'Габариты (Д х Ш х В)', 'Y', 400, 'SIZE', NULL, 'S', 1, 30, 'L', 'N', '8', NULL, 5, NULL, NULL, 'N', 'N', 'N', 'N', 1, NULL, NULL, NULL),
(5, '2018-02-26 08:44:28', 2, 'Размеры спального места', 'Y', 500, 'S_SIZE', NULL, 'S', 1, 30, 'L', 'N', '9', NULL, 5, NULL, NULL, 'N', 'N', 'N', 'N', 1, NULL, NULL, NULL),
(6, '2018-02-26 08:44:28', 2, 'Артикул', 'Y', 600, 'ARTNUMBER', NULL, 'S', 1, 30, 'L', 'N', '10', NULL, 5, NULL, NULL, 'N', 'N', 'N', 'N', 1, NULL, NULL, NULL),
(7, '2018-02-26 08:44:28', 2, 'Материал', 'Y', 700, 'MATERIAL', NULL, 'S', 1, 30, 'L', 'N', '11', NULL, 5, NULL, NULL, 'N', 'N', 'N', 'N', 1, NULL, NULL, NULL),
(8, '2018-02-26 08:44:28', 2, 'Производитель', 'Y', 800, 'MANUFACTURER', NULL, 'S', 1, 30, 'L', 'N', '12', NULL, 5, NULL, NULL, 'N', 'N', 'N', 'N', 1, NULL, NULL, NULL),
(9, '2018-02-27 10:38:40', 5, 'Должность', 'Y', 500, 'POSITION', '', 'S', 1, 30, 'L', 'N', '9', '', 5, NULL, 0, 'N', 'Y', 'Y', 'N', 1, NULL, NULL, ''),
(10, '2018-02-27 10:38:40', 5, 'Компания', 'Y', 500, 'COMPANY', '', 'S', 1, 30, 'L', 'N', '10', '', 5, NULL, 0, 'N', 'Y', 'N', 'N', 1, NULL, NULL, ''),
(11, '2018-02-27 10:00:05', 5, 'Документы', 'Y', 500, 'DOCS', '', 'F', 1, 30, 'L', 'Y', '11', 'pdf', 5, NULL, 0, 'N', 'N', 'N', 'N', 1, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_property_enum`
--

CREATE TABLE `b_iblock_property_enum` (
  `ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_property_enum`
--

INSERT INTO `b_iblock_property_enum` (`ID`, `PROPERTY_ID`, `VALUE`, `DEF`, `SORT`, `XML_ID`, `TMP_ID`) VALUES
(1, 1, 'да', 'N', 500, 'Y', NULL),
(2, 3, 'руб.', 'Y', 10, 'corp_cf_cur_1', NULL),
(3, 3, '$', 'N', 20, 'corp_cf_cur_3', NULL),
(4, 3, '€', 'N', 30, 'corp_cf_cur_2', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_right`
--

CREATE TABLE `b_iblock_right` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `DO_INHERIT` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `TASK_ID` int(11) NOT NULL,
  `OP_SREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `OP_EREAD` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_rss`
--

CREATE TABLE `b_iblock_rss` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `NODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NODE_VALUE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_section`
--

CREATE TABLE `b_iblock_section` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `MODIFIED_BY` int(18) DEFAULT NULL,
  `DATE_CREATE` datetime DEFAULT NULL,
  `CREATED_BY` int(18) DEFAULT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `IBLOCK_SECTION_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `GLOBAL_ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PICTURE` int(18) DEFAULT NULL,
  `LEFT_MARGIN` int(18) DEFAULT NULL,
  `RIGHT_MARGIN` int(18) DEFAULT NULL,
  `DEPTH_LEVEL` int(18) DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` char(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci,
  `CODE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TMP_ID` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DETAIL_PICTURE` int(18) DEFAULT NULL,
  `SOCNET_GROUP_ID` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_section`
--

INSERT INTO `b_iblock_section` (`ID`, `TIMESTAMP_X`, `MODIFIED_BY`, `DATE_CREATE`, `CREATED_BY`, `IBLOCK_ID`, `IBLOCK_SECTION_ID`, `ACTIVE`, `GLOBAL_ACTIVE`, `SORT`, `NAME`, `PICTURE`, `LEFT_MARGIN`, `RIGHT_MARGIN`, `DEPTH_LEVEL`, `DESCRIPTION`, `DESCRIPTION_TYPE`, `SEARCHABLE_CONTENT`, `CODE`, `XML_ID`, `TMP_ID`, `DETAIL_PICTURE`, `SOCNET_GROUP_ID`) VALUES
(1, '2018-02-26 08:44:28', 1, '2018-02-26 11:44:28', 1, 2, NULL, 'Y', 'Y', 100, 'Мягкая мебель', 1, 1, 2, 1, 'Диваны, кресла и прочая мягкая мебель', 'html', 'МЯГКАЯ МЕБЕЛЬ\r\nДИВАНЫ, КРЕСЛА И ПРОЧАЯ МЯГКАЯ МЕБЕЛЬ', NULL, '2', NULL, NULL, NULL),
(2, '2018-02-26 08:44:29', 1, '2018-02-26 11:44:29', 1, 2, NULL, 'Y', 'Y', 200, 'Офисная мебель', 2, 3, 4, 1, 'Диваны, столы, стулья', 'html', 'ОФИСНАЯ МЕБЕЛЬ\r\nДИВАНЫ, СТОЛЫ, СТУЛЬЯ', NULL, '3', NULL, NULL, NULL),
(3, '2018-02-26 08:44:30', 1, '2018-02-26 11:44:30', 1, 2, NULL, 'Y', 'Y', 300, 'Мебель для кухни', 3, 5, 6, 1, 'Полки, ящики, столы и стулья', 'html', 'МЕБЕЛЬ ДЛЯ КУХНИ\r\nПОЛКИ, ЯЩИКИ, СТОЛЫ И СТУЛЬЯ', NULL, '4', NULL, NULL, NULL),
(4, '2018-02-26 08:44:31', 1, '2018-02-26 11:44:31', 1, 2, NULL, 'Y', 'Y', 400, 'Детская мебель', 4, 7, 8, 1, 'Кровати, стулья, мягкая детская мебель', 'html', 'ДЕТСКАЯ МЕБЕЛЬ\r\nКРОВАТИ, СТУЛЬЯ, МЯГКАЯ ДЕТСКАЯ МЕБЕЛЬ', NULL, '5', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_section_element`
--

CREATE TABLE `b_iblock_section_element` (
  `IBLOCK_SECTION_ID` int(11) NOT NULL,
  `IBLOCK_ELEMENT_ID` int(11) NOT NULL,
  `ADDITIONAL_PROPERTY_ID` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_section_element`
--

INSERT INTO `b_iblock_section_element` (`IBLOCK_SECTION_ID`, `IBLOCK_ELEMENT_ID`, `ADDITIONAL_PROPERTY_ID`) VALUES
(1, 4, NULL),
(1, 5, NULL),
(1, 9, NULL),
(1, 10, NULL),
(1, 11, NULL),
(1, 12, NULL),
(1, 13, NULL),
(1, 14, NULL),
(2, 6, NULL),
(2, 7, NULL),
(2, 15, NULL),
(2, 16, NULL),
(2, 17, NULL),
(2, 18, NULL),
(2, 19, NULL),
(2, 20, NULL),
(3, 8, NULL),
(3, 21, NULL),
(3, 22, NULL),
(3, 23, NULL),
(4, 24, NULL),
(4, 25, NULL),
(4, 26, NULL),
(4, 27, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_section_iprop`
--

CREATE TABLE `b_iblock_section_iprop` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `IPROP_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_section_property`
--

CREATE TABLE `b_iblock_section_property` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `PROPERTY_ID` int(11) NOT NULL,
  `SMART_FILTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DISPLAY_EXPANDED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_HINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_section_right`
--

CREATE TABLE `b_iblock_section_right` (
  `IBLOCK_ID` int(11) NOT NULL,
  `SECTION_ID` int(11) NOT NULL,
  `RIGHT_ID` int(11) NOT NULL,
  `IS_INHERITED` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_sequence`
--

CREATE TABLE `b_iblock_sequence` (
  `IBLOCK_ID` int(18) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SEQ_VALUE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_site`
--

CREATE TABLE `b_iblock_site` (
  `IBLOCK_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_site`
--

INSERT INTO `b_iblock_site` (`IBLOCK_ID`, `SITE_ID`) VALUES
(1, 's1'),
(2, 's1'),
(3, 's1'),
(4, 's1'),
(5, 's1');

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_type`
--

CREATE TABLE `b_iblock_type` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECTIONS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_FILE_BEFORE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EDIT_FILE_AFTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IN_RSS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(18) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_type`
--

INSERT INTO `b_iblock_type` (`ID`, `SECTIONS`, `EDIT_FILE_BEFORE`, `EDIT_FILE_AFTER`, `IN_RSS`, `SORT`) VALUES
('news', 'N', NULL, NULL, 'Y', 50),
('products', 'Y', NULL, NULL, 'N', 100),
('reviews', 'N', '', '', 'N', 500),
('vacancies', 'Y', NULL, NULL, 'N', 150);

-- --------------------------------------------------------

--
-- Table structure for table `b_iblock_type_lang`
--

CREATE TABLE `b_iblock_type_lang` (
  `IBLOCK_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `SECTION_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ELEMENT_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_iblock_type_lang`
--

INSERT INTO `b_iblock_type_lang` (`IBLOCK_TYPE_ID`, `LID`, `NAME`, `SECTION_NAME`, `ELEMENT_NAME`) VALUES
('news', 'en', 'News', '', 'News'),
('news', 'ru', 'Новости', '', 'Новости'),
('products', 'en', 'Products and services', 'Sections', 'Products and services'),
('products', 'ru', 'Товары и услуги', 'Разделы', 'Товары и услуги'),
('vacancies', 'en', 'Job', 'Categories', 'Vacancies'),
('vacancies', 'ru', 'Вакансии', 'Разделы', 'Вакансии'),
('reviews', 'ru', 'Отзывы', '', ''),
('reviews', 'en', 'Reviews', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `b_lang`
--

CREATE TABLE `b_lang` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DIR` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOC_ROOT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DOMAIN_LIMITED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SERVER_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_lang`
--

INSERT INTO `b_lang` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `DIR`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `LANGUAGE_ID`, `DOC_ROOT`, `DOMAIN_LIMITED`, `SERVER_NAME`, `SITE_NAME`, `EMAIL`, `CULTURE_ID`) VALUES
('s1', 1, 'Y', 'Y', 'Cайт производства (Сайт по умолчанию)', '/', NULL, NULL, NULL, NULL, NULL, 'ru', '', 'N', '', 'Cайт производства', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `b_lang_domain`
--

CREATE TABLE `b_lang_domain` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_language`
--

CREATE TABLE `b_language` (
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT_DATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_DATETIME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FORMAT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WEEK_START` int(11) DEFAULT NULL,
  `CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DIRECTION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CULTURE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_language`
--

INSERT INTO `b_language` (`LID`, `SORT`, `DEF`, `ACTIVE`, `NAME`, `FORMAT_DATE`, `FORMAT_DATETIME`, `FORMAT_NAME`, `WEEK_START`, `CHARSET`, `DIRECTION`, `CULTURE_ID`) VALUES
('en', 2, 'N', 'Y', 'English', NULL, NULL, NULL, NULL, NULL, NULL, 2),
('ru', 1, 'Y', 'Y', 'Russian', NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `b_list_rubric`
--

CREATE TABLE `b_list_rubric` (
  `ID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `SORT` int(11) NOT NULL DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `AUTO` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DAYS_OF_MONTH` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DAYS_OF_WEEK` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMES_OF_DAY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `VISIBLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `FROM_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_medialib_collection`
--

CREATE TABLE `b_medialib_collection` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `DATE_UPDATE` datetime NOT NULL,
  `OWNER_ID` int(11) DEFAULT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEMS_COUNT` int(11) DEFAULT NULL,
  `ML_TYPE` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_medialib_collection_item`
--

CREATE TABLE `b_medialib_collection_item` (
  `COLLECTION_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_medialib_item`
--

CREATE TABLE `b_medialib_item` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_TYPE` char(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `SOURCE_ID` int(11) NOT NULL,
  `KEYWORDS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEARCHABLE_CONTENT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_medialib_type`
--

CREATE TABLE `b_medialib_type` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DESCRIPTION` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_medialib_type`
--

INSERT INTO `b_medialib_type` (`ID`, `NAME`, `CODE`, `EXT`, `SYSTEM`, `DESCRIPTION`) VALUES
(1, 'image_name', 'image', 'jpg,jpeg,gif,png', 'Y', 'image_desc'),
(2, 'video_name', 'video', 'flv,mp4,wmv', 'Y', 'video_desc'),
(3, 'sound_name', 'sound', 'mp3,wma,aac', 'Y', 'sound_desc');

-- --------------------------------------------------------

--
-- Table structure for table `b_mobileapp_app`
--

CREATE TABLE `b_mobileapp_app` (
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SHORT_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci NOT NULL,
  `FILES` text COLLATE utf8_unicode_ci NOT NULL,
  `LAUNCH_ICONS` text COLLATE utf8_unicode_ci NOT NULL,
  `LAUNCH_SCREENS` text COLLATE utf8_unicode_ci NOT NULL,
  `FOLDER` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_mobileapp_config`
--

CREATE TABLE `b_mobileapp_config` (
  `APP_CODE` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PLATFORM` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_module`
--

CREATE TABLE `b_module` (
  `ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_ACTIVE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_module`
--

INSERT INTO `b_module` (`ID`, `DATE_ACTIVE`) VALUES
('b24connector', '2018-02-26 08:38:05'),
('bitrix.sitecorporate', '2018-02-26 08:38:05'),
('bitrix.siteinfoportal', '2018-02-26 08:38:06'),
('bitrix.sitepersonal', '2018-02-26 08:38:06'),
('bitrixcloud', '2018-02-26 08:38:07'),
('blog', '2018-02-26 08:38:23'),
('clouds', '2018-02-26 08:38:30'),
('compression', '2018-02-26 08:38:31'),
('fileman', '2018-02-26 08:38:34'),
('form', '2018-02-26 08:38:46'),
('forum', '2018-02-26 08:39:03'),
('highloadblock', '2018-02-26 08:39:31'),
('iblock', '2018-02-26 08:39:42'),
('main', '2018-02-26 08:37:53'),
('mobileapp', '2018-02-26 08:39:46'),
('perfmon', '2018-02-26 08:39:56'),
('photogallery', '2018-02-26 08:39:56'),
('scale', '2018-02-26 08:39:57'),
('search', '2018-02-26 08:40:03'),
('security', '2018-02-26 08:40:12'),
('seo', '2018-02-26 08:40:22'),
('socialservices', '2018-02-26 08:40:27'),
('subscribe', '2018-02-26 08:40:30'),
('translate', '2018-02-26 08:40:31'),
('ui', '2018-02-26 08:40:32'),
('vote', '2018-02-26 08:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `b_module_group`
--

CREATE TABLE `b_module_group` (
  `ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `G_ACCESS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_module_group`
--

INSERT INTO `b_module_group` (`ID`, `MODULE_ID`, `GROUP_ID`, `G_ACCESS`, `SITE_ID`) VALUES
(1, 'main', 5, 'Q', NULL),
(2, 'fileman', 5, 'F', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_module_to_module`
--

CREATE TABLE `b_module_to_module` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SORT` int(18) NOT NULL DEFAULT '100',
  `FROM_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TO_PATH` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_CLASS` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TO_METHOD_ARG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VERSION` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_module_to_module`
--

INSERT INTO `b_module_to_module` (`ID`, `TIMESTAMP_X`, `SORT`, `FROM_MODULE_ID`, `MESSAGE_ID`, `TO_MODULE_ID`, `TO_PATH`, `TO_CLASS`, `TO_METHOD`, `TO_METHOD_ARG`, `VERSION`) VALUES
(1, '2018-02-26 08:37:53', 100, 'iblock', 'OnIBlockPropertyBuildList', 'main', '/modules/main/tools/prop_userid.php', 'CIBlockPropertyUserID', 'GetUserTypeDescription', '', 1),
(2, '2018-02-26 08:37:54', 100, 'main', 'OnUserDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnUserDelete', '', 1),
(3, '2018-02-26 08:37:54', 100, 'main', 'OnLanguageDelete', 'main', '/modules/main/classes/mysql/favorites.php', 'CFavorites', 'OnLanguageDelete', '', 1),
(4, '2018-02-26 08:37:54', 100, 'main', 'OnUserDelete', 'main', '', 'CUserOptions', 'OnUserDelete', '', 1),
(5, '2018-02-26 08:37:54', 100, 'main', 'OnChangeFile', 'main', '', 'CMain', 'OnChangeFileComponent', '', 1),
(6, '2018-02-26 08:37:54', 100, 'main', 'OnUserTypeRightsCheck', 'main', '', 'CUser', 'UserTypeRightsCheck', '', 1),
(7, '2018-02-26 08:37:54', 100, 'main', 'OnUserLogin', 'main', '', 'UpdateTools', 'CheckUpdates', '', 1),
(8, '2018-02-26 08:37:54', 100, 'main', 'OnModuleUpdate', 'main', '', 'UpdateTools', 'SetUpdateResult', '', 1),
(9, '2018-02-26 08:37:54', 100, 'main', 'OnUpdateCheck', 'main', '', 'UpdateTools', 'SetUpdateError', '', 1),
(10, '2018-02-26 08:37:54', 100, 'main', 'OnPanelCreate', 'main', '', 'CUndo', 'CheckNotifyMessage', '', 1),
(11, '2018-02-26 08:37:54', 100, 'main', 'OnAfterAddRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterAddRating', '', 1),
(12, '2018-02-26 08:37:54', 100, 'main', 'OnAfterUpdateRating', 'main', '', 'CRatingsComponentsMain', 'OnAfterUpdateRating', '', 1),
(13, '2018-02-26 08:37:54', 100, 'main', 'OnSetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnSetRatingConfigs', '', 1),
(14, '2018-02-26 08:37:54', 100, 'main', 'OnGetRatingsConfigs', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingConfigs', '', 1),
(15, '2018-02-26 08:37:54', 100, 'main', 'OnGetRatingsObjects', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingObject', '', 1),
(16, '2018-02-26 08:37:54', 100, 'main', 'OnGetRatingContentOwner', 'main', '', 'CRatingsComponentsMain', 'OnGetRatingContentOwner', '', 1),
(17, '2018-02-26 08:37:54', 100, 'main', 'OnAfterAddRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterAddRatingRule', '', 1),
(18, '2018-02-26 08:37:55', 100, 'main', 'OnAfterUpdateRatingRule', 'main', '', 'CRatingRulesMain', 'OnAfterUpdateRatingRule', '', 1),
(19, '2018-02-26 08:37:55', 100, 'main', 'OnGetRatingRuleObjects', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleObjects', '', 1),
(20, '2018-02-26 08:37:55', 100, 'main', 'OnGetRatingRuleConfigs', 'main', '', 'CRatingRulesMain', 'OnGetRatingRuleConfigs', '', 1),
(21, '2018-02-26 08:37:55', 100, 'main', 'OnAfterUserAdd', 'main', '', 'CRatings', 'OnAfterUserRegister', '', 1),
(22, '2018-02-26 08:37:55', 100, 'main', 'OnUserDelete', 'main', '', 'CRatings', 'OnUserDelete', '', 1),
(23, '2018-02-26 08:37:55', 100, 'main', 'OnUserDelete', 'main', '', 'CAccess', 'OnUserDelete', '', 1),
(24, '2018-02-26 08:37:55', 100, 'main', 'OnAfterGroupAdd', 'main', '', 'CGroupAuthProvider', 'OnAfterGroupAdd', '', 1),
(25, '2018-02-26 08:37:55', 100, 'main', 'OnBeforeGroupUpdate', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupUpdate', '', 1),
(26, '2018-02-26 08:37:55', 100, 'main', 'OnBeforeGroupDelete', 'main', '', 'CGroupAuthProvider', 'OnBeforeGroupDelete', '', 1),
(27, '2018-02-26 08:37:55', 100, 'main', 'OnAfterSetUserGroup', 'main', '', 'CGroupAuthProvider', 'OnAfterSetUserGroup', '', 1),
(28, '2018-02-26 08:37:55', 100, 'main', 'OnUserLogin', 'main', '', 'CGroupAuthProvider', 'OnUserLogin', '', 1),
(29, '2018-02-26 08:37:55', 100, 'main', 'OnEventLogGetAuditTypes', 'main', '', 'CEventMain', 'GetAuditTypes', '', 1),
(30, '2018-02-26 08:37:55', 100, 'main', 'OnEventLogGetAuditHandlers', 'main', '', 'CEventMain', 'MakeMainObject', '', 1),
(31, '2018-02-26 08:37:55', 100, 'perfmon', 'OnGetTableSchema', 'main', '', 'CTableSchema', 'OnGetTableSchema', '', 1),
(32, '2018-02-26 08:37:55', 100, 'sender', 'OnConnectorList', 'main', '', '\\Bitrix\\Main\\SenderEventHandler', 'onConnectorListUser', '', 1),
(33, '2018-02-26 08:37:55', 110, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeString', 'GetUserTypeDescription', '', 1),
(34, '2018-02-26 08:37:55', 120, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeInteger', 'GetUserTypeDescription', '', 1),
(35, '2018-02-26 08:37:56', 130, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDouble', 'GetUserTypeDescription', '', 1),
(36, '2018-02-26 08:37:56', 140, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDateTime', 'GetUserTypeDescription', '', 1),
(37, '2018-02-26 08:37:56', 145, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeDate', 'GetUserTypeDescription', '', 1),
(38, '2018-02-26 08:37:56', 150, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeBoolean', 'GetUserTypeDescription', '', 1),
(39, '2018-02-26 08:37:56', 155, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeUrl', 'GetUserTypeDescription', '', 1),
(40, '2018-02-26 08:37:56', 160, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeFile', 'GetUserTypeDescription', '', 1),
(41, '2018-02-26 08:37:56', 170, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeEnum', 'GetUserTypeDescription', '', 1),
(42, '2018-02-26 08:37:56', 180, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockSection', 'GetUserTypeDescription', '', 1),
(43, '2018-02-26 08:37:56', 190, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeIBlockElement', 'GetUserTypeDescription', '', 1),
(44, '2018-02-26 08:37:56', 200, 'main', 'OnUserTypeBuildList', 'main', '', 'CUserTypeStringFormatted', 'GetUserTypeDescription', '', 1),
(45, '2018-02-26 08:37:56', 210, 'main', 'OnUserTypeBuildList', 'main', '', '\\Bitrix\\Main\\UrlPreview\\UrlPreviewUserType', 'getUserTypeDescription', '', 1),
(46, '2018-02-26 08:37:56', 100, 'main', 'OnBeforeEndBufferContent', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeEndBufferContent', '', 1),
(47, '2018-02-26 08:37:56', 100, 'main', 'OnBeforeRestartBuffer', 'main', '', '\\Bitrix\\Main\\Analytics\\Counter', 'onBeforeRestartBuffer', '', 1),
(48, '2018-02-26 08:37:56', 100, 'disk', 'onAfterAjaxActionCreateFolderWithSharing', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1),
(49, '2018-02-26 08:37:56', 100, 'disk', 'onAfterAjaxActionAppendSharing', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1),
(50, '2018-02-26 08:37:56', 100, 'disk', 'onAfterAjaxActionChangeSharingAndRights', 'main', '', '\\Bitrix\\Main\\FinderDestTable', 'onAfterDiskAjaxAction', '', 1),
(51, '2018-02-26 08:37:56', 100, 'socialnetwork', 'OnSocNetLogDelete', 'main', '', 'CUserCounter', 'OnSocNetLogDelete', '', 1),
(52, '2018-02-26 08:37:56', 100, 'socialnetwork', 'OnSocNetLogCommentDelete', 'main', '', 'CUserCounter', 'OnSocNetLogCommentDelete', '', 1),
(53, '2018-02-26 08:37:58', 100, 'sale', 'OnSaleBasketItemSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogBasket', '', 2),
(54, '2018-02-26 08:37:58', 100, 'sale', 'OnSaleOrderSaved', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrder', '', 2),
(55, '2018-02-26 08:37:58', 100, 'sale', 'OnSaleOrderPaid', 'main', '', '\\Bitrix\\Main\\Analytics\\Catalog', 'catchCatalogOrderPayment', '', 2),
(56, '2018-02-26 08:38:05', 100, 'main', 'OnBuildGlobalMenu', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBuildGlobalMenu', '', 1),
(57, '2018-02-26 08:38:05', 100, 'main', 'OnBeforeProlog', 'b24connector', '', '\\Bitrix\\B24Connector\\Helper', 'onBeforeProlog', '', 1),
(58, '2018-02-26 08:38:06', 100, 'main', 'OnBeforeProlog', 'bitrix.sitecorporate', '', 'CSiteCorporate', 'ShowPanel', '', 1),
(59, '2018-02-26 08:38:06', 100, 'main', 'OnBeforeProlog', 'bitrix.siteinfoportal', '', 'CSiteInfoportal', 'ShowPanel', '', 1),
(60, '2018-02-26 08:38:06', 100, 'main', 'OnBeforeProlog', 'bitrix.sitepersonal', '', 'CSitePersonal', 'ShowPanel', '', 1),
(61, '2018-02-26 08:38:07', 100, 'main', 'OnAdminInformerInsertItems', 'bitrixcloud', '', 'CBitrixCloudCDN', 'OnAdminInformerInsertItems', '', 1),
(62, '2018-02-26 08:38:07', 100, 'main', 'OnAdminInformerInsertItems', 'bitrixcloud', '', 'CBitrixCloudBackup', 'OnAdminInformerInsertItems', '', 1),
(63, '2018-02-26 08:38:08', 100, 'mobileapp', 'OnBeforeAdminMobileMenuBuild', 'bitrixcloud', '', 'CBitrixCloudMobile', 'OnBeforeAdminMobileMenuBuild', '', 1),
(64, '2018-02-26 08:38:23', 100, 'search', 'OnReindex', 'blog', '', 'CBlogSearch', 'OnSearchReindex', '', 1),
(65, '2018-02-26 08:38:23', 100, 'main', 'OnUserDelete', 'blog', '', 'CBlogUser', 'Delete', '', 1),
(66, '2018-02-26 08:38:24', 100, 'main', 'OnSiteDelete', 'blog', '', 'CBlogSitePath', 'DeleteBySiteID', '', 1),
(67, '2018-02-26 08:38:24', 100, 'socialnetwork', 'OnSocNetGroupDelete', 'blog', '', 'CBlogSoNetPost', 'OnGroupDelete', '', 1),
(68, '2018-02-26 08:38:24', 100, 'socialnetwork', 'OnSocNetFeaturesAdd', 'blog', '', 'CBlogSearch', 'SetSoNetFeatureIndexSearch', '', 1),
(69, '2018-02-26 08:38:24', 100, 'socialnetwork', 'OnSocNetFeaturesUpdate', 'blog', '', 'CBlogSearch', 'SetSoNetFeatureIndexSearch', '', 1),
(70, '2018-02-26 08:38:24', 100, 'socialnetwork', 'OnSocNetFeaturesPermsAdd', 'blog', '', 'CBlogSearch', 'SetSoNetFeaturePermIndexSearch', '', 1),
(71, '2018-02-26 08:38:24', 100, 'socialnetwork', 'OnSocNetFeaturesPermsUpdate', 'blog', '', 'CBlogSearch', 'SetSoNetFeaturePermIndexSearch', '', 1),
(72, '2018-02-26 08:38:24', 200, 'main', 'OnAfterAddRating', 'blog', '', 'CRatingsComponentsBlog', 'OnAfterAddRating', '', 1),
(73, '2018-02-26 08:38:24', 200, 'main', 'OnAfterUpdateRating', 'blog', '', 'CRatingsComponentsBlog', 'OnAfterUpdateRating', '', 1),
(74, '2018-02-26 08:38:24', 200, 'main', 'OnSetRatingsConfigs', 'blog', '', 'CRatingsComponentsBlog', 'OnSetRatingConfigs', '', 1),
(75, '2018-02-26 08:38:24', 200, 'main', 'OnGetRatingsConfigs', 'blog', '', 'CRatingsComponentsBlog', 'OnGetRatingConfigs', '', 1),
(76, '2018-02-26 08:38:24', 200, 'main', 'OnGetRatingsObjects', 'blog', '', 'CRatingsComponentsBlog', 'OnGetRatingObject', '', 1),
(77, '2018-02-26 08:38:24', 200, 'main', 'OnGetRatingContentOwner', 'blog', '', 'CRatingsComponentsBlog', 'OnGetRatingContentOwner', '', 1),
(78, '2018-02-26 08:38:24', 100, 'im', 'OnGetNotifySchema', 'blog', '', 'CBlogNotifySchema', 'OnGetNotifySchema', '', 1),
(79, '2018-02-26 08:38:24', 100, 'im', 'OnAnswerNotify', 'blog', '', 'CBlogNotifySchema', 'CBlogEventsIMCallback', '', 1),
(80, '2018-02-26 08:38:24', 100, 'main', 'OnAfterRegisterModule', 'main', '/modules/blog/install/index.php', 'blog', 'installUserFields', '', 1),
(81, '2018-02-26 08:38:24', 100, 'conversion', 'OnGetCounterTypes', 'blog', '', '\\Bitrix\\Blog\\Internals\\ConversionHandlers', 'onGetCounterTypes', '', 1),
(82, '2018-02-26 08:38:24', 100, 'conversion', 'OnGetRateTypes', 'blog', '', '\\Bitrix\\Blog\\Internals\\ConversionHandlers', 'onGetRateTypes', '', 1),
(83, '2018-02-26 08:38:24', 100, 'blog', 'OnPostAdd', 'blog', '', '\\Bitrix\\Blog\\Internals\\ConversionHandlers', 'onPostAdd', '', 1),
(84, '2018-02-26 08:38:25', 100, 'mail', 'onReplyReceivedBLOG_POST', 'blog', '', '\\Bitrix\\Blog\\Internals\\MailHandler', 'handleReplyReceivedBlogPost', '', 2),
(85, '2018-02-26 08:38:25', 100, 'mail', 'onForwardReceivedBLOG_POST', 'blog', '', '\\Bitrix\\Blog\\Internals\\MailHandler', 'handleForwardReceivedBlogPost', '', 2),
(86, '2018-02-26 08:38:25', 100, 'socialnetwork', 'onLogIndexGetContent', 'blog', '', '\\Bitrix\\Blog\\Integration\\Socialnetwork\\Log', 'onIndexGetContent', '', 2),
(87, '2018-02-26 08:38:25', 100, 'socialnetwork', 'onLogCommentIndexGetContent', 'blog', '', '\\Bitrix\\Blog\\Integration\\Socialnetwork\\LogComment', 'onIndexGetContent', '', 2),
(88, '2018-02-26 08:38:25', 100, 'socialnetwork', 'onContentViewed', 'blog', '', '\\Bitrix\\Blog\\Integration\\Socialnetwork\\ContentViewHandler', 'onContentViewed', '', 2),
(89, '2018-02-26 08:38:30', 100, 'main', 'OnEventLogGetAuditTypes', 'clouds', '', 'CCloudStorage', 'GetAuditTypes', '', 1),
(90, '2018-02-26 08:38:30', 100, 'main', 'OnBeforeProlog', 'clouds', '', 'CCloudStorage', 'OnBeforeProlog', '', 1),
(91, '2018-02-26 08:38:30', 100, 'main', 'OnAdminListDisplay', 'clouds', '', 'CCloudStorage', 'OnAdminListDisplay', '', 1),
(92, '2018-02-26 08:38:30', 100, 'main', 'OnBuildGlobalMenu', 'clouds', '', 'CCloudStorage', 'OnBuildGlobalMenu', '', 1),
(93, '2018-02-26 08:38:30', 100, 'main', 'OnFileSave', 'clouds', '', 'CCloudStorage', 'OnFileSave', '', 1),
(94, '2018-02-26 08:38:30', 100, 'main', 'OnGetFileSRC', 'clouds', '', 'CCloudStorage', 'OnGetFileSRC', '', 1),
(95, '2018-02-26 08:38:30', 100, 'main', 'OnFileCopy', 'clouds', '', 'CCloudStorage', 'OnFileCopy', '', 1),
(96, '2018-02-26 08:38:30', 100, 'main', 'OnFileDelete', 'clouds', '', 'CCloudStorage', 'OnFileDelete', '', 1),
(97, '2018-02-26 08:38:30', 100, 'main', 'OnMakeFileArray', 'clouds', '', 'CCloudStorage', 'OnMakeFileArray', '', 1),
(98, '2018-02-26 08:38:30', 100, 'main', 'OnBeforeResizeImage', 'clouds', '', 'CCloudStorage', 'OnBeforeResizeImage', '', 1),
(99, '2018-02-26 08:38:30', 100, 'main', 'OnAfterResizeImage', 'clouds', '', 'CCloudStorage', 'OnAfterResizeImage', '', 1),
(100, '2018-02-26 08:38:31', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_AmazonS3', 'GetObjectInstance', '', 1),
(101, '2018-02-26 08:38:31', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_GoogleStorage', 'GetObjectInstance', '', 1),
(102, '2018-02-26 08:38:31', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_OpenStackStorage', 'GetObjectInstance', '', 1),
(103, '2018-02-26 08:38:31', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_RackSpaceCloudFiles', 'GetObjectInstance', '', 1),
(104, '2018-02-26 08:38:31', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_ClodoRU', 'GetObjectInstance', '', 1),
(105, '2018-02-26 08:38:31', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_Selectel', 'GetObjectInstance', '', 1),
(106, '2018-02-26 08:38:31', 100, 'clouds', 'OnGetStorageService', 'clouds', '', 'CCloudStorageService_HotBox', 'GetObjectInstance', '', 1),
(107, '2018-02-26 08:38:31', 1, 'main', 'OnPageStart', 'compression', '', 'CCompress', 'OnPageStart', '', 1),
(108, '2018-02-26 08:38:31', 10000, 'main', 'OnAfterEpilog', 'compression', '', 'CCompress', 'OnAfterEpilog', '', 1),
(109, '2018-02-26 08:38:34', 100, 'main', 'OnGroupDelete', 'fileman', '', 'CFileman', 'OnGroupDelete', '', 1),
(110, '2018-02-26 08:38:35', 100, 'main', 'OnPanelCreate', 'fileman', '', 'CFileman', 'OnPanelCreate', '', 1),
(111, '2018-02-26 08:38:35', 100, 'main', 'OnModuleUpdate', 'fileman', '', 'CFileman', 'OnModuleUpdate', '', 1),
(112, '2018-02-26 08:38:35', 100, 'main', 'OnModuleInstalled', 'fileman', '', 'CFileman', 'ClearComponentsListCache', '', 1),
(113, '2018-02-26 08:38:35', 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapGoogle', 'GetUserTypeDescription', '', 1),
(114, '2018-02-26 08:38:35', 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyMapYandex', 'GetUserTypeDescription', '', 1),
(115, '2018-02-26 08:38:35', 100, 'iblock', 'OnIBlockPropertyBuildList', 'fileman', '', 'CIBlockPropertyVideo', 'GetUserTypeDescription', '', 1),
(116, '2018-02-26 08:38:35', 100, 'main', 'OnUserTypeBuildList', 'fileman', '', 'CUserTypeVideo', 'GetUserTypeDescription', '', 1),
(117, '2018-02-26 08:38:35', 100, 'main', 'OnEventLogGetAuditTypes', 'fileman', '', 'CEventFileman', 'GetAuditTypes', '', 1),
(118, '2018-02-26 08:38:35', 100, 'main', 'OnEventLogGetAuditHandlers', 'fileman', '', 'CEventFileman', 'MakeFilemanObject', '', 1),
(119, '2018-02-26 08:38:35', 154, 'main', 'OnUserTypeBuildList', 'fileman', '', '\\Bitrix\\Fileman\\UserField\\Address', 'getUserTypeDescription', '', 1),
(120, '2018-02-26 08:38:46', 100, 'sender', 'OnConnectorList', 'form', '', '\\Bitrix\\Form\\SenderEventHandler', 'onConnectorListForm', '', 1),
(121, '2018-02-26 08:39:03', 100, 'main', 'OnAfterUserUpdate', 'forum', '', 'CForumUser', 'OnAfterUserUpdate', '', 1),
(122, '2018-02-26 08:39:03', 100, 'main', 'OnGroupDelete', 'forum', '', 'CForumNew', 'OnGroupDelete', '', 1),
(123, '2018-02-26 08:39:03', 100, 'main', 'OnBeforeLangDelete', 'forum', '', 'CForumNew', 'OnBeforeLangDelete', '', 1),
(124, '2018-02-26 08:39:03', 100, 'main', 'OnFileDelete', 'forum', '', 'CForumFiles', 'OnFileDelete', '', 1),
(125, '2018-02-26 08:39:03', 100, 'search', 'OnReindex', 'forum', '', 'CForumNew', 'OnReindex', '', 1),
(126, '2018-02-26 08:39:03', 100, 'main', 'OnUserDelete', 'forum', '', 'CForumUser', 'OnUserDelete', '', 1),
(127, '2018-02-26 08:39:03', 100, 'iblock', 'OnIBlockPropertyBuildList', 'main', '/modules/forum/tools/prop_topicid.php', 'CIBlockPropertyTopicID', 'GetUserTypeDescription', '', 1),
(128, '2018-02-26 08:39:03', 100, 'iblock', 'OnBeforeIBlockElementDelete', 'forum', '', 'CForumTopic', 'OnBeforeIBlockElementDelete', '', 1),
(129, '2018-02-26 08:39:03', 100, 'main', 'OnEventLogGetAuditTypes', 'forum', '', 'CForumEventLog', 'GetAuditTypes', '', 1),
(130, '2018-02-26 08:39:04', 100, 'main', 'OnEventLogGetAuditHandlers', 'forum', '', 'CEventForum', 'MakeForumObject', '', 1),
(131, '2018-02-26 08:39:04', 100, 'socialnetwork', 'OnSocNetGroupDelete', 'forum', '', 'CForumUser', 'OnSocNetGroupDelete', '', 1),
(132, '2018-02-26 08:39:04', 100, 'socialnetwork', 'OnSocNetLogFormatEvent', 'forum', '', 'CForumMessage', 'OnSocNetLogFormatEvent', '', 1),
(133, '2018-02-26 08:39:04', 100, 'mail', 'OnGetFilterList', 'forum', '', 'CForumEMail', 'OnGetSocNetFilterList', '', 1),
(134, '2018-02-26 08:39:04', 100, 'main', 'OnAfterAddRating', 'forum', '', 'CRatingsComponentsForum', 'OnAfterAddRating', '', 1),
(135, '2018-02-26 08:39:04', 100, 'main', 'OnAfterUpdateRating', 'forum', '', 'CRatingsComponentsForum', 'OnAfterUpdateRating', '', 1),
(136, '2018-02-26 08:39:04', 100, 'main', 'OnSetRatingsConfigs', 'forum', '', 'CRatingsComponentsForum', 'OnSetRatingConfigs', '', 1),
(137, '2018-02-26 08:39:04', 100, 'main', 'OnGetRatingsConfigs', 'forum', '', 'CRatingsComponentsForum', 'OnGetRatingConfigs', '', 1),
(138, '2018-02-26 08:39:04', 100, 'main', 'OnGetRatingsObjects', 'forum', '', 'CRatingsComponentsForum', 'OnGetRatingObject', '', 1),
(139, '2018-02-26 08:39:04', 100, 'main', 'OnGetRatingContentOwner', 'forum', '', 'CRatingsComponentsForum', 'OnGetRatingContentOwner', '', 1),
(140, '2018-02-26 08:39:04', 100, 'im', 'OnGetNotifySchema', 'forum', '', 'CForumNotifySchema', 'OnGetNotifySchema', '', 1),
(141, '2018-02-26 08:39:04', 100, 'main', 'OnAfterRegisterModule', 'main', '/modules/forum/install/index.php', 'forum', 'InstallUserFields', '', 1),
(142, '2018-02-26 08:39:04', 100, 'conversion', 'OnGetCounterTypes', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onGetCounterTypes', '', 1),
(143, '2018-02-26 08:39:04', 100, 'conversion', 'OnGetRateTypes', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onGetRateTypes', '', 1),
(144, '2018-02-26 08:39:04', 100, 'forum', 'onAfterTopicAdd', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onTopicAdd', '', 1),
(145, '2018-02-26 08:39:04', 100, 'forum', 'onAfterMessageAdd', 'forum', '', '\\Bitrix\\Forum\\Internals\\ConversionHandlers', 'onMessageAdd', '', 1),
(146, '2018-02-26 08:39:04', 100, 'socialnetwork', 'onLogIndexGetContent', 'forum', '', '\\Bitrix\\Forum\\Integration\\Socialnetwork\\Log', 'onIndexGetContent', '', 2),
(147, '2018-02-26 08:39:05', 100, 'socialnetwork', 'onLogCommentIndexGetContent', 'forum', '', '\\Bitrix\\Forum\\Integration\\Socialnetwork\\LogComment', 'onIndexGetContent', '', 2),
(148, '2018-02-26 08:39:05', 100, 'socialnetwork', 'onContentViewed', 'forum', '', '\\Bitrix\\Forum\\Integration\\Socialnetwork\\ContentViewHandler', 'onContentViewed', '', 2),
(149, '2018-02-26 08:39:31', 100, 'main', 'OnBeforeUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeAdd', '', 1),
(150, '2018-02-26 08:39:31', 100, 'main', 'OnAfterUserTypeAdd', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'onAfterUserTypeAdd', '', 1),
(151, '2018-02-26 08:39:31', 100, 'main', 'OnBeforeUserTypeDelete', 'highloadblock', '', '\\Bitrix\\Highloadblock\\HighloadBlockTable', 'OnBeforeUserTypeDelete', '', 1),
(152, '2018-02-26 08:39:31', 100, 'main', 'OnUserTypeBuildList', 'highloadblock', '', 'CUserTypeHlblock', 'GetUserTypeDescription', '', 1),
(153, '2018-02-26 08:39:31', 100, 'iblock', 'OnIBlockPropertyBuildList', 'highloadblock', '', 'CIBlockPropertyDirectory', 'GetUserTypeDescription', '', 1),
(154, '2018-02-26 08:39:42', 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlock', 'OnGroupDelete', '', 1),
(155, '2018-02-26 08:39:42', 100, 'main', 'OnBeforeLangDelete', 'iblock', '', 'CIBlock', 'OnBeforeLangDelete', '', 1),
(156, '2018-02-26 08:39:42', 100, 'main', 'OnLangDelete', 'iblock', '', 'CIBlock', 'OnLangDelete', '', 1),
(157, '2018-02-26 08:39:42', 100, 'main', 'OnUserTypeRightsCheck', 'iblock', '', 'CIBlockSection', 'UserTypeRightsCheck', '', 1),
(158, '2018-02-26 08:39:42', 100, 'search', 'OnReindex', 'iblock', '', 'CIBlock', 'OnSearchReindex', '', 1),
(159, '2018-02-26 08:39:42', 100, 'search', 'OnSearchGetURL', 'iblock', '', 'CIBlock', 'OnSearchGetURL', '', 1),
(160, '2018-02-26 08:39:42', 100, 'main', 'OnEventLogGetAuditTypes', 'iblock', '', 'CIBlock', 'GetAuditTypes', '', 1),
(161, '2018-02-26 08:39:42', 100, 'main', 'OnEventLogGetAuditHandlers', 'iblock', '', 'CEventIBlock', 'MakeIBlockObject', '', 1),
(162, '2018-02-26 08:39:42', 200, 'main', 'OnGetRatingContentOwner', 'iblock', '', 'CRatingsComponentsIBlock', 'OnGetRatingContentOwner', '', 1),
(163, '2018-02-26 08:39:42', 100, 'main', 'OnTaskOperationsChanged', 'iblock', '', 'CIBlockRightsStorage', 'OnTaskOperationsChanged', '', 1),
(164, '2018-02-26 08:39:42', 100, 'main', 'OnGroupDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnGroupDelete', '', 1),
(165, '2018-02-26 08:39:42', 100, 'main', 'OnUserDelete', 'iblock', '', 'CIBlockRightsStorage', 'OnUserDelete', '', 1),
(166, '2018-02-26 08:39:42', 100, 'perfmon', 'OnGetTableSchema', 'iblock', '', 'iblock', 'OnGetTableSchema', '', 1),
(167, '2018-02-26 08:39:43', 100, 'sender', 'OnConnectorList', 'iblock', '', '\\Bitrix\\Iblock\\SenderEventHandler', 'onConnectorListIblock', '', 1),
(168, '2018-02-26 08:39:43', 10, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDate', 'GetUserTypeDescription', '', 1),
(169, '2018-02-26 08:39:43', 20, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyDateTime', 'GetUserTypeDescription', '', 1),
(170, '2018-02-26 08:39:43', 30, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyXmlID', 'GetUserTypeDescription', '', 1),
(171, '2018-02-26 08:39:43', 40, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyFileMan', 'GetUserTypeDescription', '', 1),
(172, '2018-02-26 08:39:43', 50, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyHTML', 'GetUserTypeDescription', '', 1),
(173, '2018-02-26 08:39:43', 60, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementList', 'GetUserTypeDescription', '', 1),
(174, '2018-02-26 08:39:43', 70, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySequence', 'GetUserTypeDescription', '', 1),
(175, '2018-02-26 08:39:43', 80, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertyElementAutoComplete', 'GetUserTypeDescription', '', 1),
(176, '2018-02-26 08:39:43', 90, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySKU', 'GetUserTypeDescription', '', 1),
(177, '2018-02-26 08:39:43', 100, 'iblock', 'OnIBlockPropertyBuildList', 'iblock', '', 'CIBlockPropertySectionAutoComplete', 'GetUserTypeDescription', '', 1),
(178, '2018-02-26 08:39:46', 100, 'pull', 'OnGetDependentModule', 'mobileapp', '', 'CMobileAppPullSchema', 'OnGetDependentModule', '', 1),
(179, '2018-02-26 08:39:56', 100, 'perfmon', 'OnGetTableSchema', 'perfmon', '', 'perfmon', 'OnGetTableSchema', '', 1),
(180, '2018-02-26 08:39:56', 100, 'iblock', 'OnBeforeIBlockElementDelete', 'photogallery', '', 'CPhotogalleryElement', 'OnBeforeIBlockElementDelete', '', 1),
(181, '2018-02-26 08:39:56', 100, 'iblock', 'OnAfterIBlockElementAdd', 'photogallery', '', 'CPhotogalleryElement', 'OnAfterIBlockElementAdd', '', 1),
(182, '2018-02-26 08:39:56', 100, 'search', 'BeforeIndex', 'photogallery', '', 'CRatingsComponentsPhotogallery', 'BeforeIndex', '', 1),
(183, '2018-02-26 08:39:57', 100, 'im', 'OnGetNotifySchema', 'photogallery', '', 'CPhotogalleryNotifySchema', 'OnGetNotifySchema', '', 1),
(184, '2018-02-26 08:39:57', 100, 'main', 'OnEventLogGetAuditTypes', 'scale', '', '\\Bitrix\\Scale\\Logger', 'onEventLogGetAuditTypes', '', 1),
(185, '2018-02-26 08:40:03', 100, 'main', 'OnChangePermissions', 'search', '', 'CSearch', 'OnChangeFilePermissions', '', 1),
(186, '2018-02-26 08:40:03', 100, 'main', 'OnChangeFile', 'search', '', 'CSearch', 'OnChangeFile', '', 1),
(187, '2018-02-26 08:40:03', 100, 'main', 'OnGroupDelete', 'search', '', 'CSearch', 'OnGroupDelete', '', 1),
(188, '2018-02-26 08:40:03', 100, 'main', 'OnLangDelete', 'search', '', 'CSearch', 'OnLangDelete', '', 1),
(189, '2018-02-26 08:40:03', 100, 'main', 'OnAfterUserUpdate', 'search', '', 'CSearchUser', 'OnAfterUserUpdate', '', 1),
(190, '2018-02-26 08:40:04', 100, 'main', 'OnUserDelete', 'search', '', 'CSearchUser', 'DeleteByUserID', '', 1),
(191, '2018-02-26 08:40:04', 100, 'cluster', 'OnGetTableList', 'search', '', 'search', 'OnGetTableList', '', 1),
(192, '2018-02-26 08:40:04', 100, 'perfmon', 'OnGetTableSchema', 'search', '', 'search', 'OnGetTableSchema', '', 1),
(193, '2018-02-26 08:40:04', 90, 'main', 'OnEpilog', 'search', '', 'CSearchStatistic', 'OnEpilog', '', 1),
(194, '2018-02-26 08:40:12', 100, 'main', 'OnUserDelete', 'security', '', 'CSecurityUser', 'OnUserDelete', '', 1),
(195, '2018-02-26 08:40:12', 100, 'main', 'OnEventLogGetAuditTypes', 'security', '', 'CSecurityFilter', 'GetAuditTypes', '', 1),
(196, '2018-02-26 08:40:12', 100, 'main', 'OnEventLogGetAuditTypes', 'security', '', 'CSecurityAntiVirus', 'GetAuditTypes', '', 1),
(197, '2018-02-26 08:40:12', 100, 'main', 'OnAdminInformerInsertItems', 'security', '', 'CSecurityFilter', 'OnAdminInformerInsertItems', '', 1),
(198, '2018-02-26 08:40:13', 100, 'main', 'OnAdminInformerInsertItems', 'security', '', 'CSecuritySiteChecker', 'OnAdminInformerInsertItems', '', 1),
(199, '2018-02-26 08:40:13', 5, 'main', 'OnBeforeProlog', 'security', '', 'CSecurityFilter', 'OnBeforeProlog', '', 1),
(200, '2018-02-26 08:40:13', 9999, 'main', 'OnEndBufferContent', 'security', '', 'CSecurityXSSDetect', 'OnEndBufferContent', '', 1),
(201, '2018-02-26 08:40:13', 1, 'main', 'OnBeforeLocalRedirect', 'security', '', 'CSecurityRedirect', 'BeforeLocalRedirect', '', 1),
(202, '2018-02-26 08:40:13', 1, 'main', 'OnEndBufferContent', 'security', '', 'CSecurityRedirect', 'EndBufferContent', '', 1),
(203, '2018-02-26 08:40:22', 100, 'main', 'OnPanelCreate', 'seo', '', 'CSeoEventHandlers', 'SeoOnPanelCreate', '', 2),
(204, '2018-02-26 08:40:23', 100, 'fileman', 'OnIncludeHTMLEditorScript', 'seo', '', 'CSeoEventHandlers', 'OnIncludeHTMLEditorScript', '', 2),
(205, '2018-02-26 08:40:23', 100, 'fileman', 'OnBeforeHTMLEditorScriptRuns', 'seo', '', 'CSeoEventHandlers', 'OnBeforeHTMLEditorScriptRuns', '', 2),
(206, '2018-02-26 08:40:23', 100, 'iblock', 'OnAfterIBlockSectionAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addSection', '', 2),
(207, '2018-02-26 08:40:23', 100, 'iblock', 'OnAfterIBlockElementAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'addElement', '', 2),
(208, '2018-02-26 08:40:23', 100, 'iblock', 'OnBeforeIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteSection', '', 2),
(209, '2018-02-26 08:40:23', 100, 'iblock', 'OnBeforeIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeDeleteElement', '', 2),
(210, '2018-02-26 08:40:23', 100, 'iblock', 'OnAfterIBlockSectionDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteSection', '', 2),
(211, '2018-02-26 08:40:23', 100, 'iblock', 'OnAfterIBlockElementDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'deleteElement', '', 2),
(212, '2018-02-26 08:40:23', 100, 'iblock', 'OnBeforeIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateSection', '', 2),
(213, '2018-02-26 08:40:23', 100, 'iblock', 'OnBeforeIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'beforeUpdateElement', '', 2),
(214, '2018-02-26 08:40:23', 100, 'iblock', 'OnAfterIBlockSectionUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateSection', '', 2),
(215, '2018-02-26 08:40:23', 100, 'iblock', 'OnAfterIBlockElementUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapIblock', 'updateElement', '', 2),
(216, '2018-02-26 08:40:23', 100, 'forum', 'onAfterTopicAdd', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'addTopic', '', 2),
(217, '2018-02-26 08:40:23', 100, 'forum', 'onAfterTopicUpdate', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'updateTopic', '', 2),
(218, '2018-02-26 08:40:23', 100, 'forum', 'onAfterTopicDelete', 'seo', '', '\\Bitrix\\Seo\\SitemapForum', 'deleteTopic', '', 2),
(219, '2018-02-26 08:40:23', 100, 'main', 'OnAdminIBlockElementEdit', 'seo', '', '\\Bitrix\\Seo\\AdvTabEngine', 'eventHandler', '', 2),
(220, '2018-02-26 08:40:23', 100, 'main', 'OnBeforeProlog', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'checkSession', '', 2),
(221, '2018-02-26 08:40:24', 100, 'sale', 'OnOrderSave', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onOrderSave', '', 2),
(222, '2018-02-26 08:40:24', 100, 'sale', 'OnBasketOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onBasketOrder', '', 2),
(223, '2018-02-26 08:40:24', 100, 'sale', 'onSalePayOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSalePayOrder', '', 2),
(224, '2018-02-26 08:40:24', 100, 'sale', 'onSaleDeductOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeductOrder', '', 2),
(225, '2018-02-26 08:40:24', 100, 'sale', 'onSaleDeliveryOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleDeliveryOrder', '', 2),
(226, '2018-02-26 08:40:24', 100, 'sale', 'onSaleStatusOrder', 'seo', '', '\\Bitrix\\Seo\\AdvSession', 'onSaleStatusOrder', '', 2),
(227, '2018-02-26 08:40:24', 100, 'conversion', 'OnSetDayContextAttributes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onSetDayContextAttributes', '', 2),
(228, '2018-02-26 08:40:24', 100, 'conversion', 'OnGetAttributeTypes', 'seo', '', '\\Bitrix\\Seo\\ConversionHandler', 'onGetAttributeTypes', '', 2),
(229, '2018-02-26 08:40:24', 100, 'catalog', 'OnProductUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2),
(230, '2018-02-26 08:40:24', 100, 'catalog', 'OnProductSetAvailableUpdate', 'seo', '', '\\Bitrix\\Seo\\Adv\\Auto', 'checkQuantity', '', 2),
(231, '2018-02-26 08:40:27', 100, 'main', 'OnUserDelete', 'socialservices', '', 'CSocServAuthDB', 'OnUserDelete', '', 1),
(232, '2018-02-26 08:40:27', 100, 'timeman', 'OnAfterTMReportDailyAdd', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMReportDailyAdd', '', 1),
(233, '2018-02-26 08:40:27', 100, 'timeman', 'OnAfterTMDayStart', 'socialservices', '', 'CSocServAuthDB', 'OnAfterTMDayStart', '', 1),
(234, '2018-02-26 08:40:27', 100, 'timeman', 'OnTimeManShow', 'socialservices', '', 'CSocServEventHandlers', 'OnTimeManShow', '', 1),
(235, '2018-02-26 08:40:27', 100, 'main', 'OnFindExternalUser', 'socialservices', '', 'CSocServAuthDB', 'OnFindExternalUser', '', 1),
(236, '2018-02-26 08:40:27', 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkOldUser', '', 1),
(237, '2018-02-26 08:40:27', 100, 'socialservices', 'OnFindSocialservicesUser', 'socialservices', '', 'CSocServAuthManager', 'checkAbandonedUser', '', 1),
(238, '2018-02-26 08:40:30', 100, 'main', 'OnBeforeLangDelete', 'subscribe', '', 'CRubric', 'OnBeforeLangDelete', '', 1),
(239, '2018-02-26 08:40:30', 100, 'main', 'OnUserDelete', 'subscribe', '', 'CSubscription', 'OnUserDelete', '', 1),
(240, '2018-02-26 08:40:31', 100, 'main', 'OnUserLogout', 'subscribe', '', 'CSubscription', 'OnUserLogout', '', 1),
(241, '2018-02-26 08:40:31', 100, 'main', 'OnGroupDelete', 'subscribe', '', 'CPosting', 'OnGroupDelete', '', 1),
(242, '2018-02-26 08:40:31', 100, 'sender', 'OnConnectorList', 'subscribe', '', 'Bitrix\\Subscribe\\SenderEventHandler', 'onConnectorListSubscriber', '', 1),
(243, '2018-02-26 08:40:31', 100, 'main', 'OnPanelCreate', 'translate', '', 'CTranslateEventHandlers', 'TranslatOnPanelCreate', '', 1),
(244, '2018-02-26 08:40:36', 100, 'main', 'OnBeforeProlog', 'main', '/modules/vote/keepvoting.php', '', '', '', 1),
(245, '2018-02-26 08:40:36', 200, 'main', 'OnUserTypeBuildList', 'vote', '', 'Bitrix\\Vote\\Uf\\VoteUserType', 'getUserTypeDescription', '', 1),
(246, '2018-02-26 08:40:36', 200, 'main', 'OnUserLogin', 'vote', '', 'CVoteUser', 'OnUserLogin', '', 1),
(247, '2018-02-26 08:40:36', 100, 'im', 'OnGetNotifySchema', 'vote', '', 'CVoteNotifySchema', 'OnGetNotifySchema', '', 1),
(248, '2018-02-26 08:41:15', 100, 'main', 'OnBeforeProlog', 'main', '/modules/main/install/wizard_sol/panel_button.php', 'CWizardSolPanel', 'ShowPanel', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `b_operation`
--

CREATE TABLE `b_operation` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_operation`
--

INSERT INTO `b_operation` (`ID`, `NAME`, `MODULE_ID`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'edit_php', 'main', NULL, 'module'),
(2, 'view_own_profile', 'main', NULL, 'module'),
(3, 'edit_own_profile', 'main', NULL, 'module'),
(4, 'view_all_users', 'main', NULL, 'module'),
(5, 'view_groups', 'main', NULL, 'module'),
(6, 'view_tasks', 'main', NULL, 'module'),
(7, 'view_other_settings', 'main', NULL, 'module'),
(8, 'view_subordinate_users', 'main', NULL, 'module'),
(9, 'edit_subordinate_users', 'main', NULL, 'module'),
(10, 'edit_all_users', 'main', NULL, 'module'),
(11, 'edit_groups', 'main', NULL, 'module'),
(12, 'edit_tasks', 'main', NULL, 'module'),
(13, 'edit_other_settings', 'main', NULL, 'module'),
(14, 'cache_control', 'main', NULL, 'module'),
(15, 'lpa_template_edit', 'main', NULL, 'module'),
(16, 'view_event_log', 'main', NULL, 'module'),
(17, 'edit_ratings', 'main', NULL, 'module'),
(18, 'manage_short_uri', 'main', NULL, 'module'),
(19, 'fm_view_permission', 'main', NULL, 'file'),
(20, 'fm_view_file', 'main', NULL, 'file'),
(21, 'fm_view_listing', 'main', NULL, 'file'),
(22, 'fm_edit_existent_folder', 'main', NULL, 'file'),
(23, 'fm_create_new_file', 'main', NULL, 'file'),
(24, 'fm_edit_existent_file', 'main', NULL, 'file'),
(25, 'fm_create_new_folder', 'main', NULL, 'file'),
(26, 'fm_delete_file', 'main', NULL, 'file'),
(27, 'fm_delete_folder', 'main', NULL, 'file'),
(28, 'fm_edit_in_workflow', 'main', NULL, 'file'),
(29, 'fm_rename_file', 'main', NULL, 'file'),
(30, 'fm_rename_folder', 'main', NULL, 'file'),
(31, 'fm_upload_file', 'main', NULL, 'file'),
(32, 'fm_add_to_menu', 'main', NULL, 'file'),
(33, 'fm_download_file', 'main', NULL, 'file'),
(34, 'fm_lpa', 'main', NULL, 'file'),
(35, 'fm_edit_permission', 'main', NULL, 'file'),
(36, 'bitrixcloud_monitoring', 'bitrixcloud', NULL, 'module'),
(37, 'bitrixcloud_backup', 'bitrixcloud', NULL, 'module'),
(38, 'bitrixcloud_cdn', 'bitrixcloud', NULL, 'module'),
(39, 'clouds_browse', 'clouds', NULL, 'module'),
(40, 'clouds_upload', 'clouds', NULL, 'module'),
(41, 'clouds_config', 'clouds', NULL, 'module'),
(42, 'fileman_view_all_settings', 'fileman', '', 'module'),
(43, 'fileman_edit_menu_types', 'fileman', '', 'module'),
(44, 'fileman_add_element_to_menu', 'fileman', '', 'module'),
(45, 'fileman_edit_menu_elements', 'fileman', '', 'module'),
(46, 'fileman_edit_existent_files', 'fileman', '', 'module'),
(47, 'fileman_edit_existent_folders', 'fileman', '', 'module'),
(48, 'fileman_admin_files', 'fileman', '', 'module'),
(49, 'fileman_admin_folders', 'fileman', '', 'module'),
(50, 'fileman_view_permissions', 'fileman', '', 'module'),
(51, 'fileman_edit_all_settings', 'fileman', '', 'module'),
(52, 'fileman_upload_files', 'fileman', '', 'module'),
(53, 'fileman_view_file_structure', 'fileman', '', 'module'),
(54, 'fileman_install_control', 'fileman', '', 'module'),
(55, 'medialib_view_collection', 'fileman', '', 'medialib'),
(56, 'medialib_new_collection', 'fileman', '', 'medialib'),
(57, 'medialib_edit_collection', 'fileman', '', 'medialib'),
(58, 'medialib_del_collection', 'fileman', '', 'medialib'),
(59, 'medialib_access', 'fileman', '', 'medialib'),
(60, 'medialib_new_item', 'fileman', '', 'medialib'),
(61, 'medialib_edit_item', 'fileman', '', 'medialib'),
(62, 'medialib_del_item', 'fileman', '', 'medialib'),
(63, 'sticker_view', 'fileman', '', 'stickers'),
(64, 'sticker_edit', 'fileman', '', 'stickers'),
(65, 'sticker_new', 'fileman', '', 'stickers'),
(66, 'sticker_del', 'fileman', '', 'stickers'),
(67, 'hl_element_read', 'highloadblock', NULL, 'module'),
(68, 'hl_element_write', 'highloadblock', NULL, 'module'),
(69, 'hl_element_delete', 'highloadblock', NULL, 'module'),
(70, 'section_read', 'iblock', NULL, 'iblock'),
(71, 'element_read', 'iblock', NULL, 'iblock'),
(72, 'section_element_bind', 'iblock', NULL, 'iblock'),
(73, 'iblock_admin_display', 'iblock', NULL, 'iblock'),
(74, 'element_edit', 'iblock', NULL, 'iblock'),
(75, 'element_edit_price', 'iblock', NULL, 'iblock'),
(76, 'element_delete', 'iblock', NULL, 'iblock'),
(77, 'element_bizproc_start', 'iblock', NULL, 'iblock'),
(78, 'section_edit', 'iblock', NULL, 'iblock'),
(79, 'section_delete', 'iblock', NULL, 'iblock'),
(80, 'section_section_bind', 'iblock', NULL, 'iblock'),
(81, 'element_edit_any_wf_status', 'iblock', NULL, 'iblock'),
(82, 'iblock_edit', 'iblock', NULL, 'iblock'),
(83, 'iblock_delete', 'iblock', NULL, 'iblock'),
(84, 'iblock_rights_edit', 'iblock', NULL, 'iblock'),
(85, 'iblock_export', 'iblock', NULL, 'iblock'),
(86, 'section_rights_edit', 'iblock', NULL, 'iblock'),
(87, 'element_rights_edit', 'iblock', NULL, 'iblock'),
(88, 'security_filter_bypass', 'security', NULL, 'module'),
(89, 'security_edit_user_otp', 'security', NULL, 'module'),
(90, 'security_module_settings_read', 'security', NULL, 'module'),
(91, 'security_panel_view', 'security', NULL, 'module'),
(92, 'security_filter_settings_read', 'security', NULL, 'module'),
(93, 'security_otp_settings_read', 'security', NULL, 'module'),
(94, 'security_iprule_admin_settings_read', 'security', NULL, 'module'),
(95, 'security_session_settings_read', 'security', NULL, 'module'),
(96, 'security_redirect_settings_read', 'security', NULL, 'module'),
(97, 'security_stat_activity_settings_read', 'security', NULL, 'module'),
(98, 'security_iprule_settings_read', 'security', NULL, 'module'),
(99, 'security_antivirus_settings_read', 'security', NULL, 'module'),
(100, 'security_frame_settings_read', 'security', NULL, 'module'),
(101, 'security_module_settings_write', 'security', NULL, 'module'),
(102, 'security_filter_settings_write', 'security', NULL, 'module'),
(103, 'security_otp_settings_write', 'security', NULL, 'module'),
(104, 'security_iprule_admin_settings_write', 'security', NULL, 'module'),
(105, 'security_session_settings_write', 'security', NULL, 'module'),
(106, 'security_redirect_settings_write', 'security', NULL, 'module'),
(107, 'security_stat_activity_settings_write', 'security', NULL, 'module'),
(108, 'security_iprule_settings_write', 'security', NULL, 'module'),
(109, 'security_file_verifier_sign', 'security', NULL, 'module'),
(110, 'security_file_verifier_collect', 'security', NULL, 'module'),
(111, 'security_file_verifier_verify', 'security', NULL, 'module'),
(112, 'security_antivirus_settings_write', 'security', NULL, 'module'),
(113, 'security_frame_settings_write', 'security', NULL, 'module'),
(114, 'seo_settings', 'seo', '', 'module'),
(115, 'seo_tools', 'seo', '', 'module');

-- --------------------------------------------------------

--
-- Table structure for table `b_option`
--

CREATE TABLE `b_option` (
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_option`
--

INSERT INTO `b_option` (`MODULE_ID`, `NAME`, `VALUE`, `DESCRIPTION`, `SITE_ID`) VALUES
('main', '~ft_b_user', 'a:3:{s:19:"SEARCH_USER_CONTENT";b:1;s:25:"SEARCH_DEPARTMENT_CONTENT";b:1;s:20:"SEARCH_ADMIN_CONTENT";b:1;}', NULL, NULL),
('main', 'rating_authority_rating', '2', NULL, NULL),
('main', 'rating_assign_rating_group_add', '1', NULL, NULL),
('main', 'rating_assign_rating_group_delete', '1', NULL, NULL),
('main', 'rating_assign_rating_group', '3', NULL, NULL),
('main', 'rating_assign_authority_group_add', '2', NULL, NULL),
('main', 'rating_assign_authority_group_delete', '2', NULL, NULL),
('main', 'rating_assign_authority_group', '4', NULL, NULL),
('main', 'rating_community_size', '1', NULL, NULL),
('main', 'rating_community_authority', '30', NULL, NULL),
('main', 'rating_vote_weight', '10', NULL, NULL),
('main', 'rating_normalization_type', 'auto', NULL, NULL),
('main', 'rating_normalization', '10', NULL, NULL),
('main', 'rating_count_vote', '10', NULL, NULL),
('main', 'rating_authority_weight_formula', 'Y', NULL, NULL),
('main', 'rating_community_last_visit', '90', NULL, NULL),
('main', 'rating_text_like_y', 'Нравится', NULL, NULL),
('main', 'rating_text_like_n', 'Не нравится', NULL, NULL),
('main', 'rating_text_like_d', 'Это нравится', NULL, NULL),
('main', 'rating_assign_type', 'auto', NULL, NULL),
('main', 'rating_vote_type', 'like', NULL, NULL),
('main', 'rating_self_vote', 'Y', NULL, NULL),
('main', 'rating_vote_show', 'Y', NULL, NULL),
('main', 'rating_vote_template', 'like', NULL, NULL),
('main', 'rating_start_authority', '3', NULL, NULL),
('main', 'PARAM_MAX_SITES', '2', NULL, NULL),
('main', 'PARAM_MAX_USERS', '0', NULL, NULL),
('main', 'distributive6', 'Y', NULL, NULL),
('main', '~new_license11_sign', 'Y', NULL, NULL),
('main', 'GROUP_DEFAULT_TASK', '1', NULL, NULL),
('main', 'vendor', '1c_bitrix', NULL, NULL),
('main', 'admin_lid', 'ru', NULL, NULL),
('main', 'update_site', 'www.bitrixsoft.com', NULL, NULL),
('main', 'update_site_ns', 'Y', NULL, NULL),
('main', 'optimize_css_files', 'Y', NULL, NULL),
('main', 'optimize_js_files', 'Y', NULL, NULL),
('main', 'admin_passwordh', 'FVoQe2YUBgYtCUVcDxcPCgsTAQ==', NULL, NULL),
('main', 'server_uniq_id', '4d9226081a3af29b6b348a6d790638c3', NULL, NULL),
('blog', 'socNetNewPerms', 'Y', NULL, NULL),
('fileman', 'use_editor_3', 'Y', NULL, NULL),
('forum', 'FILTER_DICT_W', '1', NULL, 'ru'),
('forum', 'FILTER_DICT_T', '2', NULL, 'ru'),
('forum', 'FILTER_DICT_W', '3', NULL, 'en'),
('forum', 'FILTER_DICT_T', '4', NULL, 'en'),
('forum', 'FILTER', 'N', NULL, NULL),
('search', 'version', 'v2.0', NULL, NULL),
('search', 'dbnode_id', 'N', NULL, NULL),
('search', 'dbnode_status', 'ok', NULL, NULL),
('security', 'ipcheck_disable_file', '/bitrix/modules/ipcheck_disable_273af035307de8c993c50511962a49e7', NULL, NULL),
('security', 'redirect_sid', 'xqiszb6osycbmezh6zwpvlgatrvmtcda', NULL, NULL),
('vote', 'VOTE_DIR', '', NULL, NULL),
('vote', 'VOTE_COMPATIBLE_OLD_TEMPLATE', 'N', NULL, NULL),
('main', 'email_from', 'admin@ad.min', NULL, NULL),
('fileman', 'different_set', 'Y', NULL, NULL),
('fileman', 'menutypes', 'a:3:{s:4:\\"left\\";s:19:\\"Левое меню\\";s:3:\\"top\\";s:23:\\"Верхнее меню\\";s:6:\\"bottom\\";s:21:\\"Нижнее меню\\";}', NULL, 's1'),
('main', 'wizard_template_id', 'furniture', NULL, 's1'),
('main', 'wizard_site_logo', '0', NULL, 's1'),
('main', 'wizard_furniture_theme_id', 'pale-blue', NULL, 's1'),
('socialnetwork', 'allow_tooltip', 'N', NULL, NULL),
('fileman', 'propstypes', 'a:4:{s:11:"description";s:33:"Описание страницы";s:8:"keywords";s:27:"Ключевые слова";s:5:"title";s:44:"Заголовок окна браузера";s:14:"keywords_inner";s:35:"Продвигаемые слова";}', NULL, 's1'),
('search', 'suggest_save_days', '250', NULL, NULL),
('search', 'use_tf_cache', 'Y', NULL, NULL),
('search', 'use_word_distance', 'Y', NULL, NULL),
('search', 'use_social_rating', 'Y', NULL, NULL),
('iblock', 'use_htmledit', 'Y', NULL, NULL),
('socialservices', 'auth_services', 'a:12:{s:9:"VKontakte";s:1:"N";s:8:"MyMailRu";s:1:"N";s:7:"Twitter";s:1:"N";s:8:"Facebook";s:1:"N";s:11:"Livejournal";s:1:"Y";s:12:"YandexOpenID";s:1:"Y";s:7:"Rambler";s:1:"Y";s:12:"MailRuOpenID";s:1:"Y";s:12:"Liveinternet";s:1:"Y";s:7:"Blogger";s:1:"Y";s:6:"OpenID";s:1:"Y";s:6:"LiveID";s:1:"N";}', NULL, NULL),
('main', 'wizard_firstcorp_furniture_s1', 'Y', NULL, NULL),
('main', 'wizard_solution', 'corp_furniture', NULL, 's1'),
('fileman', 'stickers_use_hotkeys', 'N', NULL, NULL),
('main', 'site_checker_success', '', NULL, NULL),
('main', 'site_checker_access', 'Y', NULL, NULL),
('main', 'dump_bucket_id', '0', NULL, NULL),
('main', 'dump_encrypt', '0', NULL, NULL),
('main', 'dump_use_compression', '0', NULL, NULL),
('main', 'skip_symlinks', '0', NULL, NULL),
('main', 'dump_max_exec_time', '20', NULL, NULL),
('main', 'dump_max_exec_time_sleep', '3', NULL, NULL),
('main', 'dump_archive_size_limit', '1048576000', NULL, NULL),
('main', 'dump_max_file_size', '0', NULL, NULL),
('main', 'dump_file_public', '1', NULL, NULL),
('main', 'dump_file_kernel', '0', NULL, NULL),
('main', 'dump_base', '1', NULL, NULL),
('main', 'dump_base_skip_stat', '0', NULL, NULL),
('main', 'dump_base_skip_search', '0', NULL, NULL),
('main', 'dump_base_skip_log', '0', NULL, NULL),
('main', 'dump_integrity_check', '1', NULL, NULL),
('main', 'dump_do_clouds', '0', NULL, NULL),
('main', 'skip_mask', '0', NULL, NULL),
('main', 'dump_site_id', 'a:0:{}', NULL, NULL),
('main', 'signer_default_key', '76950c5626236daaa7130df5466fab8fa1236e7a518f6777fd2bda97ab349e602c2562842057e38cc74a1282054e45a8fb48457f5e1a704a8782480fdebb940c', NULL, NULL),
('main', 'site_name', '127.0.0.1', NULL, NULL),
('main', 'server_name', '127.0.0.1', NULL, NULL),
('main', 'cookie_name', 'BITRIX_SM', NULL, NULL),
('main', 'ALLOW_SPREAD_COOKIE', 'Y', NULL, NULL),
('main', 'header_200', 'N', NULL, NULL),
('main', 'error_reporting', '85', NULL, NULL),
('main', 'use_hot_keys', 'Y', NULL, NULL),
('main', 'smile_gallery_id', '1', NULL, NULL),
('main', 'all_bcc', '', NULL, NULL),
('main', 'send_mid', 'N', NULL, NULL),
('main', 'fill_to_mail', 'N', NULL, NULL),
('main', 'CONVERT_UNIX_NEWLINE_2_WINDOWS', 'N', NULL, NULL),
('main', 'convert_mail_header', 'Y', NULL, NULL),
('main', 'attach_images', 'N', NULL, NULL),
('main', 'max_file_size', '0', NULL, NULL),
('main', 'mail_event_period', '14', NULL, NULL),
('main', 'mail_event_bulk', '5', NULL, NULL),
('main', 'mail_additional_parameters', '', NULL, NULL),
('main', 'disk_space', '', NULL, NULL),
('main', 'upload_dir', 'upload', NULL, NULL),
('main', 'save_original_file_name', 'Y', NULL, NULL),
('main', 'translit_original_file_name', 'Y', NULL, NULL),
('main', 'convert_original_file_name', 'Y', NULL, NULL),
('main', 'image_resize_quality', '95', NULL, NULL),
('main', 'bx_fast_download', 'N', NULL, NULL),
('main', 'profile_image_width', '', NULL, NULL),
('main', 'profile_image_height', '', NULL, NULL),
('main', 'profile_image_size', '', NULL, NULL),
('main', 'use_minified_assets', 'Y', NULL, NULL),
('main', 'move_js_to_body', 'N', NULL, NULL),
('main', 'compres_css_js_files', 'Y', NULL, NULL),
('main', 'translate_key_yandex', '', NULL, NULL),
('main', 'use_time_zones', 'N', NULL, NULL),
('main', 'auto_time_zone', 'N', NULL, NULL),
('main', 'phone_number_default_country', '16', NULL, NULL),
('main', 'gather_catalog_stat', 'Y', NULL, NULL),
('main', 'map_top_menu_type', 'top', NULL, NULL),
('main', 'map_left_menu_type', 'left', NULL, NULL),
('main', 'url_preview_enable', 'N', NULL, NULL),
('main', 'url_preview_save_images', 'N', NULL, NULL),
('main', 'update_devsrv', 'N', NULL, NULL),
('main', 'update_site_proxy_addr', '', NULL, NULL),
('main', 'update_site_proxy_port', '', NULL, NULL),
('main', 'update_site_proxy_user', '', NULL, NULL),
('main', 'update_site_proxy_pass', '', NULL, NULL),
('main', 'strong_update_check', 'Y', NULL, NULL),
('main', 'stable_versions_only', 'Y', NULL, NULL),
('main', 'update_autocheck', '', NULL, NULL),
('main', 'update_stop_autocheck', 'N', NULL, NULL),
('main', 'update_is_gzip_installed', 'Y', NULL, NULL),
('main', 'update_load_timeout', '30', NULL, NULL),
('main', 'store_password', 'Y', NULL, NULL),
('main', 'use_secure_password_cookies', 'N', NULL, NULL),
('main', 'auth_multisite', 'N', NULL, NULL),
('main', 'allow_socserv_authorization', 'Y', NULL, NULL),
('main', 'use_digest_auth', 'N', NULL, NULL),
('main', 'custom_register_page', '', NULL, NULL),
('main', 'auth_components_template', '', NULL, NULL),
('main', 'captcha_restoring_password', 'Y', NULL, NULL),
('main', 'use_encrypted_auth', 'N', NULL, NULL),
('main', 'new_user_registration', 'Y', NULL, NULL),
('main', 'captcha_registration', 'N', NULL, NULL),
('main', 'new_user_email_required', 'Y', NULL, NULL),
('main', 'new_user_registration_email_confirmation', 'N', NULL, NULL),
('main', 'new_user_registration_cleanup_days', '7', NULL, NULL),
('main', 'new_user_email_uniq_check', 'N', NULL, NULL),
('main', 'session_expand', 'Y', NULL, NULL),
('main', 'session_auth_only', 'Y', NULL, NULL),
('main', 'session_show_message', 'Y', NULL, NULL),
('main', 'event_log_cleanup_days', '7', NULL, NULL),
('main', 'event_log_logout', 'N', NULL, NULL),
('main', 'event_log_login_success', 'N', NULL, NULL),
('main', 'event_log_login_fail', 'N', NULL, NULL),
('main', 'event_log_register', 'N', NULL, NULL),
('main', 'event_log_register_fail', 'N', NULL, NULL),
('main', 'event_log_password_request', 'N', NULL, NULL),
('main', 'event_log_password_change', 'N', NULL, NULL),
('main', 'event_log_user_edit', 'N', NULL, NULL),
('main', 'event_log_user_delete', 'N', NULL, NULL),
('main', 'event_log_user_groups', 'N', NULL, NULL),
('main', 'event_log_group_policy', 'N', NULL, NULL),
('main', 'event_log_module_access', 'N', NULL, NULL),
('main', 'event_log_file_access', 'N', NULL, NULL),
('main', 'event_log_task', 'N', NULL, NULL),
('main', 'event_log_marketplace', 'Y', NULL, NULL),
('main', 'auth_controller_sso', 'N', NULL, NULL),
('main', 'show_panel_for_users', 'N;', NULL, NULL),
('main', 'hide_panel_for_users', 'N;', NULL, NULL),
('main', 'GROUP_DEFAULT_RIGHT', 'D', NULL, NULL),
('search', 'max_execution_time', '20', NULL, NULL),
('search', 'full_reindex_required', 'N', NULL, NULL),
('security', 'GROUP_DEFAULT_TASK', '41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_cache`
--

CREATE TABLE `b_perf_cache` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_SIZE` float DEFAULT NULL,
  `OP_MODE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `BASE_DIR` text COLLATE utf8_unicode_ci,
  `INIT_DIR` text COLLATE utf8_unicode_ci,
  `FILE_NAME` text COLLATE utf8_unicode_ci,
  `FILE_PATH` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_cluster`
--

CREATE TABLE `b_perf_cluster` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `THREADS` int(11) DEFAULT NULL,
  `HITS` int(11) DEFAULT NULL,
  `ERRORS` int(11) DEFAULT NULL,
  `PAGES_PER_SECOND` float DEFAULT NULL,
  `PAGE_EXEC_TIME` float DEFAULT NULL,
  `PAGE_RESP_TIME` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_component`
--

CREATE TABLE `b_perf_component` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `COMPONENT_TIME` float DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_error`
--

CREATE TABLE `b_perf_error` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `ERRNO` int(18) DEFAULT NULL,
  `ERRSTR` text COLLATE utf8_unicode_ci,
  `ERRFILE` text COLLATE utf8_unicode_ci,
  `ERRLINE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_history`
--

CREATE TABLE `b_perf_history` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TOTAL_MARK` float DEFAULT NULL,
  `ACCELERATOR_ENABLED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_hit`
--

CREATE TABLE `b_perf_hit` (
  `ID` int(11) NOT NULL,
  `DATE_HIT` datetime DEFAULT NULL,
  `IS_ADMIN` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REQUEST_METHOD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SERVER_PORT` int(11) DEFAULT NULL,
  `SCRIPT_NAME` text COLLATE utf8_unicode_ci,
  `REQUEST_URI` text COLLATE utf8_unicode_ci,
  `INCLUDED_FILES` int(11) DEFAULT NULL,
  `MEMORY_PEAK_USAGE` int(11) DEFAULT NULL,
  `CACHE_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CACHE_SIZE` int(11) DEFAULT NULL,
  `CACHE_COUNT_R` int(11) DEFAULT NULL,
  `CACHE_COUNT_W` int(11) DEFAULT NULL,
  `CACHE_COUNT_C` int(11) DEFAULT NULL,
  `QUERIES` int(11) DEFAULT NULL,
  `QUERIES_TIME` float DEFAULT NULL,
  `COMPONENTS` int(11) DEFAULT NULL,
  `COMPONENTS_TIME` float DEFAULT NULL,
  `SQL_LOG` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_TIME` float DEFAULT NULL,
  `PROLOG_TIME` float DEFAULT NULL,
  `PROLOG_BEFORE_TIME` float DEFAULT NULL,
  `AGENTS_TIME` float DEFAULT NULL,
  `PROLOG_AFTER_TIME` float DEFAULT NULL,
  `WORK_AREA_TIME` float DEFAULT NULL,
  `EPILOG_TIME` float DEFAULT NULL,
  `EPILOG_BEFORE_TIME` float DEFAULT NULL,
  `EVENTS_TIME` float DEFAULT NULL,
  `EPILOG_AFTER_TIME` float DEFAULT NULL,
  `MENU_RECALC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_index_ban`
--

CREATE TABLE `b_perf_index_ban` (
  `ID` int(11) NOT NULL,
  `BAN_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_index_complete`
--

CREATE TABLE `b_perf_index_complete` (
  `ID` int(11) NOT NULL,
  `BANNED` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INDEX_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_index_suggest`
--

CREATE TABLE `b_perf_index_suggest` (
  `ID` int(11) NOT NULL,
  `SQL_MD5` char(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_COUNT` int(11) DEFAULT NULL,
  `SQL_TIME` float DEFAULT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ALIAS` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAMES` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQL_TEXT` text COLLATE utf8_unicode_ci,
  `SQL_EXPLAIN` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_index_suggest_sql`
--

CREATE TABLE `b_perf_index_suggest_sql` (
  `SUGGEST_ID` int(11) NOT NULL,
  `SQL_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_sql`
--

CREATE TABLE `b_perf_sql` (
  `ID` int(18) NOT NULL,
  `HIT_ID` int(18) DEFAULT NULL,
  `COMPONENT_ID` int(18) DEFAULT NULL,
  `NN` int(18) DEFAULT NULL,
  `QUERY_TIME` float DEFAULT NULL,
  `NODE_ID` int(18) DEFAULT NULL,
  `MODULE_NAME` text COLLATE utf8_unicode_ci,
  `COMPONENT_NAME` text COLLATE utf8_unicode_ci,
  `SQL_TEXT` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_sql_backtrace`
--

CREATE TABLE `b_perf_sql_backtrace` (
  `SQL_ID` int(18) NOT NULL,
  `NN` int(18) NOT NULL,
  `FILE_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINE_NO` int(18) DEFAULT NULL,
  `CLASS_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FUNCTION_NAME` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_tab_column_stat`
--

CREATE TABLE `b_perf_tab_column_stat` (
  `ID` int(11) NOT NULL,
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLUMN_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL,
  `COLUMN_ROWS` float DEFAULT NULL,
  `VALUE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_tab_stat`
--

CREATE TABLE `b_perf_tab_stat` (
  `TABLE_NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TABLE_SIZE` float DEFAULT NULL,
  `TABLE_ROWS` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_perf_test`
--

CREATE TABLE `b_perf_test` (
  `ID` int(18) NOT NULL,
  `REFERENCE_ID` int(18) DEFAULT NULL,
  `NAME` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_posting`
--

CREATE TABLE `b_posting` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `VERSION` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_SENT` datetime DEFAULT NULL,
  `SENT_BCC` mediumtext COLLATE utf8_unicode_ci,
  `FROM_FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TO_FIELD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BCC_FIELD` mediumtext COLLATE utf8_unicode_ci,
  `EMAIL_FILTER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBJECT` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BODY_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `BODY` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `DIRECT_SEND` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CHARSET` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MSG_CHARSET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUBSCR_FORMAT` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_EMAIL` mediumtext COLLATE utf8_unicode_ci,
  `AUTO_SEND_TIME` datetime DEFAULT NULL,
  `BCC_TO_SEND` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_posting_email`
--

CREATE TABLE `b_posting_email` (
  `ID` int(11) NOT NULL,
  `POSTING_ID` int(11) NOT NULL,
  `STATUS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SUBSCRIPTION_ID` int(11) DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_posting_file`
--

CREATE TABLE `b_posting_file` (
  `POSTING_ID` int(11) NOT NULL,
  `FILE_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_posting_group`
--

CREATE TABLE `b_posting_group` (
  `POSTING_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_posting_rubric`
--

CREATE TABLE `b_posting_rubric` (
  `POSTING_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_rating`
--

CREATE TABLE `b_rating` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CALCULATION_METHOD` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SUM',
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `POSITION` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTHORITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `CALCULATED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONFIGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_rating`
--

INSERT INTO `b_rating` (`ID`, `ACTIVE`, `NAME`, `ENTITY_ID`, `CALCULATION_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_CALCULATED`, `POSITION`, `AUTHORITY`, `CALCULATED`, `CONFIGS`) VALUES
(1, 'N', 'Рейтинг', 'USER', 'SUM', '2018-02-26 11:37:51', NULL, NULL, 'Y', 'N', 'N', 'a:3:{s:4:"MAIN";a:2:{s:4:"VOTE";a:1:{s:4:"USER";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:5:"BONUS";a:2:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:1:"1";}}}s:5:"FORUM";a:2:{s:4:"VOTE";a:2:{s:5:"TOPIC";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:3:"0.5";s:5:"LIMIT";s:2:"30";}s:4:"POST";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:3:"0.1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:8:"ACTIVITY";a:9:{s:6:"ACTIVE";s:1:"Y";s:16:"TODAY_TOPIC_COEF";s:3:"0.4";s:15:"WEEK_TOPIC_COEF";s:3:"0.2";s:16:"MONTH_TOPIC_COEF";s:3:"0.1";s:14:"ALL_TOPIC_COEF";s:1:"0";s:15:"TODAY_POST_COEF";s:3:"0.2";s:14:"WEEK_POST_COEF";s:3:"0.1";s:15:"MONTH_POST_COEF";s:4:"0.05";s:13:"ALL_POST_COEF";s:1:"0";}}}s:4:"BLOG";a:2:{s:4:"VOTE";a:2:{s:4:"POST";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:3:"0.5";s:5:"LIMIT";s:2:"30";}s:7:"COMMENT";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:3:"0.1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:8:"ACTIVITY";a:9:{s:6:"ACTIVE";s:1:"Y";s:15:"TODAY_POST_COEF";s:3:"0.4";s:14:"WEEK_POST_COEF";s:3:"0.2";s:15:"MONTH_POST_COEF";s:3:"0.1";s:13:"ALL_POST_COEF";s:1:"0";s:18:"TODAY_COMMENT_COEF";s:3:"0.2";s:17:"WEEK_COMMENT_COEF";s:3:"0.1";s:18:"MONTH_COMMENT_COEF";s:4:"0.05";s:16:"ALL_COMMENT_COEF";s:1:"0";}}}}'),
(2, 'N', 'Авторитет', 'USER', 'SUM', '2018-02-26 11:37:51', NULL, NULL, 'Y', 'Y', 'N', 'a:3:{s:4:"MAIN";a:2:{s:4:"VOTE";a:1:{s:4:"USER";a:3:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:1:"0";}}s:6:"RATING";a:1:{s:5:"BONUS";a:2:{s:6:"ACTIVE";s:1:"Y";s:11:"COEFFICIENT";s:1:"1";}}}s:5:"FORUM";a:2:{s:4:"VOTE";a:2:{s:5:"TOPIC";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}s:4:"POST";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:8:"ACTIVITY";a:8:{s:16:"TODAY_TOPIC_COEF";s:2:"20";s:15:"WEEK_TOPIC_COEF";s:2:"10";s:16:"MONTH_TOPIC_COEF";s:1:"5";s:14:"ALL_TOPIC_COEF";s:1:"0";s:15:"TODAY_POST_COEF";s:3:"0.4";s:14:"WEEK_POST_COEF";s:3:"0.2";s:15:"MONTH_POST_COEF";s:3:"0.1";s:13:"ALL_POST_COEF";s:1:"0";}}}s:4:"BLOG";a:2:{s:4:"VOTE";a:2:{s:4:"POST";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}s:7:"COMMENT";a:2:{s:11:"COEFFICIENT";s:1:"1";s:5:"LIMIT";s:2:"30";}}s:6:"RATING";a:1:{s:8:"ACTIVITY";a:8:{s:15:"TODAY_POST_COEF";s:3:"0.4";s:14:"WEEK_POST_COEF";s:3:"0.2";s:15:"MONTH_POST_COEF";s:3:"0.1";s:13:"ALL_POST_COEF";s:1:"0";s:18:"TODAY_COMMENT_COEF";s:3:"0.2";s:17:"WEEK_COMMENT_COEF";s:3:"0.1";s:18:"MONTH_COMMENT_COEF";s:4:"0.05";s:16:"ALL_COMMENT_COEF";s:1:"0";}}}}');

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_component`
--

CREATE TABLE `b_rating_component` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ENTITY_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CALC_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `EXCEPTION_METHOD` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `NEXT_CALCULATION` datetime DEFAULT NULL,
  `REFRESH_INTERVAL` int(11) NOT NULL,
  `CONFIG` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_component_results`
--

CREATE TABLE `b_rating_component_results` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `RATING_TYPE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `COMPLEX_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_prepare`
--

CREATE TABLE `b_rating_prepare` (
  `ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_results`
--

CREATE TABLE `b_rating_results` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CURRENT_VALUE` decimal(18,4) DEFAULT NULL,
  `PREVIOUS_VALUE` decimal(18,4) DEFAULT NULL,
  `CURRENT_POSITION` int(11) DEFAULT '0',
  `PREVIOUS_POSITION` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_rule`
--

CREATE TABLE `b_rating_rule` (
  `ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `NAME` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_MODULE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONDITION_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTION_NAME` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION_CONFIG` text COLLATE utf8_unicode_ci,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_CLASS` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEACTIVATE_METHOD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_MODIFIED` datetime DEFAULT NULL,
  `LAST_APPLIED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_rating_rule`
--

INSERT INTO `b_rating_rule` (`ID`, `ACTIVE`, `NAME`, `ENTITY_TYPE_ID`, `CONDITION_NAME`, `CONDITION_MODULE`, `CONDITION_CLASS`, `CONDITION_METHOD`, `CONDITION_CONFIG`, `ACTION_NAME`, `ACTION_CONFIG`, `ACTIVATE`, `ACTIVATE_CLASS`, `ACTIVATE_METHOD`, `DEACTIVATE`, `DEACTIVATE_CLASS`, `DEACTIVATE_METHOD`, `CREATED`, `LAST_MODIFIED`, `LAST_APPLIED`) VALUES
(1, 'N', 'Добавление в группу пользователей, имеющих право голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:"AUTHORITY";a:2:{s:16:"RATING_CONDITION";i:1;s:12:"RATING_VALUE";i:1;}}', 'ADD_TO_GROUP', 'a:1:{s:12:"ADD_TO_GROUP";a:1:{s:8:"GROUP_ID";s:1:"3";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2018-02-26 11:37:51', '2018-02-26 11:37:51', NULL),
(2, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за рейтинг', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:"AUTHORITY";a:2:{s:16:"RATING_CONDITION";i:2;s:12:"RATING_VALUE";i:1;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:"REMOVE_FROM_GROUP";a:1:{s:8:"GROUP_ID";s:1:"3";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2018-02-26 11:37:51', '2018-02-26 11:37:51', NULL),
(3, 'N', 'Добавление в группу пользователей, имеющих право голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:"AUTHORITY";a:2:{s:16:"RATING_CONDITION";i:1;s:12:"RATING_VALUE";i:2;}}', 'ADD_TO_GROUP', 'a:1:{s:12:"ADD_TO_GROUP";a:1:{s:8:"GROUP_ID";s:1:"4";}}', 'N', 'CRatingRulesMain', 'addToGroup', 'N', 'CRatingRulesMain ', 'addToGroup', '2018-02-26 11:37:52', '2018-02-26 11:37:52', NULL),
(4, 'N', 'Удаление из группы пользователей, не имеющих права голосовать за авторитет', 'USER', 'AUTHORITY', NULL, 'CRatingRulesMain', 'ratingCheck', 'a:1:{s:9:"AUTHORITY";a:2:{s:16:"RATING_CONDITION";i:2;s:12:"RATING_VALUE";i:2;}}', 'REMOVE_FROM_GROUP', 'a:1:{s:17:"REMOVE_FROM_GROUP";a:1:{s:8:"GROUP_ID";s:1:"4";}}', 'N', 'CRatingRulesMain', 'removeFromGroup', 'N', 'CRatingRulesMain ', 'removeFromGroup', '2018-02-26 11:37:52', '2018-02-26 11:37:52', NULL),
(5, 'Y', 'Автоматическое голосование за авторитет пользователя', 'USER', 'VOTE', NULL, 'CRatingRulesMain', 'voteCheck', 'a:1:{s:4:"VOTE";a:6:{s:10:"VOTE_LIMIT";i:90;s:11:"VOTE_RESULT";i:10;s:16:"VOTE_FORUM_TOPIC";d:0.5;s:15:"VOTE_FORUM_POST";d:0.10000000000000001;s:14:"VOTE_BLOG_POST";d:0.5;s:17:"VOTE_BLOG_COMMENT";d:0.10000000000000001;}}', 'empty', 'a:0:{}', 'N', 'empty', 'empty', 'N', 'empty ', 'empty', '2018-02-26 11:37:52', '2018-02-26 11:37:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_rule_vetting`
--

CREATE TABLE `b_rating_rule_vetting` (
  `ID` int(11) NOT NULL,
  `RULE_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `ACTIVATE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_user`
--

CREATE TABLE `b_rating_user` (
  `ID` int(11) NOT NULL,
  `RATING_ID` int(11) NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `BONUS` decimal(18,4) DEFAULT '0.0000',
  `VOTE_WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `VOTE_COUNT` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_rating_user`
--

INSERT INTO `b_rating_user` (`ID`, `RATING_ID`, `ENTITY_ID`, `BONUS`, `VOTE_WEIGHT`, `VOTE_COUNT`) VALUES
(1, 2, 1, '3.0000', '30.0000', 13);

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_vote`
--

CREATE TABLE `b_rating_vote` (
  `ID` int(11) NOT NULL,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `VALUE` decimal(18,4) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `USER_IP` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_vote_group`
--

CREATE TABLE `b_rating_vote_group` (
  `ID` int(11) NOT NULL,
  `GROUP_ID` int(11) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_rating_vote_group`
--

INSERT INTO `b_rating_vote_group` (`ID`, `GROUP_ID`, `TYPE`) VALUES
(5, 1, 'A'),
(1, 1, 'R'),
(3, 1, 'R'),
(2, 3, 'R'),
(4, 3, 'R'),
(6, 4, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_voting`
--

CREATE TABLE `b_rating_voting` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `OWNER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `CREATED` datetime DEFAULT NULL,
  `LAST_CALCULATED` datetime DEFAULT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_voting_prepare`
--

CREATE TABLE `b_rating_voting_prepare` (
  `ID` int(11) NOT NULL,
  `RATING_VOTING_ID` int(11) NOT NULL,
  `TOTAL_VALUE` decimal(18,4) NOT NULL,
  `TOTAL_VOTES` int(11) NOT NULL,
  `TOTAL_POSITIVE_VOTES` int(11) NOT NULL,
  `TOTAL_NEGATIVE_VOTES` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_rating_weight`
--

CREATE TABLE `b_rating_weight` (
  `ID` int(11) NOT NULL,
  `RATING_FROM` decimal(18,4) NOT NULL,
  `RATING_TO` decimal(18,4) NOT NULL,
  `WEIGHT` decimal(18,4) DEFAULT '0.0000',
  `COUNT` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_rating_weight`
--

INSERT INTO `b_rating_weight` (`ID`, `RATING_FROM`, `RATING_TO`, `WEIGHT`, `COUNT`) VALUES
(1, '-1000000.0000', '1000000.0000', '1.0000', 10);

-- --------------------------------------------------------

--
-- Table structure for table `b_search_content`
--

CREATE TABLE `b_search_content` (
  `ID` int(11) NOT NULL,
  `DATE_CHANGE` datetime NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CUSTOM_RANK` int(11) NOT NULL DEFAULT '0',
  `USER_ID` int(11) DEFAULT NULL,
  `ENTITY_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ENTITY_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL` text COLLATE utf8_unicode_ci,
  `TITLE` text COLLATE utf8_unicode_ci,
  `BODY` longtext COLLATE utf8_unicode_ci,
  `TAGS` text COLLATE utf8_unicode_ci,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `UPD` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DATE_FROM` datetime DEFAULT NULL,
  `DATE_TO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_search_content`
--

INSERT INTO `b_search_content` (`ID`, `DATE_CHANGE`, `MODULE_ID`, `ITEM_ID`, `CUSTOM_RANK`, `USER_ID`, `ENTITY_TYPE_ID`, `ENTITY_ID`, `URL`, `TITLE`, `BODY`, `TAGS`, `PARAM1`, `PARAM2`, `UPD`, `DATE_FROM`, `DATE_TO`) VALUES
(1, '2018-02-27 13:35:39', 'main', 's1|/search/index.php', 0, NULL, NULL, NULL, '/search/index.php', 'Поиск', '', '', '', '', NULL, NULL, NULL),
(2, '2018-02-26 11:41:27', 'main', 's1|/search/map.php', 0, NULL, NULL, NULL, '/search/map.php', 'Карта сайта', '', '', '', '', NULL, NULL, NULL),
(3, '2018-02-26 11:45:15', 'main', 's1|/products/index.php', 0, NULL, NULL, NULL, '/products/index.php', 'Продукция', '', '', '', '', NULL, NULL, NULL),
(4, '2018-02-27 13:26:11', 'main', 's1|/rew/index.php', 0, NULL, NULL, NULL, '/rew/index.php', 'Отзывы', '', '', '', '', NULL, NULL, NULL),
(5, '2018-02-26 11:41:27', 'main', 's1|/company/history.php', 0, NULL, NULL, NULL, '/company/history.php', 'История', '1992г. 								\r&laquo;Мебельная компания&raquo;\rначиналась с изготовления мебели для школ и офисов. Первое 									производство мебели располагалось в арендуемой мастерской, площадью 400 м2 с одним 									деревообрабатывающим станком. В компании работало двадцать человек. Все заработанные 									средства вкладывались в развитие, что позволило молодой Компании расти быстрыми 									темпами. 								\r1993г. 								\rВведен в эксплуатацию новый цех площадью 700 м2, ставший первой собственностью 									\r&laquo;Мебельной компании&raquo;\r. Модернизация производственной базы предприятия стала хорошей 									традицией. Компания постепенно перешла к более совершенному оборудованию, что позволило 									повысить уровень качества выпускаемой продукции и значительно увеличить объемы производства. 								\r1998г. 								\rВ Воронеже открыт первый фирменный магазин-салон \r&laquo;Мебельная компания&raquo;\r. Шаг за шагом 									продукция предприятия завоевывала регионы Сибири и Урала, Москвы и Подмосковья, 									Юга и Северо-Запада России. Производственные площади компании увеличены до 5000 									м2. 								\r1999г. 								\r&laquo;Мебельная компания&raquo;\rстала дипломантом одной из самых престижных международных 									выставок \r&laquo;ЕвроЭкспоМебель-99&raquo;\r- первое официальное признание мебельной продукции 									&laquo;Мебельной компании&raquo;. В этом же году компания выходит на мировой рынок. Был заключен 									ряд контрактов на поставку мебели в страны СНГ и Ближнего Зарубежья. 								\r2000г. 								\rКоллектив компании насчитывает более 500 сотрудников. Заключаются новые контракт 									на поставку мебели в европейские страны. 								\r2002г. 								\r&laquo;Мебельная компания&raquo;\rвошла в десятку лучших производителей мебели по данным ведущих 									мебельных салонов России, а также в число лидеров организационного развития. 								\r2003г. 								\rПриступили к строительству склада материалов. В Москве открыт филиал компании. \nПроведена первая конференция партнеров, результатом которой стало укрепление взаимовыгодных 									отношений и заключение дилерских договоров. 								\r2004г. 								\rЗавершено строительство и оснащение нового производственного корпуса и склада материалов. \nРасширено представительство компании на российском рынке и за рубежом. \nОткрыто 									региональное представительство \r&laquo;Мебельной компании&raquo;\rв Екатеринбурге. 								\r2005г. 								\rКомпания приобретает новое производственное оборудование концерна - угловую линию 									раскроя материалов и линию загрузки выгрузки. \nНачинается выпуск продукции в 									натуральном шпоне. Формируется отдельный склад материалов и комплектующих. \nВ этом же году открывается Фабрика мягкой мебели \r&laquo;МебельПлюс&raquo;\r2006г. 								\rОткрыты региональные представительства \r&laquo;Мебельной компании&raquo;\rв Санкт-Петербурге 									и Нижнем Новгороде. \nРазвивается собственная розничная сеть фирменных магазинов-салонов 									на территории России. 								\r2007г. 								\rЗавершено строительство второй фабрики. Общая площадь производсвенно-складских корпусов 									Компании составляет уже более 30000 м2. \nПроведена вторая конференция партнеров 									компании \r"Технология успешного бизнеса"\r. 								\r2008г. 								\rОткрыто новое предприятие для производства мебели по индивидуальным проектам \r&laquo;Комфорт&raquo;\r. \n&laquo;Мебельная компания&raquo;\rпродолжает обновление оборудования. 								\r2008г. 								\rНовейшим оборудованием укомплектована вторая фабрика. Запущена вторая производственная 									линия. \nПроведена третья конференция \r&laquo;Партнерство - бизнес сегодня&raquo;\rПринято решение о строительстве третьей фабрики. Площадь производственно &mdash; складских 									корпусов составит более 70000м2. \nПо всей стране и зарубежом открыто 37 мебельных 									салонов. \nВ Компании работает более полутора тысяч сотрудников.', '', '', '', NULL, NULL, NULL),
(6, '2018-02-26 11:41:27', 'main', 's1|/company/mission.php', 0, NULL, NULL, NULL, '/company/mission.php', 'Миссия и стратегия', '&laquo;Мебельная компания&raquo;\r- динамично развивающееся производственное 							предприятие, которое имеет перед собой \nясно выраженные цели и инструменты для 							их достижени.Мы предоставляем каждому лучшую возможность обустроить свое жизненное \nи рабочее пространство.Мы работаем на долгосрочную перспективу и предлагаем оптимальные 							решения. Компания \r&laquo;Мебельная компания&raquo;\r- \nнадежный, технологичный, гибкий поставщик 							с большими мощностями. 						\rЦели и задачи\rОправдывать ожидания заказчика: &ldquo;Клиент всегда прав&rdquo;. Только Потребитель формирует 									единую систему взглядов на качество \nвыпускаемой продукции и работ.\rДобиться от работников компании понимания их личной ответственности за качество 									работ.\rПутем повышения качества продукции и работ постоянно увеличивать объемы производства 									с целью последующего реинвестирования \nприбыли в развитие компании.\rОбеспечивать строгое соответствие производимой продукции требованиям потребителей, 									нормам и правилам \nбезопасности, требованиям защиты окружающей среды.\rПолитика компании\rПостоянное совершенствование системы качества. Своевременное и эффективное принятие 									корректирующих мер .\rЗабота о работниках компании. Создание условий труда и оснащение рабочих мест, соответствующих 									всем санитарным \nи гигиеническим нормам.\rПовышение благосостояния сотрудников. Обеспечение морального и материального удовлетворения 									работников компании.\rСистематическое обучение работников всех уровней с целью постоянного повышения их 									профессионального мастерства.\rВнедрение высокопроизводительного оборудования и новейших технологий для повышения 									производительности труда, \nоптимизации затрат и, как результат, снижения цен 									на выпускаемую продукцию.\rСоздание новых рабочих мест. Привлечение на работу специалистов высокой квалификации.\rВыход на международный рынок.\rМы развиваем доверительные взаимовыгодные отношения со своими партнерами в долгосрочных 							интересах нашего бизнеса. \n&laquo;Мебельная компания&raquo;\rответственно относится 							к выполнению взятых на себя обязательств и ждет такого же \nподхода к делу от 							своих партнеров по бизнесу. Эта требовательность &ndash; залог нашей долгосрочной прибыльности. 						\rСо дня своего основания \r&laquo;Мебельная компания&raquo;\rсодействует росту благосостояния 							регионов России. Мы понимаем важность \nсоциальной ответственности нашей Компании 							и останемся примером в вопросах социальной защищенности наших сотрудников.', '', '', '', NULL, NULL, NULL),
(7, '2018-02-26 11:41:27', 'main', 's1|/company/index.php', 0, NULL, NULL, NULL, '/company/index.php', 'О компании', 'Наша компания существует на Российском рынке с 1992 года. За это время \r&laquo;Мебельная компания&raquo;\rпрошла большой путь от маленькой торговой фирмы до одного из крупнейших производителей корпусной мебели в России. 						 \rГлавное правило - индивидуальный подход к каждому клиенту\rНа сегодняшний день нами разработано более пятисот моделей для офиса и дома. Вместе с тем мы стремимся обеспечить неповторимость своей продукции. Мы изготовим мебель для кухни, детской, гостиной, спальной или ванной комнаты, мебель для офиса особого дизайна и нестандартного размера. \rНаши дизайнеры произведут замеры помещения и вместе с вами разработают дизайн-проект мебели для вашего интерьера, подобрав с высокой точностью размеры, модели, цвета, помогут оптимально расположить мебель. \rВаш проект будет создан с учетом всех нюансов и прорисовкой мельчайших деталей. Результаты совместного творчества вы сможете посмотреть в объемном представлении. Вам наглядно продемонстрируют, как будут выглядеть в жизни выбранные элементы интерьера при разном освещении, в конкретном помещении, сделанные из определенных материалов. В ваше распоряжение будет предоставлено много различных вариантов, из которых Вы сможете выбрать наиболее подходящий именно Вам. 						 					\rЗаказ будет выполнен и доставлен точно в срок. Все работы по сборке и установке мебели осуществляют сотрудники нашей компании. Строгий контроль качества осуществляется на всех этапах работ: от момента оформления заказа до момента приема выполненных работ. \rПередовые технологии и бесценный опыт\rИспользование передовых компьютерных технологий, многолетний опыт наших специалистов позволяют произвести грамотные расчеты и снизить расход материалов и себестоимость продукции, избежать ошибок при проектировании и оптимизировать дизайн комплексных интерьеров. Гарантия на нашу продукцию составляет 18 месяцев, а на отдельную продукцию 36 месяцев. \rМы гордимся нашими сотрудниками прошедшими профессиональное обучение в лучших учебных заведениях России и зарубежья. У нас трудятся высококлассные специалисты разных возрастов. Мы ценим энтузиазм молодежи и бесценный опыт старшего поколения. Все мы разные, но нас объединяет преданность своему делу и вера в идеи нашей компании. \rВысочайшие стандарты качества - залог нашего успеха\r&laquo;Мебельная компания&raquo;\rосуществляет производство мебели на высококлассном оборудовании с применением минимальной доли ручного труда, что позволяет обеспечить высокое качество нашей продукции. Налажен производственный процесс как массового и индивидуального характера, что с одной стороны позволяет обеспечить постоянную номенклатуру изделий и индивидуальный подход &ndash; с другой. \rЕжегодно наша продукция проходит сертификационные испытания в специализированных лабораториях России и имеет сертификаты соответствия продукции нормам безопасности и качества. Кроме того, \r&laquo;Мебельная компания&raquo;\rодной из первых среди мебельных производителей России в 2003 году прошла аудит на соответствие требованиям системы менеджмента качества &laquo;ИСО 9000&raquo; и получила сертификат соответствия системы качества на предприятии нормам международного стандарта.', '', '', '', NULL, NULL, NULL),
(8, '2018-02-27 14:56:17', 'main', 's1|/company/test.php', 0, NULL, NULL, NULL, '/company/test.php', 'test', '', '', '', '', NULL, NULL, NULL),
(9, '2018-02-26 11:41:27', 'main', 's1|/company/management.php', 0, NULL, NULL, NULL, '/company/management.php', 'Руководство', 'Успешное развитие бизнеса &ndash; во многом результат квалифицированной работы руководства. 							\r&laquo;Мебельная компания&raquo;\rна мебельном рынке уже 18 лет. За это время Компания 							не только сохранила, но и упрочила лидирующие позиции среди ведущих игроков мебельного 							рынка. 						\r&laquo;Мебельная компания&raquo;\rиз года в год расширяет ассортимент выпускаемой продукции, 							наращивает темпы и объемы производства, увеличивает производственные и складские 							площади, развивает отношения с партнерами со всех регионов страны и налаживает связи 							с зарубежными партнерами. В большой степени это заслуга хорошо подготовленного руководящего 							состава и его грамотной политики. 						\rСобственник Компании &laquo;Мебельная компания&raquo;\rКолесников Виктор Федорович 								\rРодился 3 сентября 1964 года.\nОбразование: закончил авиационный факультет Воронежского 									государственного политехнического института. В 1994 году прошел обучение по программе 									&laquo;Подготовка малого и среднего бизнеса&raquo; в США.\nВ настоящее время Виктор Федорович 									возглавляет Управляющую компанию, которая координирует деятельность предприятий, 									входящих в Группу Компаний \r&laquo;Мебельная компания&raquo;\r. 								\rГенеральный директор &laquo;Мебельной компании&raquo;\rРатченко Александр Петрович 								\rРодился 5 июня 1962 года.\nОбразование: Воронежский политехнический институт 									по специальности инженер-технолог; программа &laquo;Эффективное развитие производства&raquo; 									(США).\nВ \r&laquo;Мебельной компании&raquo;\rСергей Фомич с 1994 года. За это время прошел 									путь от начальника цеха до генерального директора предприятия. 								\rЗаместитель генерального директора Управляющей компании\rРоговой Андрей Владимирович 								\rОбразование: факультет радиотехники Воронежского государственного технического университета.\nВ Компании с 1 июня 2000 года.', '', '', '', NULL, NULL, NULL),
(10, '2018-02-26 11:45:56', 'main', 's1|/company/vacancies.php', 0, NULL, NULL, NULL, '/company/vacancies.php', 'Вакансии', '', '', '', '', NULL, NULL, NULL),
(11, '2018-02-26 11:45:35', 'main', 's1|/services/index.php', 0, NULL, NULL, NULL, '/services/index.php', 'Услуги', '', '', '', '', NULL, NULL, NULL),
(12, '2018-02-26 13:39:22', 'main', 's1|/index.php', 0, NULL, NULL, NULL, '/index.php', 'Мебельная компания', '', '', '', '', NULL, NULL, NULL),
(13, '2018-02-26 13:50:12', 'main', 's1|/test.php', 0, NULL, NULL, NULL, '/test.php', 'test', '', '', '', '', NULL, NULL, NULL),
(14, '2018-02-25 20:24:38', 'main', 's1|/partneram/raspisanie-meropriyatiy/arkhiv.php', 0, NULL, NULL, NULL, '/partneram/raspisanie-meropriyatiy/arkhiv.php', 'Архив', 'Text here....', '', '', '', NULL, NULL, NULL),
(15, '2018-02-25 20:24:38', 'main', 's1|/partneram/raspisanie-meropriyatiy/index.php', 0, NULL, NULL, NULL, '/partneram/raspisanie-meropriyatiy/index.php', 'Анонсы', 'Text here....', '', '', '', NULL, NULL, NULL),
(16, '2018-02-25 20:24:38', 'main', 's1|/partneram/index.php', 0, NULL, NULL, NULL, '/partneram/index.php', 'Условия сотрудничества', 'Text here....', '', '', '', NULL, NULL, NULL),
(17, '2018-02-25 20:24:38', 'main', 's1|/partneram/kak-stat-partnerom.php', 0, NULL, NULL, NULL, '/partneram/kak-stat-partnerom.php', 'Как стать партнером', 'Text here....', '', '', '', NULL, NULL, NULL),
(18, '2018-02-26 11:42:02', 'main', 's1|/news/index.php', 0, NULL, NULL, NULL, '/news/index.php', 'Новости', '', '', '', '', NULL, NULL, NULL),
(19, '2018-02-26 11:41:27', 'main', 's1|/contacts/index.php', 0, NULL, NULL, NULL, '/contacts/index.php', 'Контакты', 'Обратитесь к нашим специалистам и получите профессиональную консультацию по вопросам создания и покупки мебели (от дизайна, разработки технического задания до доставки мебели к Вам домой).\rВы можете обратиться к нам по телефону, по электронной почте или договориться о встрече в нашем офисе. Будем рады помочь вам и ответить на все ваши вопросы. \rТелефоны\rТелефон/факс:\n(495) 212-85-06\rТелефоны:\n(495) 212-85-07\r(495) 212-85-08\rEmail\rinfo@example.ru\r&mdash; общие вопросы\rsales@example.ru\r&mdash; приобретение продукции\rmarketing@example.ru\r&mdash; маркетинг/мероприятия/PR\rОфис в Москве', '', '', '', NULL, NULL, NULL),
(20, '2018-02-26 11:41:27', 'main', 's1|/login/index.php', 0, NULL, NULL, NULL, '/login/index.php', 'Вход на сайт', 'Вы зарегистрированы и успешно авторизовались.\rВернуться на главную страницу', '', '', '', NULL, NULL, NULL),
(21, '2018-02-26 11:44:33', 'iblock', '4', 0, NULL, NULL, NULL, '=ID=4&EXTERNAL_ID=10&CODE=&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Герцог', 'Изящный каркас с элементами росписи, роскошные ткани для обивки, яркие цвета и богатый декор.\r\r\n \rИзящный каркас с элементами росписи, роскошные ткани для обивки, яркие цвета и богатый декор.', '', 'products', '2', NULL, NULL, NULL),
(22, '2018-02-26 11:44:35', 'iblock', '5', 0, NULL, NULL, NULL, '=ID=5&EXTERNAL_ID=11&CODE=&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Монализа', 'Богатство и изыск выражен в данной модели. Каркас дополнительно расписывается золотом.\rПо желанию клиента возможна простежка на спинке и подлокотниках.\r\r\n \rБогатство и изыск выражен в данной модели. Каркас дополнительно расписывается золотом.\rПо желанию клиента возможна простежка на спинке и подлокотниках.', '', 'products', '2', NULL, NULL, NULL),
(23, '2018-02-26 11:44:37', 'iblock', '6', 0, NULL, NULL, NULL, '=ID=6&EXTERNAL_ID=12&CODE=&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Министр', 'Кресло руководителя Министр, несмотря на низкую стоимость, впечатляюще выглядит. \rС его помощью можно создать офисный интерьер высокого уровня. К тому же в нем можно работать с комфортом, не чувствуя усталости.\r\r\n \rКресло руководителя Министр, несмотря на низкую стоимость, впечатляюще выглядит. \rС его помощью можно создать офисный интерьер высокого уровня. К тому же в нем можно работать с комфортом, не чувствуя усталости.', '', 'products', '2', NULL, NULL, NULL),
(24, '2018-02-26 11:44:39', 'iblock', '7', 0, NULL, NULL, NULL, '=ID=7&EXTERNAL_ID=13&CODE=&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Хром', 'Динамичная модель офисного кресла примечательна оригинальным внешним видом, который достигнут за \rсчет хромированной крестовины,необычных подлокотников и потрясающей эргономики. \rТвердая спинка жестко поддерживает позвоночник.\r\r\n \rДинамичная модель офисного кресла примечательна оригинальным внешним видом, который достигнут за \rсчет хромированной крестовины,необычных подлокотников и потрясающей эргономики. \rТвердая спинка жестко поддерживает позвоночник.', '', 'products', '2', NULL, NULL, NULL),
(25, '2018-02-26 11:44:40', 'iblock', '8', 0, NULL, NULL, NULL, '=ID=8&EXTERNAL_ID=14&CODE=&IBLOCK_SECTION_ID=3&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Ливерпуль', 'Деревянные стулья Ливерпуль, выполненные в классическом английском стиле, \rсоздают особую атмосферу в кухне.\r\r\n \rДеревянные стулья Ливерпуль, выполненные в классическом английском стиле, \rсоздают особую атмосферу в кухне.', '', 'products', '2', NULL, NULL, NULL),
(26, '2018-02-26 11:44:41', 'iblock', '9', 0, NULL, NULL, NULL, '=ID=9&EXTERNAL_ID=15&CODE=&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Изабелла', 'Изящный каркас с элементами росписи золотом. Обивка может быть представлена в ткани или коже.\r\r\n \rИзящный каркас с элементами росписи золотом. Обивка может быть представлена в ткани или коже.', '', 'products', '2', NULL, NULL, NULL),
(27, '2018-02-26 11:44:44', 'iblock', '10', 0, NULL, NULL, NULL, '=ID=10&EXTERNAL_ID=16&CODE=&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Аладдин', 'Комфортная, массивная модель. Обивка - элитные ткани, ручная строчка, \rпридают изделию необыкновенный шарм и элегантную роскошь. \rПо желанию клиента можно установить механизм трансформации для ежедневного использования или «гостевую раскладушку»\r\r\n \rКомфортная, массивная модель. Обивка - элитные ткани, ручная строчка, \rпридают изделию необыкновенный шарм и элегантную роскошь. \rПо желанию клиента можно установить механизм трансформации для ежедневного использования или «гостевую раскладушку»', '', 'products', '2', NULL, NULL, NULL),
(28, '2018-02-26 11:44:45', 'iblock', '11', 0, NULL, NULL, NULL, '=ID=11&EXTERNAL_ID=17&CODE=&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Джоконда', 'Изящный каркас, элитные ткани для обивки, ручная строчка, придают изделию необыкновенный шарм и элегантную роскошь. \rОбивка также может быть в коже, по желанию клиента возможна простежка на подлокотниках и спинке.\r\r\n \rИзящный каркас, элитные ткани для обивки, ручная строчка, придают изделию необыкновенный шарм и элегантную роскошь. \rОбивка также может быть в коже, по желанию клиента возможна простежка на подлокотниках и спинке.', '', 'products', '2', NULL, NULL, NULL),
(29, '2018-02-26 11:44:46', 'iblock', '12', 0, NULL, NULL, NULL, '=ID=12&EXTERNAL_ID=18&CODE=&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Флора', 'Классическая модель создана для украшения роскошных интерьеров. \rЭлегантность и колоритность модели придают накладки из натурального дерева.\r\r\n \rКлассическая модель создана для украшения роскошных интерьеров. \rЭлегантность и колоритность модели придают накладки из натурального дерева.', '', 'products', '2', NULL, NULL, NULL),
(30, '2018-02-26 11:44:47', 'iblock', '13', 0, NULL, NULL, NULL, '=ID=13&EXTERNAL_ID=19&CODE=&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Престиж', 'Тахта в классическом исполнении. Подлокотник находится слева – это стандарт. Обивка может быть как в ткани, так и в коже.\r\r\n \rТахта в классическом исполнении. Подлокотник находится слева – это стандарт. Обивка может быть как в ткани, так и в коже.', '', 'products', '2', NULL, NULL, NULL),
(31, '2018-02-26 11:44:49', 'iblock', '14', 0, NULL, NULL, NULL, '=ID=14&EXTERNAL_ID=20&CODE=&IBLOCK_SECTION_ID=1&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Лаура', 'Двухместная софа на основе конусных пружин или на основе комбинации плотных поролонов, по Вашему желанию. \rЭлитные ткани для обивки придают модели необыкновенный шарм и элегантную роскошь.\r\r\n \rДвухместная софа на основе конусных пружин или на основе комбинации плотных поролонов, по Вашему желанию. \rЭлитные ткани для обивки придают модели необыкновенный шарм и элегантную роскошь.', '', 'products', '2', NULL, NULL, NULL),
(32, '2018-02-26 11:44:51', 'iblock', '15', 0, NULL, NULL, NULL, '=ID=15&EXTERNAL_ID=21&CODE=&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Модерн', 'Основными характеристиками данной серии является новизна дизайнерской мысли, \rкоторая воплощена во внешнем облике этой мебели, и оригинальность исполнения классической компоновки, \rкоторая сочетает в себе оптимальный набор всех необходимых элементов и свежие решения в их организации. \rЧто в сочетании с удачными цветовыми решениями создаст в вашем офисе атмосферу неповторимой индивидуальности. \rДанная серия – наилучшее решение для бизнесменов, которые привыкли быть на шаг впереди не только своих конкурентов, \rно и самого времени.\r\r\n \rОсновными характеристиками данной серии является новизна дизайнерской мысли, \rкоторая воплощена во внешнем облике этой мебели, и оригинальность исполнения классической компоновки, \rкоторая сочетает в себе оптимальный набор всех необходимых элементов и свежие решения в их организации. \rЧто в сочетании с удачными цветовыми решениями создаст в вашем офисе атмосферу неповторимой индивидуальности. \rДанная серия – наилучшее решение для бизнесменов, которые привыкли быть на шаг впереди не только своих конкурентов, \rно и самого времени.', '', 'products', '2', NULL, NULL, NULL),
(33, '2018-02-26 11:44:54', 'iblock', '16', 0, NULL, NULL, NULL, '=ID=16&EXTERNAL_ID=22&CODE=&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Оптима', 'Удачный выбор мебели для персонала во многом определяет успешность деятельности всей компании. \rПравильно организовать рабочее пространство - значит помочь коллегам выполнять свои функции быстрее и эффективнее.\rСерия \r«Оптима»\rпозволит найти массу решений для обустройства рабочей зоны, приспособить интерьер к должностным \rобязанностям всех категорий сотрудников. Эргономичные угловые столы, перегородки, шкафы и тумбы помогут рационально использовать \rпространство под уникальное рабочее место, приспособленное к потребностям каждого работника и всей фирмы в целом.\rМебель \r«Оптима»\r- это полный набор интерьерных решений для обустройства пространства в офисе по современным стандартам.\r\r\n \rУдачный выбор мебели для персонала во многом определяет успешность деятельности всей компании. Правильно организовать рабочее пространство - значит помочь коллегам выполнять свои функции быстрее и эффективнее.\rСерия \r«Оптима»\rпозволит найти массу решений для обустройства рабочей зоны, приспособить интерьер к должностным обязанностям всех категорий сотрудников. Эргономичные угловые столы, перегородки, шкафы и тумбы помогут рационально использовать пространство под уникальное рабочее место, приспособленное к потребностям каждого работника и всей фирмы в целом.\rМебель \r«Оптима»\r- это полный набор интерьерных решений для обустройства пространства в офисе по современным стандартам.', '', 'products', '2', NULL, NULL, NULL),
(34, '2018-02-26 11:44:57', 'iblock', '17', 0, NULL, NULL, NULL, '=ID=17&EXTERNAL_ID=23&CODE=&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Собрание', 'Заходя в помещение, где находятся столы для переговоров «Собрание», возникает стойкое ощущение, что находишься в кабинете если не президента страны, то премьер-министра как минимум. Вот-вот в комнату войдет высокопоставленный чиновник, и начнется обсуждение глобальных вопросов.\rУдивительное сочетание изысканной роскоши стиля и красоты классических линий столов «Собрание» и привлекательной цены опровергает устоявшееся утверждение о качестве дешевой мебели. Уменьшение себестоимости происходит за счет использования более дешевых материалов – ДСП и ДВП, что позволяет офисной мебели сохранять великолепные эксплуатационные характеристики.\r\r\n \rЗаходя в помещение, где находятся столы для переговоров «Собрание», возникает стойкое ощущение, что находишься в кабинете если не президента страны, то премьер-министра как минимум. Вот-вот в комнату войдет высокопоставленный чиновник, и начнется обсуждение глобальных вопросов.\rУдивительное сочетание изысканной роскоши стиля и красоты классических линий столов «Собрание» и привлекательной цены опровергает устоявшееся утверждение о качестве дешевой мебели. Уменьшение себестоимости происходит за счет использования более дешевых материалов – ДСП и ДВП, что позволяет офисной мебели сохранять великолепные эксплуатационные характеристики.', '', 'products', '2', NULL, NULL, NULL),
(35, '2018-02-26 11:44:59', 'iblock', '18', 0, NULL, NULL, NULL, '=ID=18&EXTERNAL_ID=24&CODE=&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Лидер', 'Этот стильный стол абсолютно не симметричен, и это придает ему изящность и оригинальность. \rСлева он опирается на ножку, освобождая полезное пространство для системного блока и ног. \rСправа основанием служит удобная и вместительная тумба. Плавные линии, стильный дизайн и высокая эргономичность являются \rосновными достоинствами данной серии.\r\r\n \rЭтот стильный стол абсолютно не симметричен, и это придает ему изящность и оригинальность. \rСлева он опирается на ножку, освобождая полезное пространство для системного блока и ног. \rСправа основанием служит удобная и вместительная тумба. Плавные линии, стильный дизайн и высокая эргономичность являются \rосновными достоинствами данной серии.', '', 'products', '2', NULL, NULL, NULL),
(36, '2018-02-26 11:45:01', 'iblock', '19', 0, NULL, NULL, NULL, '=ID=19&EXTERNAL_ID=25&CODE=&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Президент', 'Кресло руководителя Президент\rво главе большого круглого стола поможет создать в вашем кабинете\rобстановку легендарной совещательной комнаты. Ведь это не просто мебель офисная – это настоящий трон, который \rпоможет управленцу решать любые вопросы, согласуясь с понятиями чести и совести.\r\r\n \rКресло руководителя Президент\rво главе большого круглого стола поможет создать в вашем кабинете\rобстановку легендарной совещательной комнаты. Ведь это не просто мебель офисная – это настоящий трон, который \rпоможет управленцу решать любые вопросы, согласуясь с понятиями чести и совести. \rДизайн кресла выполнен в строгом классическом стиле. Окантовка и подлокотники кресла выточена вручную и потому уникальны. \rПроизводится ограниченными партиями - не более 10 кресел в год.', '', 'products', '2', NULL, NULL, NULL),
(37, '2018-02-26 11:45:03', 'iblock', '20', 0, NULL, NULL, NULL, '=ID=20&EXTERNAL_ID=26&CODE=&IBLOCK_SECTION_ID=2&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Плутон', 'Офисное кресло, подобранное с учетом ваших физиологических особенностей - важная составляющая работоспособности и здоровья. \rДанная модель будет незаменима для тех, кто много работает за компьютером.\r\r\n \rОфисное кресло, подобранное с учетом ваших физиологических особенностей - важная составляющая работоспособности и здоровья. \rДанная модель будет незаменима для тех, кто много работает за компьютером.', '', 'products', '2', NULL, NULL, NULL),
(38, '2018-02-26 11:45:04', 'iblock', '21', 0, NULL, NULL, NULL, '=ID=21&EXTERNAL_ID=27&CODE=&IBLOCK_SECTION_ID=3&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Парма', 'Стулья Парма внесут в кухню уютное обаяние экологически чистого древесного материала. \rСтул практически целиком сделан из массива бука, исключением стало лишь мягкое сиденье. \rТонировка деревянных деталей может быть выполнена в любой цветовой палитре.\r\r\n \r <p>Стулья Парма внесут в кухню уютное обаяние экологически чистого древесного материала. \r Стул практически целиком сделан из массива бука, исключением стало лишь мягкое сиденье. \r Тонировка деревянных деталей может быть выполнена в любой цветовой палитре.</p>', '', 'products', '2', NULL, NULL, NULL),
(39, '2018-02-26 11:45:06', 'iblock', '22', 0, NULL, NULL, NULL, '=ID=22&EXTERNAL_ID=28&CODE=&IBLOCK_SECTION_ID=3&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Палермо', 'Универсальный дизайн стульев Палермо позволит с успехом использовать их и в офисных помещениях, \rи в интерьере кафе, и в домашней обстановке. Стулья Палермо добавят уюта в каждое помещение и \rорганично сольются с его стилем.\r\r\n \rУниверсальный дизайн стульев Палермо позволит с успехом использовать их и в офисных помещениях, \rи в интерьере кафе, и в домашней обстановке. Стулья Палермо добавят уюта в каждое помещение и \rорганично сольются с его стилем.', '', 'products', '2', NULL, NULL, NULL),
(40, '2018-02-26 11:45:07', 'iblock', '23', 0, NULL, NULL, NULL, '=ID=23&EXTERNAL_ID=29&CODE=&IBLOCK_SECTION_ID=3&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Валенсия', 'Стильный дизайн стульев Валенсия сразу привлекает внимание, а эргономичная форма спинки и \rмягкое сиденье делают их необычайно удобными. Эти стулья хорошо подойдут к любой офисной мебели для \rперсонала.\r\r\n \rСтильный дизайн стульев Валенсия сразу привлекает внимание, а эргономичная форма спинки и \rмягкое сиденье делают их необычайно удобными. Эти стулья хорошо подойдут к любой офисной мебели для \rперсонала.', '', 'products', '2', NULL, NULL, NULL),
(41, '2018-02-26 11:45:09', 'iblock', '24', 0, NULL, NULL, NULL, '=ID=24&EXTERNAL_ID=30&CODE=&IBLOCK_SECTION_ID=4&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Фазенда', 'Складной деревянный стул с сиденьем и спинкой из плотного хлопка, изготовленный из натуральных природных материалов. \rТкань и дерево считаются теплыми материалами - даже зимой сидеть на них комфортнее, чем на железе или пластике. Это прекрасное решение для дачи.\r\r\n \rСкладной деревянный стул с сиденьем и спинкой из плотного хлопка, изготовленный из натуральных природных материалов. \rТкань и дерево считаются теплыми материалами - даже зимой сидеть на них комфортнее, чем на железе или пластике. Это прекрасное решение для дачи.', '', 'products', '2', NULL, NULL, NULL),
(42, '2018-02-26 11:45:11', 'iblock', '25', 0, NULL, NULL, NULL, '=ID=25&EXTERNAL_ID=31&CODE=&IBLOCK_SECTION_ID=4&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Эра', 'Стильный стул необычный формы с жесткими сиденьями на металлическом каркасе удобен тем, \rчто можно компактно сложить для хранения до 45 таких стульев. Легкая и прочная модель отлично подойдет \rк компьютерной стойке, также ее можно использовать как мебель для кафе и баров.\r\r\n \rСтильный стул необычный формы с жесткими сиденьями на металлическом каркасе удобен тем, \rчто можно компактно сложить для хранения до 45 таких стульев. Легкая и прочная модель отлично подойдет \rк компьютерной стойке, также ее можно использовать как мебель для кафе и баров.', '', 'products', '2', NULL, NULL, NULL),
(43, '2018-02-26 11:45:12', 'iblock', '26', 0, NULL, NULL, NULL, '=ID=26&EXTERNAL_ID=32&CODE=&IBLOCK_SECTION_ID=4&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Сити', 'Стильный, легкий и удобный стул на хромированном основании сразу привлекает внимание \rсвоей необычной формой. А разнообразные варианты обивки позволяют подобрать наилучшее сочетание с \rлюбой компьютерной мебелью.\r\r\n \rСтильный, легкий и удобный стул на хромированном основании сразу привлекает внимание \rсвоей необычной формой. А разнообразные варианты обивки позволяют подобрать наилучшее сочетание с \rлюбой компьютерной мебелью.', '', 'products', '2', NULL, NULL, NULL),
(44, '2018-02-26 11:45:13', 'iblock', '27', 0, NULL, NULL, NULL, '=ID=27&EXTERNAL_ID=33&CODE=&IBLOCK_SECTION_ID=4&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Изопласт Хром', 'Популярная модель офисного стула на хромированном металлическом каркасе с пластиковыми спинкой и \rсиденьем хорошо вписывается в любой интерьер. Прочные и долговечные, эти стулья удобны для использования \rв качестве аудиторных конференц-кресел, кроме того, их легко хранить.\r\r\n \rПопулярная модель офисного стула на хромированном металлическом каркасе с пластиковыми спинкой и \rсиденьем хорошо вписывается в любой интерьер. Прочные и долговечные, эти стулья удобны для использования \rв качестве аудиторных конференц-кресел, кроме того, их легко хранить.', '', 'products', '2', NULL, NULL, NULL),
(45, '2018-02-26 11:44:28', 'iblock', 'S1', 0, NULL, NULL, NULL, '=ID=1&EXTERNAL_ID=2&CODE=&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Мягкая мебель', 'Диваны, кресла и прочая мягкая мебель', NULL, 'products', '2', NULL, NULL, NULL),
(46, '2018-02-26 11:44:29', 'iblock', 'S2', 0, NULL, NULL, NULL, '=ID=2&EXTERNAL_ID=3&CODE=&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Офисная мебель', 'Диваны, столы, стулья', NULL, 'products', '2', NULL, NULL, NULL),
(47, '2018-02-26 11:44:30', 'iblock', 'S3', 0, NULL, NULL, NULL, '=ID=3&EXTERNAL_ID=4&CODE=&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Мебель для кухни', 'Полки, ящики, столы и стулья', NULL, 'products', '2', NULL, NULL, NULL),
(48, '2018-02-26 11:44:31', 'iblock', 'S4', 0, NULL, NULL, NULL, '=ID=4&EXTERNAL_ID=5&CODE=&IBLOCK_TYPE_ID=products&IBLOCK_ID=2&IBLOCK_CODE=furniture_products_s1&IBLOCK_EXTERNAL_ID=furniture_products_s1', 'Детская мебель', 'Кровати, стулья, мягкая детская мебель', NULL, 'products', '2', NULL, NULL, NULL),
(49, '2018-02-26 11:45:30', 'iblock', '28', 0, NULL, NULL, NULL, '=ID=28&EXTERNAL_ID=5&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=products&IBLOCK_ID=3&IBLOCK_CODE=furniture_services_s1&IBLOCK_EXTERNAL_ID=furniture_services_s1', 'Мебель на заказ', 'Наша компания занимается разработкой мебели на заказ.\r\n \rНаша компания занимается разработкой мебели на заказ по индивидуальным проектам: встроенные и корпусные шкафы купе,\rгардеробные комнаты, прихожие, библиотеки, платяные шкафы, комоды и другие сложные конструкции.\rМы создаем мебель идеально подходящую именно к вашему дому и офису, интерьеры, максимально отображающие вашу индивидуальность.\rПо Вашей заявке наш специалист приезжает со всеми образцами материалов, с которыми мы работаем, в любое удобное для Вас время и\rпроизведет все необходимые замеры. Учитывая все Ваши пожелания и особенности помещения, составляется эскизный проект.\rПосле заключения договора, в котором оговариваются сроки доставки и монтажа мебели, эскизный проект передается на производство,\rгде опытными специалистами производятся расчеты в программе трехмерного моделирования. После всех расчетов готовый проект поступает\rнепосредственно на производство, где производят раскрой деталей, их обработку, и сборку некоторых элементов. Накануне дня доставки\rсотрудники отдела транспортных услуг свяжутся с Вами и более конкретно оговорят время доставки. После заключения договора вами\rвносится предоплата в размере 30% от суммы заказанной Вами мебели. Остальная сумма оплачивается Вами по доставке.', '', 'products', '3', NULL, NULL, NULL),
(50, '2018-02-26 11:45:33', 'iblock', '29', 0, NULL, NULL, NULL, '=ID=29&EXTERNAL_ID=6&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=products&IBLOCK_ID=3&IBLOCK_CODE=furniture_services_s1&IBLOCK_EXTERNAL_ID=furniture_services_s1', 'Услуги дизайнера', 'Мы предлагаем широкий спектр услуг по дизайну мебели.\r\n \rДиагностика возможностей преобразования помещений – определение вариантов перепланировки, отделки, разработка новых решений колористки, освещения, перестановки мебели и декора, разработка специальных функциональных зон для переключения в различные режимы жизни.\rРазработка Идеи-Образа, проведение предварительных расчётов и создание 3D-модели: изображение передает цвет и фактуру, предлагая клиенту экспериментировать и подбирать оптимальный вариант.\rРазработка компьютерных цветных трехмерных моделей мебели. Натуралистичность изображений, их высокая схожесть с оригиналом позволяют представить, как будет выглядеть готовое изделие, рассмотреть его в деталях.\rПодбор и расстановка мебели.\rДекорирование - подбор декора и аксессуаров интерьера в соответствии с образом и стилем помещения. Возможно создание по индивидуальному запросу эксклюзивных, авторских коллекций.', '', 'products', '3', NULL, NULL, NULL),
(51, '2010-05-01 00:00:00', 'iblock', '30', 0, NULL, NULL, NULL, '=ID=30&EXTERNAL_ID=2&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=vacancies&IBLOCK_ID=4&IBLOCK_CODE=furniture_vacancies_s1&IBLOCK_EXTERNAL_ID=furniture_vacancies_s1', 'Продавец-дизайнер (кухни)', 'Требования\rУверенный пользователь ПК, навыки черчения от руки и в программах, опыт работы дизайнером/конструктором в мебельной сфере, этика делового общения\rОбязанности\rКонсультирование клиентов по кухонной мебели, оставление художественно-конструкторских проектов, прием и оформление заказов.\rУсловия\rЗарплата: 13500 оклад + % от личных продаж + премии‚ совокупный доход от 20000 руб,полный соц. пакет‚ оформление согласно ТК РФ', '', 'vacancies', '4', NULL, '2010-05-01 00:00:00', NULL),
(52, '2010-05-01 00:00:00', 'iblock', '31', 0, NULL, NULL, NULL, '=ID=31&EXTERNAL_ID=3&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=vacancies&IBLOCK_ID=4&IBLOCK_CODE=furniture_vacancies_s1&IBLOCK_EXTERNAL_ID=furniture_vacancies_s1', 'Директор магазина', 'Требования\rВысшее образование‚ опыт руководящей работы в рознице от 3 лет‚ опытный пользователь ПК‚ этика делового общения‚ знание методов управления и заключения договоров‚ отличное знание торгового и трудового законодательств‚ ответственность‚ инициативность‚ активность.\rОбязанности\rРуководство деятельностью магазина‚ организация эффективной работы персонала магазина‚ финансово-хозяйственная деятельность и отчетность‚ выполнение плана продаж‚ отчетность.\rУсловия\rТрудоустройство по ТК РФ‚ полный соц. пакет‚ график работы 5 чере 2 (168 час/мес)‚ зарплата: оклад 28000 + % от оборота + премии‚ совокупный доход от 35000 руб', '', 'vacancies', '4', NULL, '2010-05-01 00:00:00', NULL),
(53, '2010-05-01 00:00:00', 'iblock', '32', 0, NULL, NULL, NULL, '=ID=32&EXTERNAL_ID=4&CODE=&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=vacancies&IBLOCK_ID=4&IBLOCK_CODE=furniture_vacancies_s1&IBLOCK_EXTERNAL_ID=furniture_vacancies_s1', 'Бухгалтер отдела учета готовой продукции', 'Требования\rЖен., 22-45, уверенный пользователь ПК, опыт работы бухгалтером приветсвуется, знание бухгалтерского учета (базовый уровень), самостоятельность, ответственность, коммуникабельность, быстрая обучаемость, желание работать.\rОбязанности\rРабота с первичными документами по учету МПЗ Ведение журналов-ордеров по производственным счетам Формирование материальных отчетов подразделений Исполнение дополнительных функций по указанию руководителя\rУсловия\rГрафик работы 5 дней в неделю, адрес работы г. Шатура, Ботинский пр-д, 37. Зарплата: оклад 10 800 р. + премия 40% от оклада, полный соц. пакет.', '', 'vacancies', '4', NULL, '2010-05-01 00:00:00', NULL),
(54, '2017-04-17 14:21:00', 'iblock', '33', 0, NULL, NULL, NULL, '=ID=33&EXTERNAL_ID=33&CODE=cergey-rodionov&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=reviews&IBLOCK_ID=5&IBLOCK_CODE=rew&IBLOCK_EXTERNAL_ID=5', 'Cергей Родионов', 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nГенеральный директор\r\nCTC-Медиа', '', 'reviews', '5', NULL, '2017-04-17 14:21:00', NULL),
(55, '2017-04-10 14:21:00', 'iblock', '34', 0, NULL, NULL, NULL, '=ID=34&EXTERNAL_ID=34&CODE=anna-andreeva&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=reviews&IBLOCK_ID=5&IBLOCK_CODE=rew&IBLOCK_EXTERNAL_ID=5', 'Анна Андреева', 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nМаркетолог\r\nRK-Telecom', '', 'reviews', '5', NULL, '2017-04-10 14:21:00', NULL),
(56, '2017-04-24 14:21:00', 'iblock', '35', 0, NULL, NULL, NULL, '=ID=35&EXTERNAL_ID=35&CODE=dmitriya-pyalov&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=reviews&IBLOCK_ID=5&IBLOCK_CODE=rew&IBLOCK_EXTERNAL_ID=5', 'Дмитрия Пялов', 'Можете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала\r\nМожете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала.\r\nМожете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала.\r\nМожете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала.\r\n\r\nпрограммист \r\n.NET-девелопмент', '', 'reviews', '5', NULL, '2017-04-24 14:21:00', NULL),
(57, '2018-02-01 11:58:00', 'iblock', '36', 0, NULL, NULL, NULL, '=ID=36&EXTERNAL_ID=36&CODE=askdgfjas-klasdfh&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=reviews&IBLOCK_ID=5&IBLOCK_CODE=rew&IBLOCK_EXTERNAL_ID=5', 'askdgfjas klasdfh', 'dfgsdgerhdwfhrthr\r\nrethjgfhet6ityke\r\nsdfsd\r\nsdfsdf', '', 'reviews', '5', NULL, '2018-02-01 11:58:00', NULL),
(58, '2018-02-22 13:24:00', 'iblock', '37', 0, NULL, NULL, NULL, '=ID=37&EXTERNAL_ID=37&CODE=gdhjsjfsoioisudhifusidufiushgd&IBLOCK_SECTION_ID=&IBLOCK_TYPE_ID=reviews&IBLOCK_ID=5&IBLOCK_CODE=rew&IBLOCK_EXTERNAL_ID=5', 'gdhjsjfsoioisudhifusidufiushgd', 'sdgsdg\r\ndgsdgыфаыафыа\r\nsdgsdg\r\ndsgsdg', '', 'reviews', '5', NULL, '2018-02-22 13:24:00', NULL),
(59, '2018-02-27 14:39:51', 'main', 's1|/login/user.php', 0, NULL, NULL, NULL, '/login/user.php', 'Профиль', '', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_search_content_freq`
--

CREATE TABLE `b_search_content_freq` (
  `STEM` int(11) NOT NULL DEFAULT '0',
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FREQ` float DEFAULT NULL,
  `TF` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_search_content_freq`
--

INSERT INTO `b_search_content_freq` (`STEM`, `LANGUAGE_ID`, `SITE_ID`, `FREQ`, `TF`) VALUES
(1128, 'ru', 's1', 1, 0),
(1129, 'ru', 's1', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `b_search_content_param`
--

CREATE TABLE `b_search_content_param` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM_VALUE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_search_content_right`
--

CREATE TABLE `b_search_content_right` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_search_content_right`
--

INSERT INTO `b_search_content_right` (`SEARCH_CONTENT_ID`, `GROUP_CODE`) VALUES
(1, 'G2'),
(2, 'G2'),
(3, 'G2'),
(4, 'G2'),
(5, 'G2'),
(6, 'G3'),
(6, 'G4'),
(6, 'G5'),
(7, 'G2'),
(8, 'G2'),
(9, 'G2'),
(10, 'G2'),
(11, 'G2'),
(12, 'G2'),
(13, 'G2'),
(14, 'G2'),
(15, 'G2'),
(16, 'G2'),
(17, 'G2'),
(18, 'G2'),
(19, 'G2'),
(20, 'G2'),
(21, 'G2'),
(22, 'G2'),
(23, 'G2'),
(24, 'G2'),
(25, 'G2'),
(26, 'G2'),
(27, 'G2'),
(28, 'G2'),
(29, 'G2'),
(30, 'G2'),
(31, 'G2'),
(32, 'G2'),
(33, 'G2'),
(34, 'G2'),
(35, 'G2'),
(36, 'G2'),
(37, 'G2'),
(38, 'G2'),
(39, 'G2'),
(40, 'G2'),
(41, 'G2'),
(42, 'G2'),
(43, 'G2'),
(44, 'G2'),
(45, 'G2'),
(46, 'G2'),
(47, 'G2'),
(48, 'G2'),
(49, 'G2'),
(50, 'G2'),
(51, 'G2'),
(52, 'G2'),
(53, 'G2'),
(54, 'G2'),
(55, 'G2'),
(56, 'G2'),
(57, 'G2'),
(58, 'G2'),
(59, 'G2');

-- --------------------------------------------------------

--
-- Table structure for table `b_search_content_site`
--

CREATE TABLE `b_search_content_site` (
  `SEARCH_CONTENT_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_search_content_site`
--

INSERT INTO `b_search_content_site` (`SEARCH_CONTENT_ID`, `SITE_ID`, `URL`) VALUES
(1, 's1', ''),
(2, 's1', ''),
(3, 's1', ''),
(4, 's1', ''),
(5, 's1', ''),
(6, 's1', ''),
(7, 's1', ''),
(8, 's1', ''),
(9, 's1', ''),
(10, 's1', ''),
(11, 's1', ''),
(12, 's1', ''),
(13, 's1', ''),
(14, 's1', ''),
(15, 's1', ''),
(16, 's1', ''),
(17, 's1', ''),
(18, 's1', ''),
(19, 's1', ''),
(20, 's1', ''),
(21, 's1', ''),
(22, 's1', ''),
(23, 's1', ''),
(24, 's1', ''),
(25, 's1', ''),
(26, 's1', ''),
(27, 's1', ''),
(28, 's1', ''),
(29, 's1', ''),
(30, 's1', ''),
(31, 's1', ''),
(32, 's1', ''),
(33, 's1', ''),
(34, 's1', ''),
(35, 's1', ''),
(36, 's1', ''),
(37, 's1', ''),
(38, 's1', ''),
(39, 's1', ''),
(40, 's1', ''),
(41, 's1', ''),
(42, 's1', ''),
(43, 's1', ''),
(44, 's1', ''),
(45, 's1', ''),
(46, 's1', ''),
(47, 's1', ''),
(48, 's1', ''),
(49, 's1', ''),
(50, 's1', ''),
(51, 's1', ''),
(52, 's1', ''),
(53, 's1', ''),
(54, 's1', ''),
(55, 's1', ''),
(56, 's1', ''),
(57, 's1', ''),
(58, 's1', ''),
(59, 's1', '');

-- --------------------------------------------------------

--
-- Table structure for table `b_search_content_stem`
--

CREATE TABLE `b_search_content_stem` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `STEM` int(11) NOT NULL,
  `TF` float NOT NULL,
  `PS` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

--
-- Dumping data for table `b_search_content_stem`
--

INSERT INTO `b_search_content_stem` (`SEARCH_CONTENT_ID`, `LANGUAGE_ID`, `STEM`, `TF`, `PS`) VALUES
(1, 'ru', 1, 0.2314, 1),
(2, 'ru', 2, 0.2314, 1),
(2, 'ru', 3, 0.2314, 2),
(3, 'ru', 4, 0.2314, 1),
(4, 'ru', 5, 0.2314, 1),
(5, 'ru', 4, 0.2733, 226),
(5, 'ru', 6, 0.1177, 1),
(5, 'ru', 7, 0.1177, 2),
(5, 'ru', 8, 0.4356, 287.667),
(5, 'ru', 9, 0.5249, 284.333),
(5, 'ru', 10, 0.1866, 218),
(5, 'ru', 11, 0.1177, 12),
(5, 'ru', 12, 0.3531, 261.143),
(5, 'ru', 13, 0.1177, 15),
(5, 'ru', 14, 0.1177, 17),
(5, 'ru', 15, 0.1866, 17),
(5, 'ru', 16, 0.3043, 156.6),
(5, 'ru', 17, 0.2354, 231),
(5, 'ru', 18, 0.1177, 26),
(5, 'ru', 19, 0.1177, 28),
(5, 'ru', 20, 0.1177, 29),
(5, 'ru', 21, 0.3043, 280),
(5, 'ru', 22, 0.1177, 31),
(5, 'ru', 23, 0.2733, 202),
(5, 'ru', 24, 0.1866, 113.5),
(5, 'ru', 25, 0.1177, 35),
(5, 'ru', 26, 0.1177, 36),
(5, 'ru', 27, 0.1866, 340.5),
(5, 'ru', 28, 0.1177, 45),
(5, 'ru', 29, 0.1177, 46),
(5, 'ru', 30, 0.1177, 53),
(5, 'ru', 31, 0.1177, 54),
(5, 'ru', 32, 0.1177, 55),
(5, 'ru', 33, 0.1866, 179.5),
(5, 'ru', 34, 0.1866, 86.5),
(5, 'ru', 35, 0.1177, 60),
(5, 'ru', 36, 0.1177, 62),
(5, 'ru', 37, 0.1177, 63),
(5, 'ru', 38, 0.1177, 64),
(5, 'ru', 39, 0.1177, 70),
(5, 'ru', 40, 0.1177, 76),
(5, 'ru', 41, 0.1177, 78),
(5, 'ru', 42, 0.3304, 371.167),
(5, 'ru', 43, 0.1177, 80),
(5, 'ru', 44, 0.1177, 82),
(5, 'ru', 45, 0.1177, 84),
(5, 'ru', 46, 0.1866, 282.5),
(5, 'ru', 47, 0.1177, 94),
(5, 'ru', 48, 0.3304, 372.167),
(5, 'ru', 49, 0.1177, 96),
(5, 'ru', 50, 0.2354, 264.333),
(5, 'ru', 51, 0.2354, 209.667),
(5, 'ru', 52, 0.1177, 99),
(5, 'ru', 53, 0.1177, 100),
(5, 'ru', 54, 0.1177, 107),
(5, 'ru', 55, 0.1177, 108),
(5, 'ru', 56, 0.3043, 426),
(5, 'ru', 57, 0.1177, 111),
(5, 'ru', 58, 0.2733, 413.75),
(5, 'ru', 59, 0.1177, 115),
(5, 'ru', 60, 0.1177, 116),
(5, 'ru', 61, 0.1177, 117),
(5, 'ru', 62, 0.1177, 118),
(5, 'ru', 63, 0.1177, 121),
(5, 'ru', 64, 0.1866, 148),
(5, 'ru', 65, 0.1177, 123),
(5, 'ru', 66, 0.1177, 130),
(5, 'ru', 67, 0.1177, 137),
(5, 'ru', 68, 0.1866, 232),
(5, 'ru', 69, 0.1866, 311),
(5, 'ru', 70, 0.1177, 141),
(5, 'ru', 71, 0.1866, 150),
(5, 'ru', 72, 0.1177, 154),
(5, 'ru', 73, 0.1177, 155),
(5, 'ru', 74, 0.1177, 156),
(5, 'ru', 75, 0.1177, 158),
(5, 'ru', 76, 0.1866, 242),
(5, 'ru', 77, 0.1177, 161),
(5, 'ru', 78, 0.1177, 162),
(5, 'ru', 79, 0.1177, 164),
(5, 'ru', 80, 0.2354, 315.333),
(5, 'ru', 81, 0.1177, 176),
(5, 'ru', 82, 0.1177, 183),
(5, 'ru', 83, 0.1177, 192),
(5, 'ru', 84, 0.1177, 196),
(5, 'ru', 85, 0.1177, 197),
(5, 'ru', 86, 0.1177, 198),
(5, 'ru', 87, 0.1177, 199),
(5, 'ru', 88, 0.1177, 202),
(5, 'ru', 89, 0.1177, 203),
(5, 'ru', 90, 0.1866, 333.5),
(5, 'ru', 91, 0.1177, 218),
(5, 'ru', 92, 0.1177, 220),
(5, 'ru', 93, 0.1177, 221),
(5, 'ru', 94, 0.1177, 228),
(5, 'ru', 95, 0.1177, 229),
(5, 'ru', 96, 0.1177, 230),
(5, 'ru', 97, 0.2354, 241.333),
(5, 'ru', 98, 0.1866, 249),
(5, 'ru', 99, 0.2354, 376),
(5, 'ru', 100, 0.1177, 236),
(5, 'ru', 101, 0.1177, 238),
(5, 'ru', 102, 0.1866, 432),
(5, 'ru', 103, 0.1177, 245),
(5, 'ru', 104, 0.1177, 251),
(5, 'ru', 105, 0.1177, 253),
(5, 'ru', 106, 0.1177, 255),
(5, 'ru', 107, 0.1866, 448.5),
(5, 'ru', 108, 0.2733, 448.5),
(5, 'ru', 109, 0.1177, 262),
(5, 'ru', 110, 0.1177, 269),
(5, 'ru', 111, 0.1177, 276),
(5, 'ru', 112, 0.1177, 284),
(5, 'ru', 113, 0.1177, 286),
(5, 'ru', 114, 0.1177, 287),
(5, 'ru', 115, 0.1177, 288),
(5, 'ru', 116, 0.1177, 291),
(5, 'ru', 117, 0.1177, 292),
(5, 'ru', 118, 0.1866, 461.5),
(5, 'ru', 119, 0.2733, 461.5),
(5, 'ru', 120, 0.1177, 297),
(5, 'ru', 121, 0.1177, 299),
(5, 'ru', 122, 0.1177, 300),
(5, 'ru', 123, 0.1866, 300),
(5, 'ru', 124, 0.1177, 301),
(5, 'ru', 125, 0.1177, 308),
(5, 'ru', 126, 0.1177, 314),
(5, 'ru', 127, 0.2733, 444),
(5, 'ru', 128, 0.2354, 374.333),
(5, 'ru', 129, 0.2733, 385.5),
(5, 'ru', 130, 0.2733, 385.5),
(5, 'ru', 131, 0.2733, 385.5),
(5, 'ru', 132, 0.1177, 327),
(5, 'ru', 133, 0.2354, 482.333),
(5, 'ru', 134, 0.2354, 484.333),
(5, 'ru', 135, 0.1866, 431),
(5, 'ru', 136, 0.2733, 431),
(5, 'ru', 137, 0.1177, 338),
(5, 'ru', 138, 0.1177, 339),
(5, 'ru', 139, 0.1177, 341),
(5, 'ru', 140, 0.1177, 342),
(5, 'ru', 141, 0.1177, 343),
(5, 'ru', 142, 0.1177, 345),
(5, 'ru', 143, 0.1177, 346),
(5, 'ru', 144, 0.1177, 347),
(5, 'ru', 145, 0.1866, 347),
(5, 'ru', 146, 0.1177, 353),
(5, 'ru', 147, 0.1866, 428.5),
(5, 'ru', 148, 0.1177, 362),
(5, 'ru', 149, 0.3043, 521.8),
(5, 'ru', 150, 0.1177, 374),
(5, 'ru', 151, 0.2354, 410),
(5, 'ru', 152, 0.1177, 378),
(5, 'ru', 153, 0.1177, 379),
(5, 'ru', 154, 0.1177, 382),
(5, 'ru', 155, 0.2733, 504.5),
(5, 'ru', 156, 0.1866, 426.5),
(5, 'ru', 157, 0.1177, 394),
(5, 'ru', 158, 0.1177, 400),
(5, 'ru', 159, 0.1177, 407),
(5, 'ru', 160, 0.1177, 411),
(5, 'ru', 161, 0.1177, 413),
(5, 'ru', 162, 0.2354, 472.333),
(5, 'ru', 163, 0.1177, 415),
(5, 'ru', 164, 0.1177, 419),
(5, 'ru', 165, 0.1177, 420),
(5, 'ru', 166, 0.1177, 427),
(5, 'ru', 167, 0.1177, 430),
(5, 'ru', 168, 0.1177, 431),
(5, 'ru', 169, 0.1177, 437),
(5, 'ru', 170, 0.1177, 438),
(5, 'ru', 171, 0.1177, 442),
(5, 'ru', 172, 0.1177, 452),
(5, 'ru', 173, 0.2733, 533.25),
(5, 'ru', 174, 0.1177, 454),
(5, 'ru', 175, 0.1177, 456),
(5, 'ru', 176, 0.1177, 457),
(5, 'ru', 177, 0.1177, 469),
(5, 'ru', 178, 0.1177, 471),
(5, 'ru', 179, 0.1177, 472),
(5, 'ru', 180, 0.1177, 478),
(5, 'ru', 181, 0.1177, 480),
(5, 'ru', 182, 0.1177, 481),
(5, 'ru', 183, 0.1177, 483),
(5, 'ru', 184, 0.1866, 483),
(5, 'ru', 185, 0.1177, 485),
(5, 'ru', 186, 0.1177, 492),
(5, 'ru', 187, 0.2733, 545.25),
(5, 'ru', 188, 0.1177, 507),
(5, 'ru', 189, 0.1177, 509),
(5, 'ru', 190, 0.1866, 561),
(5, 'ru', 191, 0.1177, 512),
(5, 'ru', 192, 0.1177, 515),
(5, 'ru', 193, 0.1177, 527),
(5, 'ru', 194, 0.1177, 528),
(5, 'ru', 195, 0.1866, 562.5),
(5, 'ru', 196, 0.1866, 550.5),
(5, 'ru', 197, 0.1177, 548),
(5, 'ru', 198, 0.1177, 549),
(5, 'ru', 199, 0.1177, 550),
(5, 'ru', 200, 0.1177, 558),
(5, 'ru', 201, 0.1177, 559),
(5, 'ru', 202, 0.1177, 574),
(5, 'ru', 203, 0.1177, 582),
(5, 'ru', 204, 0.1866, 597),
(5, 'ru', 205, 0.1177, 594),
(5, 'ru', 206, 0.1177, 597),
(5, 'ru', 207, 0.1177, 598),
(5, 'ru', 208, 0.1177, 599),
(5, 'ru', 209, 0.1177, 611),
(5, 'ru', 210, 0.1177, 613),
(5, 'ru', 211, 0.1177, 615),
(5, 'ru', 212, 0.1177, 627),
(5, 'ru', 213, 0.1177, 639),
(5, 'ru', 214, 0.1177, 640),
(6, 'ru', 4, 0.2953, 159.5),
(6, 'ru', 8, 0.2953, 187.25),
(6, 'ru', 9, 0.4559, 183.636),
(6, 'ru', 17, 0.1272, 130),
(6, 'ru', 27, 0.1272, 45),
(6, 'ru', 33, 0.1272, 137),
(6, 'ru', 42, 0.2015, 265),
(6, 'ru', 48, 0.1272, 9),
(6, 'ru', 50, 0.1272, 10),
(6, 'ru', 58, 0.1272, 252),
(6, 'ru', 61, 0.2953, 125.25),
(6, 'ru', 62, 0.2015, 182),
(6, 'ru', 65, 0.1272, 129),
(6, 'ru', 73, 0.2015, 369),
(6, 'ru', 80, 0.1272, 370),
(6, 'ru', 85, 0.1272, 297),
(6, 'ru', 91, 0.1272, 295),
(6, 'ru', 93, 0.1272, 298),
(6, 'ru', 107, 0.2015, 303),
(6, 'ru', 108, 0.2953, 303),
(6, 'ru', 114, 0.1272, 31),
(6, 'ru', 135, 0.1272, 341),
(6, 'ru', 136, 0.2543, 331),
(6, 'ru', 137, 0.1272, 264),
(6, 'ru', 138, 0.1272, 11),
(6, 'ru', 140, 0.1272, 307),
(6, 'ru', 141, 0.1272, 308),
(6, 'ru', 148, 0.1272, 199),
(6, 'ru', 169, 0.1272, 90),
(6, 'ru', 180, 0.2015, 156.5),
(6, 'ru', 193, 0.1272, 255),
(6, 'ru', 195, 0.2015, 329.5),
(6, 'ru', 207, 0.1272, 178),
(6, 'ru', 208, 0.1272, 52),
(6, 'ru', 215, 0.1272, 1),
(6, 'ru', 216, 0.1272, 3),
(6, 'ru', 217, 0.1272, 7),
(6, 'ru', 218, 0.1272, 12),
(6, 'ru', 219, 0.1272, 13),
(6, 'ru', 220, 0.1272, 14),
(6, 'ru', 221, 0.1272, 15),
(6, 'ru', 222, 0.1272, 16),
(6, 'ru', 223, 0.2953, 115.5),
(6, 'ru', 224, 0.1272, 19),
(6, 'ru', 225, 0.1272, 22),
(6, 'ru', 226, 0.1272, 29),
(6, 'ru', 227, 0.1272, 30),
(6, 'ru', 228, 0.1272, 32),
(6, 'ru', 229, 0.1272, 33),
(6, 'ru', 230, 0.1272, 35),
(6, 'ru', 231, 0.2543, 171.333),
(6, 'ru', 232, 0.1272, 38),
(6, 'ru', 233, 0.2543, 237.667),
(6, 'ru', 234, 0.1272, 48),
(6, 'ru', 235, 0.1272, 50),
(6, 'ru', 236, 0.1272, 51),
(6, 'ru', 237, 0.1272, 62),
(6, 'ru', 238, 0.1272, 63),
(6, 'ru', 239, 0.1272, 64),
(6, 'ru', 240, 0.1272, 65),
(6, 'ru', 241, 0.1272, 67),
(6, 'ru', 242, 0.1272, 68),
(6, 'ru', 243, 0.1272, 76),
(6, 'ru', 244, 0.1272, 77),
(6, 'ru', 245, 0.1272, 78),
(6, 'ru', 246, 0.1272, 79),
(6, 'ru', 247, 0.1272, 80),
(6, 'ru', 248, 0.1272, 81),
(6, 'ru', 249, 0.1272, 82),
(6, 'ru', 250, 0.2015, 119.5),
(6, 'ru', 251, 0.1272, 91),
(6, 'ru', 252, 0.1272, 92),
(6, 'ru', 253, 0.1272, 93),
(6, 'ru', 254, 0.2015, 93),
(6, 'ru', 255, 0.2953, 156.5),
(6, 'ru', 256, 0.1272, 105),
(6, 'ru', 257, 0.2543, 189.333),
(6, 'ru', 258, 0.3815, 189.143),
(6, 'ru', 259, 0.1272, 109),
(6, 'ru', 260, 0.1272, 111),
(6, 'ru', 261, 0.2543, 272),
(6, 'ru', 262, 0.1272, 121),
(6, 'ru', 263, 0.2953, 208.25),
(6, 'ru', 264, 0.2543, 177.667),
(6, 'ru', 265, 0.1272, 128),
(6, 'ru', 266, 0.1272, 133),
(6, 'ru', 267, 0.1272, 134),
(6, 'ru', 268, 0.1272, 135),
(6, 'ru', 269, 0.1272, 144),
(6, 'ru', 270, 0.1272, 145),
(6, 'ru', 271, 0.2015, 174),
(6, 'ru', 272, 0.1272, 147),
(6, 'ru', 273, 0.2015, 152),
(6, 'ru', 274, 0.2015, 179),
(6, 'ru', 275, 0.1272, 153),
(6, 'ru', 276, 0.1272, 154),
(6, 'ru', 277, 0.1272, 156),
(6, 'ru', 278, 0.1272, 157),
(6, 'ru', 279, 0.1272, 158),
(6, 'ru', 280, 0.1272, 164),
(6, 'ru', 281, 0.1272, 167),
(6, 'ru', 282, 0.1272, 168),
(6, 'ru', 283, 0.1272, 175),
(6, 'ru', 284, 0.1272, 177),
(6, 'ru', 285, 0.1272, 179),
(6, 'ru', 286, 0.1272, 180),
(6, 'ru', 287, 0.1272, 186),
(6, 'ru', 288, 0.2015, 235),
(6, 'ru', 289, 0.1272, 196),
(6, 'ru', 290, 0.2015, 228),
(6, 'ru', 291, 0.2015, 239.5),
(6, 'ru', 292, 0.1272, 203),
(6, 'ru', 293, 0.1272, 204),
(6, 'ru', 294, 0.1272, 206),
(6, 'ru', 295, 0.2015, 291),
(6, 'ru', 296, 0.1272, 221),
(6, 'ru', 297, 0.1272, 222),
(6, 'ru', 298, 0.1272, 224),
(6, 'ru', 299, 0.1272, 225),
(6, 'ru', 300, 0.1272, 233),
(6, 'ru', 301, 0.1272, 234),
(6, 'ru', 302, 0.1272, 236),
(6, 'ru', 303, 0.1272, 237),
(6, 'ru', 304, 0.1272, 243),
(6, 'ru', 305, 0.1272, 244),
(6, 'ru', 306, 0.1272, 250),
(6, 'ru', 307, 0.1272, 251),
(6, 'ru', 308, 0.1272, 258),
(6, 'ru', 309, 0.1272, 260),
(6, 'ru', 310, 0.1272, 261),
(6, 'ru', 311, 0.1272, 265),
(6, 'ru', 312, 0.1272, 266),
(6, 'ru', 313, 0.1272, 284),
(6, 'ru', 314, 0.1272, 287),
(6, 'ru', 315, 0.2015, 287),
(6, 'ru', 316, 0.1272, 288),
(6, 'ru', 317, 0.1272, 289),
(6, 'ru', 318, 0.1272, 306),
(6, 'ru', 319, 0.2015, 334.5),
(6, 'ru', 320, 0.1272, 314),
(6, 'ru', 321, 0.2953, 359.5),
(6, 'ru', 322, 0.1272, 325),
(6, 'ru', 323, 0.1272, 327),
(6, 'ru', 324, 0.1272, 328),
(6, 'ru', 325, 0.1272, 331),
(6, 'ru', 326, 0.1272, 333),
(6, 'ru', 327, 0.1272, 336),
(6, 'ru', 328, 0.1272, 338),
(6, 'ru', 329, 0.1272, 350),
(6, 'ru', 330, 0.1272, 351),
(6, 'ru', 331, 0.1272, 354),
(6, 'ru', 332, 0.1272, 361),
(6, 'ru', 333, 0.1272, 363),
(6, 'ru', 334, 0.1272, 366),
(6, 'ru', 335, 0.1272, 367),
(6, 'ru', 336, 0.1272, 369),
(6, 'ru', 337, 0.1272, 377),
(6, 'ru', 338, 0.1272, 378),
(6, 'ru', 339, 0.2015, 383.5),
(6, 'ru', 340, 0.1272, 384),
(6, 'ru', 341, 0.1272, 385),
(6, 'ru', 342, 0.1272, 387),
(6, 'ru', 343, 0.1272, 389),
(7, 'ru', 4, 0.3597, 330.857),
(7, 'ru', 8, 0.2784, 342.25),
(7, 'ru', 9, 0.3597, 217),
(7, 'ru', 12, 0.3597, 156.286),
(7, 'ru', 15, 0.19, 77.5),
(7, 'ru', 16, 0.1199, 478),
(7, 'ru', 17, 0.1199, 398),
(7, 'ru', 24, 0.2398, 312.333),
(7, 'ru', 48, 0.1199, 422),
(7, 'ru', 50, 0.1199, 503),
(7, 'ru', 56, 0.1199, 56),
(7, 'ru', 58, 0.1199, 402),
(7, 'ru', 61, 0.3366, 418.333),
(7, 'ru', 80, 0.2784, 327.5),
(7, 'ru', 85, 0.1199, 505),
(7, 'ru', 90, 0.19, 248),
(7, 'ru', 102, 0.1199, 336),
(7, 'ru', 108, 0.19, 281.5),
(7, 'ru', 114, 0.1199, 331),
(7, 'ru', 115, 0.19, 257),
(7, 'ru', 129, 0.19, 237.5),
(7, 'ru', 130, 0.19, 237.5),
(7, 'ru', 131, 0.19, 237.5),
(7, 'ru', 137, 0.1199, 154),
(7, 'ru', 138, 0.1199, 203),
(7, 'ru', 152, 0.1199, 7),
(7, 'ru', 153, 0.1199, 8),
(7, 'ru', 170, 0.1199, 314),
(7, 'ru', 191, 0.1199, 309),
(7, 'ru', 193, 0.19, 271.5),
(7, 'ru', 197, 0.2398, 304),
(7, 'ru', 198, 0.1199, 138),
(7, 'ru', 218, 0.1199, 459),
(7, 'ru', 227, 0.1199, 49),
(7, 'ru', 236, 0.1199, 129),
(7, 'ru', 241, 0.1199, 23),
(7, 'ru', 247, 0.1199, 50),
(7, 'ru', 249, 0.1199, 44),
(7, 'ru', 255, 0.2398, 247.667),
(7, 'ru', 262, 0.1199, 24),
(7, 'ru', 264, 0.1199, 435),
(7, 'ru', 270, 0.1199, 245),
(7, 'ru', 271, 0.2398, 483),
(7, 'ru', 273, 0.1199, 490),
(7, 'ru', 274, 0.19, 483.5),
(7, 'ru', 276, 0.1199, 464),
(7, 'ru', 279, 0.1199, 479),
(7, 'ru', 282, 0.19, 495.5),
(7, 'ru', 290, 0.19, 376),
(7, 'ru', 301, 0.1199, 329),
(7, 'ru', 302, 0.19, 196.5),
(7, 'ru', 304, 0.1199, 328),
(7, 'ru', 312, 0.1199, 355),
(7, 'ru', 314, 0.1199, 279),
(7, 'ru', 315, 0.2398, 301.333),
(7, 'ru', 316, 0.19, 267.5),
(7, 'ru', 321, 0.4148, 289.4),
(7, 'ru', 323, 0.1199, 260),
(7, 'ru', 327, 0.19, 243.5),
(7, 'ru', 328, 0.1199, 376),
(7, 'ru', 330, 0.1199, 392),
(7, 'ru', 344, 0.1199, 5),
(7, 'ru', 345, 0.1199, 10),
(7, 'ru', 346, 0.1199, 19),
(7, 'ru', 347, 0.19, 254),
(7, 'ru', 348, 0.1199, 26),
(7, 'ru', 349, 0.1199, 27),
(7, 'ru', 350, 0.1199, 28),
(7, 'ru', 351, 0.1199, 32),
(7, 'ru', 352, 0.1199, 34),
(7, 'ru', 353, 0.1199, 43),
(7, 'ru', 354, 0.1199, 52),
(7, 'ru', 355, 0.1199, 53),
(7, 'ru', 356, 0.1199, 54),
(7, 'ru', 357, 0.19, 85),
(7, 'ru', 358, 0.1199, 57),
(7, 'ru', 359, 0.19, 92),
(7, 'ru', 360, 0.1199, 62),
(7, 'ru', 361, 0.19, 90),
(7, 'ru', 362, 0.1199, 70),
(7, 'ru', 363, 0.1199, 72),
(7, 'ru', 364, 0.2398, 306),
(7, 'ru', 365, 0.1199, 74),
(7, 'ru', 366, 0.1199, 83),
(7, 'ru', 367, 0.1199, 86),
(7, 'ru', 368, 0.1199, 87),
(7, 'ru', 369, 0.1199, 88),
(7, 'ru', 370, 0.1199, 89),
(7, 'ru', 371, 0.1199, 91),
(7, 'ru', 372, 0.1199, 92),
(7, 'ru', 373, 0.1199, 96),
(7, 'ru', 374, 0.19, 197),
(7, 'ru', 375, 0.1199, 99),
(7, 'ru', 376, 0.19, 112.5),
(7, 'ru', 377, 0.1199, 107),
(7, 'ru', 378, 0.1199, 108),
(7, 'ru', 379, 0.1199, 109),
(7, 'ru', 380, 0.19, 147),
(7, 'ru', 381, 0.1199, 116),
(7, 'ru', 382, 0.2784, 224),
(7, 'ru', 383, 0.1199, 121),
(7, 'ru', 384, 0.1199, 124),
(7, 'ru', 385, 0.1199, 127),
(7, 'ru', 386, 0.1199, 128),
(7, 'ru', 387, 0.1199, 130),
(7, 'ru', 388, 0.2398, 184.333),
(7, 'ru', 389, 0.1199, 140),
(7, 'ru', 390, 0.1199, 142),
(7, 'ru', 391, 0.1199, 144),
(7, 'ru', 392, 0.19, 144),
(7, 'ru', 393, 0.1199, 146),
(7, 'ru', 394, 0.1199, 147),
(7, 'ru', 395, 0.1199, 148),
(7, 'ru', 396, 0.1199, 155),
(7, 'ru', 397, 0.1199, 156),
(7, 'ru', 398, 0.19, 181.5),
(7, 'ru', 399, 0.1199, 159),
(7, 'ru', 400, 0.1199, 161),
(7, 'ru', 401, 0.1199, 162),
(7, 'ru', 402, 0.1199, 169),
(7, 'ru', 403, 0.1199, 170),
(7, 'ru', 404, 0.1199, 172),
(7, 'ru', 405, 0.1199, 173),
(7, 'ru', 406, 0.1199, 175),
(7, 'ru', 407, 0.19, 191),
(7, 'ru', 408, 0.1199, 177),
(7, 'ru', 409, 0.2398, 299),
(7, 'ru', 410, 0.1199, 181),
(7, 'ru', 411, 0.1199, 183),
(7, 'ru', 412, 0.1199, 185),
(7, 'ru', 413, 0.1199, 187),
(7, 'ru', 414, 0.1199, 196),
(7, 'ru', 415, 0.1199, 198),
(7, 'ru', 416, 0.1199, 199),
(7, 'ru', 417, 0.1199, 200),
(7, 'ru', 418, 0.1199, 201),
(7, 'ru', 419, 0.19, 201),
(7, 'ru', 420, 0.1199, 207),
(7, 'ru', 421, 0.1199, 208),
(7, 'ru', 422, 0.1199, 209),
(7, 'ru', 423, 0.19, 236),
(7, 'ru', 424, 0.1199, 218),
(7, 'ru', 425, 0.1199, 220),
(7, 'ru', 426, 0.1199, 221),
(7, 'ru', 427, 0.1199, 223),
(7, 'ru', 428, 0.1199, 232),
(7, 'ru', 429, 0.1199, 234),
(7, 'ru', 430, 0.2398, 293.667),
(7, 'ru', 431, 0.1199, 246),
(7, 'ru', 432, 0.1199, 251),
(7, 'ru', 433, 0.19, 256),
(7, 'ru', 434, 0.1199, 255),
(7, 'ru', 435, 0.1199, 259),
(7, 'ru', 436, 0.19, 270),
(7, 'ru', 437, 0.19, 314.5),
(7, 'ru', 438, 0.2398, 302.667),
(7, 'ru', 439, 0.1199, 272),
(7, 'ru', 440, 0.1199, 274),
(7, 'ru', 441, 0.1199, 276),
(7, 'ru', 442, 0.2398, 374.333),
(7, 'ru', 443, 0.1199, 281),
(7, 'ru', 444, 0.1199, 282),
(7, 'ru', 445, 0.1199, 283),
(7, 'ru', 446, 0.1199, 285),
(7, 'ru', 447, 0.1199, 286),
(7, 'ru', 448, 0.1199, 289),
(7, 'ru', 449, 0.1199, 291),
(7, 'ru', 450, 0.1199, 292),
(7, 'ru', 451, 0.1199, 294),
(7, 'ru', 452, 0.1199, 296),
(7, 'ru', 453, 0.1199, 298),
(7, 'ru', 454, 0.1199, 299),
(7, 'ru', 455, 0.1199, 305),
(7, 'ru', 456, 0.1199, 310),
(7, 'ru', 457, 0.19, 314),
(7, 'ru', 458, 0.2784, 314),
(7, 'ru', 459, 0.1199, 316),
(7, 'ru', 460, 0.1199, 324),
(7, 'ru', 461, 0.1199, 327),
(7, 'ru', 462, 0.1199, 332),
(7, 'ru', 463, 0.1199, 333),
(7, 'ru', 464, 0.19, 357.5),
(7, 'ru', 465, 0.19, 373),
(7, 'ru', 466, 0.1199, 348),
(7, 'ru', 467, 0.19, 348),
(7, 'ru', 468, 0.1199, 356),
(7, 'ru', 469, 0.1199, 357),
(7, 'ru', 470, 0.1199, 361),
(7, 'ru', 471, 0.1199, 362),
(7, 'ru', 472, 0.1199, 373),
(7, 'ru', 473, 0.1199, 374),
(7, 'ru', 474, 0.1199, 378),
(7, 'ru', 475, 0.1199, 380),
(7, 'ru', 476, 0.1199, 388),
(7, 'ru', 477, 0.19, 447.5),
(7, 'ru', 478, 0.1199, 394),
(7, 'ru', 479, 0.1199, 404),
(7, 'ru', 480, 0.1199, 405),
(7, 'ru', 481, 0.1199, 406),
(7, 'ru', 482, 0.1199, 407),
(7, 'ru', 483, 0.1199, 421),
(7, 'ru', 484, 0.1199, 423),
(7, 'ru', 485, 0.1199, 425),
(7, 'ru', 486, 0.1199, 428),
(7, 'ru', 487, 0.1199, 432),
(7, 'ru', 488, 0.1199, 436),
(7, 'ru', 489, 0.1199, 437),
(7, 'ru', 490, 0.1199, 442),
(7, 'ru', 491, 0.1199, 448),
(7, 'ru', 492, 0.1199, 451),
(7, 'ru', 493, 0.1199, 452),
(7, 'ru', 494, 0.1199, 453),
(7, 'ru', 495, 0.1199, 455),
(7, 'ru', 496, 0.1199, 456),
(7, 'ru', 497, 0.19, 479),
(7, 'ru', 498, 0.1199, 472),
(7, 'ru', 499, 0.1199, 473),
(7, 'ru', 500, 0.1199, 484),
(7, 'ru', 501, 0.1199, 487),
(7, 'ru', 502, 0.1199, 492),
(7, 'ru', 503, 0.1199, 494),
(7, 'ru', 504, 0.1199, 495),
(7, 'ru', 505, 0.1199, 497),
(8, 'ru', 506, 0.2314, 1),
(9, 'ru', 4, 0.1353, 60),
(9, 'ru', 8, 0.4288, 101.25),
(9, 'ru', 9, 0.5006, 145.25),
(9, 'ru', 17, 0.2144, 136),
(9, 'ru', 21, 0.1353, 70),
(9, 'ru', 33, 0.2144, 104.5),
(9, 'ru', 38, 0.1353, 62),
(9, 'ru', 43, 0.1353, 234),
(9, 'ru', 48, 0.1353, 67),
(9, 'ru', 50, 0.2144, 203),
(9, 'ru', 52, 0.1353, 95),
(9, 'ru', 62, 0.1353, 59),
(9, 'ru', 65, 0.1353, 64),
(9, 'ru', 73, 0.2144, 77),
(9, 'ru', 90, 0.4058, 150.143),
(9, 'ru', 99, 0.1353, 78),
(9, 'ru', 117, 0.1353, 42),
(9, 'ru', 136, 0.2144, 79),
(9, 'ru', 137, 0.1353, 7),
(9, 'ru', 138, 0.1353, 165),
(9, 'ru', 141, 0.1353, 72),
(9, 'ru', 153, 0.2144, 32.5),
(9, 'ru', 180, 0.1353, 71),
(9, 'ru', 194, 0.1353, 2),
(9, 'ru', 195, 0.2144, 76.5),
(9, 'ru', 209, 0.1353, 69),
(9, 'ru', 210, 0.1353, 98),
(9, 'ru', 241, 0.1353, 91),
(9, 'ru', 255, 0.1353, 9),
(9, 'ru', 262, 0.1353, 231),
(9, 'ru', 265, 0.1353, 66),
(9, 'ru', 279, 0.1353, 41),
(9, 'ru', 280, 0.1353, 102),
(9, 'ru', 284, 0.1353, 205),
(9, 'ru', 301, 0.1353, 142),
(9, 'ru', 302, 0.1353, 76),
(9, 'ru', 319, 0.1353, 75),
(9, 'ru', 336, 0.1353, 77),
(9, 'ru', 346, 0.2706, 139.667),
(9, 'ru', 416, 0.1353, 6),
(9, 'ru', 444, 0.1353, 101),
(9, 'ru', 456, 0.1353, 22),
(9, 'ru', 507, 0.2144, 5.5),
(9, 'ru', 508, 0.1353, 8),
(9, 'ru', 509, 0.1353, 23),
(9, 'ru', 510, 0.1353, 35),
(9, 'ru', 511, 0.1353, 38),
(9, 'ru', 512, 0.1353, 39),
(9, 'ru', 513, 0.1353, 40),
(9, 'ru', 514, 0.1353, 43),
(9, 'ru', 515, 0.2144, 43),
(9, 'ru', 516, 0.1353, 57),
(9, 'ru', 517, 0.1353, 58),
(9, 'ru', 518, 0.1353, 61),
(9, 'ru', 519, 0.1353, 80),
(9, 'ru', 520, 0.1353, 81),
(9, 'ru', 521, 0.1353, 83),
(9, 'ru', 522, 0.1353, 92),
(9, 'ru', 523, 0.1353, 94),
(9, 'ru', 524, 0.1353, 96),
(9, 'ru', 525, 0.1353, 97),
(9, 'ru', 526, 0.1353, 108),
(9, 'ru', 527, 0.1353, 112),
(9, 'ru', 528, 0.2144, 112),
(9, 'ru', 529, 0.2144, 136.5),
(9, 'ru', 530, 0.2144, 137.5),
(9, 'ru', 531, 0.2144, 151),
(9, 'ru', 532, 0.1353, 117),
(9, 'ru', 533, 0.1353, 118),
(9, 'ru', 534, 0.2706, 191.333),
(9, 'ru', 535, 0.1353, 126),
(9, 'ru', 536, 0.1353, 127),
(9, 'ru', 537, 0.2144, 190.5),
(9, 'ru', 538, 0.2706, 194),
(9, 'ru', 539, 0.2144, 193),
(9, 'ru', 540, 0.2144, 165),
(9, 'ru', 541, 0.2144, 166),
(9, 'ru', 542, 0.2144, 179.5),
(9, 'ru', 543, 0.2144, 185.5),
(9, 'ru', 544, 0.2144, 174),
(9, 'ru', 545, 0.1353, 145),
(9, 'ru', 546, 0.1353, 146),
(9, 'ru', 547, 0.1353, 148),
(9, 'ru', 548, 0.2144, 179.5),
(9, 'ru', 549, 0.1353, 158),
(9, 'ru', 550, 0.1353, 162),
(9, 'ru', 551, 0.2144, 205),
(9, 'ru', 552, 0.1353, 166),
(9, 'ru', 553, 0.1353, 167),
(9, 'ru', 554, 0.1353, 169),
(9, 'ru', 555, 0.1353, 171),
(9, 'ru', 556, 0.2706, 220.333),
(9, 'ru', 557, 0.2706, 221.333),
(9, 'ru', 558, 0.1353, 184),
(9, 'ru', 559, 0.1353, 185),
(9, 'ru', 560, 0.1353, 186),
(9, 'ru', 561, 0.2144, 228.5),
(9, 'ru', 562, 0.1353, 190),
(9, 'ru', 563, 0.1353, 202),
(9, 'ru', 564, 0.1353, 203),
(9, 'ru', 565, 0.1353, 217),
(9, 'ru', 566, 0.1353, 218),
(9, 'ru', 567, 0.1353, 233),
(9, 'ru', 568, 0.1353, 244),
(9, 'ru', 569, 0.1353, 249),
(9, 'ru', 570, 0.1353, 250),
(9, 'ru', 571, 0.1353, 251),
(9, 'ru', 572, 0.1353, 254),
(9, 'ru', 573, 0.1353, 257),
(9, 'ru', 574, 0.1353, 258),
(9, 'ru', 575, 0.1353, 269),
(10, 'ru', 576, 0.2314, 1),
(11, 'ru', 577, 0.2314, 1),
(12, 'ru', 8, 0.2314, 1),
(12, 'ru', 9, 0.2314, 2),
(13, 'ru', 506, 0.2314, 1),
(14, 'ru', 578, 0.2314, 1),
(14, 'ru', 579, 0.2314, 2),
(14, 'ru', 580, 0.2314, 3),
(15, 'ru', 579, 0.2314, 2),
(15, 'ru', 580, 0.2314, 3),
(15, 'ru', 581, 0.2314, 1),
(16, 'ru', 289, 0.2314, 1),
(16, 'ru', 579, 0.2314, 3),
(16, 'ru', 580, 0.2314, 4),
(16, 'ru', 582, 0.2314, 2),
(17, 'ru', 136, 0.2314, 3),
(17, 'ru', 579, 0.2314, 4),
(17, 'ru', 580, 0.2314, 5),
(17, 'ru', 583, 0.2314, 2),
(18, 'ru', 584, 0.2314, 1),
(19, 'ru', 4, 0.17, 99),
(19, 'ru', 12, 0.2694, 19),
(19, 'ru', 15, 0.2694, 79.5),
(19, 'ru', 76, 0.17, 113),
(19, 'ru', 145, 0.17, 43),
(19, 'ru', 188, 0.17, 88),
(19, 'ru', 288, 0.17, 12),
(19, 'ru', 304, 0.17, 8),
(19, 'ru', 315, 0.17, 5),
(19, 'ru', 321, 0.2694, 25.5),
(19, 'ru', 342, 0.34, 54.3333),
(19, 'ru', 356, 0.17, 36),
(19, 'ru', 360, 0.17, 26),
(19, 'ru', 374, 0.17, 17),
(19, 'ru', 505, 0.17, 7),
(19, 'ru', 573, 0.17, 19),
(19, 'ru', 585, 0.17, 1),
(19, 'ru', 586, 0.2694, 18),
(19, 'ru', 587, 0.17, 9),
(19, 'ru', 588, 0.17, 14),
(19, 'ru', 589, 0.17, 18),
(19, 'ru', 590, 0.17, 20),
(19, 'ru', 591, 0.17, 22),
(19, 'ru', 592, 0.17, 33),
(19, 'ru', 593, 0.3947, 62.75),
(19, 'ru', 594, 0.17, 40),
(19, 'ru', 595, 0.17, 41),
(19, 'ru', 596, 0.17, 45),
(19, 'ru', 597, 0.17, 54),
(19, 'ru', 598, 0.17, 55),
(19, 'ru', 599, 0.17, 56),
(19, 'ru', 600, 0.17, 59),
(19, 'ru', 601, 0.17, 71),
(19, 'ru', 602, 0.34, 74.6667),
(19, 'ru', 603, 0.17, 73),
(19, 'ru', 604, 0.17, 76),
(19, 'ru', 605, 0.17, 78),
(19, 'ru', 606, 0.17, 79),
(19, 'ru', 607, 0.17, 80),
(19, 'ru', 608, 0.34, 91),
(19, 'ru', 609, 0.17, 90),
(19, 'ru', 610, 0.17, 98),
(19, 'ru', 611, 0.17, 100),
(19, 'ru', 612, 0.17, 108),
(19, 'ru', 613, 0.17, 109),
(19, 'ru', 614, 0.17, 110),
(20, 'ru', 3, 0.2314, 3),
(20, 'ru', 194, 0.2314, 7),
(20, 'ru', 353, 0.2314, 16),
(20, 'ru', 615, 0.2314, 1),
(20, 'ru', 616, 0.2314, 5),
(20, 'ru', 617, 0.2314, 8),
(20, 'ru', 618, 0.2314, 14),
(20, 'ru', 619, 0.2314, 17),
(21, 'ru', 385, 0.3504, 21.5),
(21, 'ru', 408, 0.3504, 14.5),
(21, 'ru', 620, 0.2211, 1),
(21, 'ru', 621, 0.3504, 11.5),
(21, 'ru', 622, 0.3504, 12.5),
(21, 'ru', 623, 0.3504, 15.5),
(21, 'ru', 624, 0.3504, 16.5),
(21, 'ru', 625, 0.3504, 17.5),
(21, 'ru', 626, 0.3504, 19.5),
(21, 'ru', 627, 0.3504, 20.5),
(21, 'ru', 628, 0.3504, 23.5),
(21, 'ru', 629, 0.3504, 24.5),
(22, 'ru', 116, 0.3199, 24.5),
(22, 'ru', 228, 0.3199, 43.5),
(22, 'ru', 247, 0.3199, 42.5),
(22, 'ru', 359, 0.3199, 25.5),
(22, 'ru', 622, 0.3199, 31.5),
(22, 'ru', 630, 0.2018, 1),
(22, 'ru', 631, 0.3199, 19.5),
(22, 'ru', 632, 0.3199, 21.5),
(22, 'ru', 633, 0.3199, 22.5),
(22, 'ru', 634, 0.3199, 32.5),
(22, 'ru', 635, 0.3199, 33.5),
(22, 'ru', 636, 0.3199, 34.5),
(22, 'ru', 637, 0.3199, 41.5),
(22, 'ru', 638, 0.3199, 44.5),
(22, 'ru', 639, 0.3199, 46.5),
(22, 'ru', 640, 0.3199, 48.5),
(23, 'ru', 27, 0.2886, 58.5),
(23, 'ru', 199, 0.2886, 60.5),
(23, 'ru', 303, 0.2886, 46.5),
(23, 'ru', 316, 0.2886, 45.5),
(23, 'ru', 382, 0.2886, 44.5),
(23, 'ru', 389, 0.2886, 42.5),
(23, 'ru', 641, 0.3642, 18),
(23, 'ru', 642, 0.2886, 24.5),
(23, 'ru', 643, 0.2886, 25.5),
(23, 'ru', 644, 0.2886, 27.5),
(23, 'ru', 645, 0.2886, 29.5),
(23, 'ru', 646, 0.2886, 30.5),
(23, 'ru', 647, 0.2886, 31.5),
(23, 'ru', 648, 0.2886, 32.5),
(23, 'ru', 649, 0.2886, 40.5),
(23, 'ru', 650, 0.4228, 49.5),
(23, 'ru', 651, 0.2886, 43.5),
(23, 'ru', 652, 0.2886, 53.5),
(23, 'ru', 653, 0.2886, 56.5),
(23, 'ru', 654, 0.2886, 62.5),
(23, 'ru', 655, 0.2886, 63.5),
(24, 'ru', 138, 0.2823, 27),
(24, 'ru', 217, 0.2823, 19),
(24, 'ru', 359, 0.2823, 20),
(24, 'ru', 639, 0.2823, 44),
(24, 'ru', 640, 0.4135, 34),
(24, 'ru', 642, 0.2823, 22),
(24, 'ru', 651, 0.2823, 21),
(24, 'ru', 656, 0.1781, 1),
(24, 'ru', 657, 0.2823, 23),
(24, 'ru', 658, 0.2823, 24),
(24, 'ru', 659, 0.2823, 25),
(24, 'ru', 660, 0.2823, 26),
(24, 'ru', 661, 0.2823, 28),
(24, 'ru', 662, 0.2823, 30),
(24, 'ru', 663, 0.2823, 31),
(24, 'ru', 664, 0.2823, 32),
(24, 'ru', 665, 0.2823, 33),
(24, 'ru', 666, 0.2823, 34),
(24, 'ru', 667, 0.2823, 36),
(24, 'ru', 668, 0.2823, 37),
(24, 'ru', 669, 0.2823, 43),
(24, 'ru', 670, 0.2823, 45),
(24, 'ru', 671, 0.2823, 46),
(24, 'ru', 672, 0.2823, 47),
(25, 'ru', 323, 0.3504, 14),
(25, 'ru', 367, 0.3504, 23),
(25, 'ru', 373, 0.3504, 20),
(25, 'ru', 389, 0.3504, 19),
(25, 'ru', 673, 0.4421, 9),
(25, 'ru', 674, 0.3504, 11),
(25, 'ru', 675, 0.3504, 12),
(25, 'ru', 676, 0.3504, 16),
(25, 'ru', 677, 0.3504, 17),
(25, 'ru', 678, 0.3504, 18),
(25, 'ru', 679, 0.3504, 21),
(26, 'ru', 408, 0.3608, 17),
(26, 'ru', 592, 0.3608, 26),
(26, 'ru', 621, 0.3608, 14),
(26, 'ru', 622, 0.3608, 15),
(26, 'ru', 623, 0.3608, 18),
(26, 'ru', 625, 0.3608, 30),
(26, 'ru', 626, 0.3608, 25),
(26, 'ru', 636, 0.3608, 19),
(26, 'ru', 680, 0.2277, 1),
(26, 'ru', 681, 0.3608, 28),
(26, 'ru', 682, 0.3608, 32),
(27, 'ru', 247, 0.2823, 49.5),
(27, 'ru', 359, 0.2823, 23.5),
(27, 'ru', 439, 0.2823, 56.5),
(27, 'ru', 482, 0.2823, 33.5),
(27, 'ru', 489, 0.2823, 36.5),
(27, 'ru', 625, 0.2823, 32.5),
(27, 'ru', 626, 0.2823, 29.5),
(27, 'ru', 637, 0.2823, 48.5),
(27, 'ru', 650, 0.2823, 50.5),
(27, 'ru', 683, 0.1781, 1),
(27, 'ru', 684, 0.2823, 21.5),
(27, 'ru', 685, 0.2823, 22.5),
(27, 'ru', 686, 0.2823, 31.5),
(27, 'ru', 687, 0.2823, 34.5),
(27, 'ru', 688, 0.2823, 35.5),
(27, 'ru', 689, 0.2823, 37.5),
(27, 'ru', 690, 0.2823, 38.5),
(27, 'ru', 691, 0.2823, 40.5),
(27, 'ru', 692, 0.2823, 41.5),
(27, 'ru', 693, 0.2823, 51.5),
(27, 'ru', 694, 0.2823, 52.5),
(27, 'ru', 695, 0.2823, 53.5),
(27, 'ru', 696, 0.2823, 55.5),
(27, 'ru', 697, 0.2823, 58.5),
(27, 'ru', 698, 0.2823, 59.5),
(28, 'ru', 120, 0.2853, 43),
(28, 'ru', 228, 0.2853, 51),
(28, 'ru', 247, 0.2853, 50),
(28, 'ru', 482, 0.2853, 28),
(28, 'ru', 489, 0.2853, 31),
(28, 'ru', 592, 0.2853, 44),
(28, 'ru', 621, 0.2853, 22),
(28, 'ru', 622, 0.2853, 23),
(28, 'ru', 625, 0.2853, 25),
(28, 'ru', 626, 0.418, 34.5),
(28, 'ru', 637, 0.2853, 49),
(28, 'ru', 638, 0.2853, 52),
(28, 'ru', 639, 0.2853, 56),
(28, 'ru', 640, 0.2853, 54),
(28, 'ru', 682, 0.2853, 47),
(28, 'ru', 686, 0.2853, 24),
(28, 'ru', 687, 0.2853, 29),
(28, 'ru', 688, 0.2853, 30),
(28, 'ru', 689, 0.2853, 32),
(28, 'ru', 690, 0.2853, 33),
(28, 'ru', 691, 0.2853, 35),
(28, 'ru', 692, 0.2853, 36),
(28, 'ru', 699, 0.18, 1),
(29, 'ru', 167, 0.3142, 34),
(29, 'ru', 359, 0.4603, 23),
(29, 'ru', 382, 0.4603, 21),
(29, 'ru', 389, 0.3142, 17),
(29, 'ru', 454, 0.3142, 21),
(29, 'ru', 624, 0.3142, 20),
(29, 'ru', 676, 0.3142, 15),
(29, 'ru', 688, 0.3142, 31),
(29, 'ru', 691, 0.3142, 27),
(29, 'ru', 700, 0.1982, 1),
(29, 'ru', 701, 0.3142, 19),
(29, 'ru', 702, 0.3142, 29),
(29, 'ru', 703, 0.3142, 32),
(29, 'ru', 704, 0.3142, 35),
(29, 'ru', 705, 0.3142, 35),
(30, 'ru', 477, 0.3413, 32),
(30, 'ru', 592, 0.3413, 39),
(30, 'ru', 625, 0.3413, 43),
(30, 'ru', 626, 0.3413, 38),
(30, 'ru', 640, 0.3413, 28),
(30, 'ru', 676, 0.3413, 21),
(30, 'ru', 682, 0.3413, 47),
(30, 'ru', 706, 0.2153, 1),
(30, 'ru', 707, 0.3413, 19),
(30, 'ru', 708, 0.3413, 22),
(30, 'ru', 709, 0.3413, 29),
(30, 'ru', 710, 0.5, 30),
(31, 'ru', 359, 0.2853, 45),
(31, 'ru', 625, 0.2853, 41),
(31, 'ru', 626, 0.2853, 43),
(31, 'ru', 637, 0.2853, 34),
(31, 'ru', 686, 0.2853, 40),
(31, 'ru', 688, 0.2853, 44),
(31, 'ru', 689, 0.2853, 46),
(31, 'ru', 690, 0.2853, 47),
(31, 'ru', 691, 0.2853, 49),
(31, 'ru', 692, 0.2853, 50),
(31, 'ru', 711, 0.18, 1),
(31, 'ru', 712, 0.2853, 20),
(31, 'ru', 713, 0.2853, 21),
(31, 'ru', 714, 0.418, 25.5),
(31, 'ru', 715, 0.418, 25.5),
(31, 'ru', 716, 0.2853, 24),
(31, 'ru', 717, 0.2853, 25),
(31, 'ru', 718, 0.2853, 29),
(31, 'ru', 719, 0.2853, 30),
(31, 'ru', 720, 0.2853, 31),
(31, 'ru', 721, 0.418, 31),
(32, 'ru', 12, 0.2351, 58),
(32, 'ru', 15, 0.2351, 94),
(32, 'ru', 71, 0.2351, 113),
(32, 'ru', 116, 0.3444, 74.5),
(32, 'ru', 138, 0.4164, 75),
(32, 'ru', 197, 0.2351, 97),
(32, 'ru', 208, 0.4164, 90.3333),
(32, 'ru', 236, 0.2351, 68),
(32, 'ru', 302, 0.2351, 70),
(32, 'ru', 365, 0.2351, 96),
(32, 'ru', 408, 0.3444, 72),
(32, 'ru', 658, 0.2351, 60),
(32, 'ru', 659, 0.2351, 55),
(32, 'ru', 676, 0.2351, 62),
(32, 'ru', 679, 0.2351, 95),
(32, 'ru', 708, 0.2351, 61),
(32, 'ru', 722, 0.1483, 1),
(32, 'ru', 723, 0.2351, 44),
(32, 'ru', 724, 0.2351, 45),
(32, 'ru', 725, 0.3444, 75.5),
(32, 'ru', 726, 0.2351, 48),
(32, 'ru', 727, 0.2351, 49),
(32, 'ru', 728, 0.2351, 50),
(32, 'ru', 729, 0.2351, 51),
(32, 'ru', 730, 0.2351, 53),
(32, 'ru', 731, 0.2351, 56),
(32, 'ru', 732, 0.2351, 63),
(32, 'ru', 733, 0.2351, 65),
(32, 'ru', 734, 0.2351, 69),
(32, 'ru', 735, 0.2351, 71),
(32, 'ru', 736, 0.2351, 72),
(32, 'ru', 737, 0.2351, 74),
(32, 'ru', 738, 0.2351, 78),
(32, 'ru', 739, 0.2351, 86),
(32, 'ru', 740, 0.2351, 88),
(32, 'ru', 741, 0.2351, 89),
(32, 'ru', 742, 0.2351, 91),
(32, 'ru', 743, 0.2351, 105),
(32, 'ru', 744, 0.2351, 108),
(32, 'ru', 745, 0.2351, 108),
(32, 'ru', 746, 0.2351, 108),
(32, 'ru', 747, 0.2351, 110),
(32, 'ru', 748, 0.2351, 114),
(32, 'ru', 749, 0.2351, 118),
(32, 'ru', 750, 0.3444, 118),
(32, 'ru', 751, 0.2351, 122),
(33, 'ru', 9, 0.2233, 68),
(33, 'ru', 12, 0.3271, 102.5),
(33, 'ru', 15, 0.2233, 158),
(33, 'ru', 34, 0.2233, 95),
(33, 'ru', 37, 0.2233, 85),
(33, 'ru', 107, 0.2233, 110),
(33, 'ru', 108, 0.3271, 110),
(33, 'ru', 161, 0.2233, 117),
(33, 'ru', 194, 0.2233, 65),
(33, 'ru', 208, 0.3271, 125.5),
(33, 'ru', 223, 0.2233, 140),
(33, 'ru', 227, 0.2233, 134),
(33, 'ru', 231, 0.3955, 102),
(33, 'ru', 232, 0.3955, 119.667),
(33, 'ru', 258, 0.2233, 135),
(33, 'ru', 284, 0.2233, 87),
(33, 'ru', 291, 0.2233, 130),
(33, 'ru', 302, 0.2233, 108),
(33, 'ru', 350, 0.2233, 138),
(33, 'ru', 382, 0.2233, 104),
(33, 'ru', 386, 0.2233, 123),
(33, 'ru', 416, 0.2233, 63),
(33, 'ru', 477, 0.2233, 161),
(33, 'ru', 553, 0.2233, 66),
(33, 'ru', 599, 0.2233, 80),
(33, 'ru', 725, 0.2233, 93),
(33, 'ru', 734, 0.2233, 151),
(33, 'ru', 740, 0.2233, 57),
(33, 'ru', 752, 0.3642, 96.6),
(33, 'ru', 753, 0.2233, 58),
(33, 'ru', 754, 0.2233, 61),
(33, 'ru', 755, 0.2233, 64),
(33, 'ru', 756, 0.2233, 74),
(33, 'ru', 757, 0.2233, 75),
(33, 'ru', 758, 0.2233, 79),
(33, 'ru', 759, 0.2233, 81),
(33, 'ru', 760, 0.2233, 82),
(33, 'ru', 761, 0.2233, 84),
(33, 'ru', 762, 0.2233, 96),
(33, 'ru', 763, 0.2233, 97),
(33, 'ru', 764, 0.3271, 127.5),
(33, 'ru', 765, 0.2233, 102),
(33, 'ru', 766, 0.2233, 103),
(33, 'ru', 767, 0.2233, 106),
(33, 'ru', 768, 0.2233, 107),
(33, 'ru', 769, 0.2233, 109),
(33, 'ru', 770, 0.2233, 116),
(33, 'ru', 771, 0.2233, 118),
(33, 'ru', 772, 0.2233, 119),
(33, 'ru', 773, 0.2233, 120),
(33, 'ru', 774, 0.2233, 122),
(33, 'ru', 775, 0.2233, 124),
(33, 'ru', 776, 0.2233, 125),
(33, 'ru', 777, 0.2233, 128),
(33, 'ru', 778, 0.2233, 131),
(33, 'ru', 779, 0.2233, 133),
(33, 'ru', 780, 0.2233, 150),
(33, 'ru', 781, 0.2233, 152),
(33, 'ru', 782, 0.2233, 160),
(34, 'ru', 12, 0.3281, 125.5),
(34, 'ru', 56, 0.224, 127),
(34, 'ru', 61, 0.224, 113),
(34, 'ru', 99, 0.224, 69),
(34, 'ru', 129, 0.224, 129),
(34, 'ru', 130, 0.224, 129),
(34, 'ru', 131, 0.224, 129),
(34, 'ru', 162, 0.224, 103),
(34, 'ru', 312, 0.224, 108),
(34, 'ru', 342, 0.3281, 89),
(34, 'ru', 372, 0.224, 81),
(34, 'ru', 380, 0.224, 52),
(34, 'ru', 439, 0.224, 126),
(34, 'ru', 442, 0.224, 134),
(34, 'ru', 448, 0.224, 122),
(34, 'ru', 651, 0.224, 135),
(34, 'ru', 662, 0.224, 125),
(34, 'ru', 676, 0.224, 102),
(34, 'ru', 678, 0.224, 99),
(34, 'ru', 692, 0.224, 98),
(34, 'ru', 709, 0.3281, 58.5),
(34, 'ru', 724, 0.224, 140),
(34, 'ru', 739, 0.224, 96),
(34, 'ru', 771, 0.3967, 87.6667),
(34, 'ru', 783, 0.3653, 65.4),
(34, 'ru', 784, 0.224, 50),
(34, 'ru', 785, 0.224, 57),
(34, 'ru', 786, 0.3281, 57),
(34, 'ru', 787, 0.224, 59),
(34, 'ru', 788, 0.224, 60),
(34, 'ru', 789, 0.224, 61),
(34, 'ru', 790, 0.224, 65),
(34, 'ru', 791, 0.224, 68),
(34, 'ru', 792, 0.224, 71),
(34, 'ru', 793, 0.224, 73),
(34, 'ru', 794, 0.224, 79),
(34, 'ru', 795, 0.224, 82),
(34, 'ru', 796, 0.224, 83),
(34, 'ru', 797, 0.224, 84),
(34, 'ru', 798, 0.224, 86),
(34, 'ru', 799, 0.224, 87),
(34, 'ru', 800, 0.224, 88),
(34, 'ru', 801, 0.224, 89),
(34, 'ru', 802, 0.224, 95),
(34, 'ru', 803, 0.224, 97),
(34, 'ru', 804, 0.224, 101),
(34, 'ru', 805, 0.224, 104),
(34, 'ru', 806, 0.224, 107),
(34, 'ru', 807, 0.224, 109),
(34, 'ru', 808, 0.224, 110),
(34, 'ru', 809, 0.224, 111),
(34, 'ru', 810, 0.3281, 121),
(34, 'ru', 811, 0.224, 121),
(34, 'ru', 812, 0.224, 123),
(34, 'ru', 813, 0.224, 130),
(34, 'ru', 814, 0.224, 132),
(34, 'ru', 815, 0.224, 137),
(34, 'ru', 816, 0.224, 138),
(34, 'ru', 817, 0.224, 139),
(35, 'ru', 116, 0.2577, 92.5),
(35, 'ru', 123, 0.1626, 1),
(35, 'ru', 162, 0.2577, 83.5),
(35, 'ru', 232, 0.2577, 59.5),
(35, 'ru', 316, 0.2577, 87.5),
(35, 'ru', 333, 0.2577, 71.5),
(35, 'ru', 374, 0.2577, 85.5),
(35, 'ru', 621, 0.2577, 44.5),
(35, 'ru', 658, 0.2577, 46.5),
(35, 'ru', 688, 0.2577, 42.5),
(35, 'ru', 710, 0.3776, 52.5),
(35, 'ru', 723, 0.2577, 90.5),
(35, 'ru', 725, 0.2577, 93.5),
(35, 'ru', 726, 0.2577, 89.5),
(35, 'ru', 770, 0.2577, 88.5),
(35, 'ru', 771, 0.2577, 36.5),
(35, 'ru', 774, 0.2577, 76.5),
(35, 'ru', 818, 0.3776, 60),
(35, 'ru', 819, 0.2577, 37.5),
(35, 'ru', 820, 0.2577, 39.5),
(35, 'ru', 821, 0.2577, 43.5),
(35, 'ru', 822, 0.2577, 54.5),
(35, 'ru', 823, 0.2577, 56.5),
(35, 'ru', 824, 0.2577, 57.5),
(35, 'ru', 825, 0.2577, 58.5),
(35, 'ru', 826, 0.2577, 61.5),
(35, 'ru', 827, 0.2577, 62.5),
(35, 'ru', 828, 0.2577, 64.5),
(35, 'ru', 829, 0.2577, 70.5),
(35, 'ru', 830, 0.2577, 72.5),
(35, 'ru', 831, 0.2577, 73.5),
(35, 'ru', 832, 0.2577, 75.5),
(35, 'ru', 833, 0.2577, 82.5),
(35, 'ru', 834, 0.2577, 91.5),
(36, 'ru', 12, 0.25, 52),
(36, 'ru', 56, 0.1577, 129),
(36, 'ru', 90, 0.1577, 133),
(36, 'ru', 138, 0.25, 57),
(36, 'ru', 241, 0.25, 31),
(36, 'ru', 270, 0.1577, 102),
(36, 'ru', 342, 0.25, 62),
(36, 'ru', 372, 0.25, 42),
(36, 'ru', 374, 0.1577, 98),
(36, 'ru', 389, 0.25, 35),
(36, 'ru', 424, 0.1577, 100),
(36, 'ru', 549, 0.25, 55),
(36, 'ru', 640, 0.1577, 112),
(36, 'ru', 642, 0.3662, 66),
(36, 'ru', 643, 0.25, 27),
(36, 'ru', 651, 0.25, 53),
(36, 'ru', 676, 0.1577, 103),
(36, 'ru', 678, 0.1577, 104),
(36, 'ru', 771, 0.25, 33),
(36, 'ru', 777, 0.1577, 118),
(36, 'ru', 790, 0.25, 38),
(36, 'ru', 791, 0.3155, 19),
(36, 'ru', 835, 0.25, 30),
(36, 'ru', 836, 0.25, 32),
(36, 'ru', 837, 0.3662, 46),
(36, 'ru', 838, 0.25, 39),
(36, 'ru', 839, 0.25, 40),
(36, 'ru', 840, 0.25, 41),
(36, 'ru', 841, 0.25, 48),
(36, 'ru', 842, 0.25, 51),
(36, 'ru', 843, 0.25, 56),
(36, 'ru', 844, 0.25, 59),
(36, 'ru', 845, 0.25, 60),
(36, 'ru', 846, 0.25, 61),
(36, 'ru', 847, 0.25, 63),
(36, 'ru', 848, 0.25, 65),
(36, 'ru', 849, 0.25, 66),
(36, 'ru', 850, 0.25, 68),
(36, 'ru', 851, 0.1577, 110),
(36, 'ru', 852, 0.1577, 114),
(36, 'ru', 853, 0.1577, 115),
(36, 'ru', 854, 0.1577, 117),
(36, 'ru', 855, 0.1577, 124),
(36, 'ru', 856, 0.1577, 125),
(36, 'ru', 857, 0.1577, 126),
(36, 'ru', 858, 0.1577, 130),
(36, 'ru', 859, 0.1577, 131),
(37, 'ru', 27, 0.3042, 46.5),
(37, 'ru', 116, 0.3042, 38.5),
(37, 'ru', 191, 0.3042, 29.5),
(37, 'ru', 359, 0.3042, 39.5),
(37, 'ru', 383, 0.3042, 21.5),
(37, 'ru', 388, 0.3042, 40.5),
(37, 'ru', 390, 0.3042, 23.5),
(37, 'ru', 416, 0.3042, 45.5),
(37, 'ru', 642, 0.3042, 20.5),
(37, 'ru', 651, 0.3042, 19.5),
(37, 'ru', 860, 0.192, 1),
(37, 'ru', 861, 0.3042, 25.5),
(37, 'ru', 862, 0.3042, 26.5),
(37, 'ru', 863, 0.3042, 28.5),
(37, 'ru', 864, 0.3042, 30.5),
(37, 'ru', 865, 0.3042, 32.5),
(37, 'ru', 866, 0.3042, 41.5),
(37, 'ru', 867, 0.3042, 43.5),
(37, 'ru', 868, 0.3042, 48.5),
(38, 'ru', 51, 0.2694, 50.5),
(38, 'ru', 131, 0.2694, 36.5),
(38, 'ru', 174, 0.2694, 52.5),
(38, 'ru', 367, 0.2694, 30.5),
(38, 'ru', 395, 0.2694, 61.5),
(38, 'ru', 412, 0.2694, 45.5),
(38, 'ru', 424, 0.2694, 64.5),
(38, 'ru', 592, 0.2694, 62.5),
(38, 'ru', 674, 0.2694, 60.5),
(38, 'ru', 675, 0.3947, 34.5),
(38, 'ru', 741, 0.2694, 67.5),
(38, 'ru', 846, 0.2694, 66.5),
(38, 'ru', 869, 0.34, 18.6667),
(38, 'ru', 870, 0.2694, 28.5),
(38, 'ru', 871, 0.2694, 31.5),
(38, 'ru', 872, 0.2694, 32.5),
(38, 'ru', 873, 0.2694, 33.5),
(38, 'ru', 874, 0.2694, 34.5),
(38, 'ru', 875, 0.2694, 35.5),
(38, 'ru', 876, 0.2694, 43.5),
(38, 'ru', 877, 0.2694, 44.5),
(38, 'ru', 878, 0.2694, 47.5),
(38, 'ru', 879, 0.2694, 48.5),
(38, 'ru', 880, 0.2694, 49.5),
(38, 'ru', 881, 0.2694, 51.5),
(38, 'ru', 882, 0.2694, 53.5),
(38, 'ru', 883, 0.2694, 59.5),
(38, 'ru', 884, 0.2694, 68.5),
(39, 'ru', 34, 0.2823, 28),
(39, 'ru', 227, 0.2823, 55),
(39, 'ru', 374, 0.2823, 25),
(39, 'ru', 380, 0.4135, 46),
(39, 'ru', 382, 0.2823, 39),
(39, 'ru', 478, 0.2823, 30),
(39, 'ru', 651, 0.2823, 35),
(39, 'ru', 675, 0.5, 34),
(39, 'ru', 678, 0.2823, 62),
(39, 'ru', 776, 0.2823, 31),
(39, 'ru', 838, 0.2823, 44),
(39, 'ru', 885, 0.4604, 31.4),
(39, 'ru', 886, 0.2823, 24),
(39, 'ru', 887, 0.2823, 26),
(39, 'ru', 888, 0.2823, 40),
(39, 'ru', 889, 0.2823, 43),
(39, 'ru', 890, 0.2823, 52),
(39, 'ru', 891, 0.2823, 53),
(39, 'ru', 892, 0.2823, 58),
(39, 'ru', 893, 0.2823, 59),
(40, 'ru', 12, 0.2823, 51),
(40, 'ru', 52, 0.2823, 46),
(40, 'ru', 174, 0.2823, 33),
(40, 'ru', 374, 0.2823, 22),
(40, 'ru', 639, 0.2823, 31),
(40, 'ru', 651, 0.2823, 50),
(40, 'ru', 675, 0.5, 30.3333),
(40, 'ru', 754, 0.2823, 53),
(40, 'ru', 770, 0.2823, 29),
(40, 'ru', 818, 0.2823, 21),
(40, 'ru', 831, 0.2823, 38),
(40, 'ru', 846, 0.2823, 49),
(40, 'ru', 882, 0.2823, 34),
(40, 'ru', 887, 0.2823, 23),
(40, 'ru', 894, 0.3562, 16.3333),
(40, 'ru', 895, 0.2823, 25),
(40, 'ru', 896, 0.2823, 26),
(40, 'ru', 897, 0.2823, 27),
(40, 'ru', 898, 0.2823, 30),
(40, 'ru', 899, 0.2823, 35),
(40, 'ru', 900, 0.2823, 37),
(40, 'ru', 901, 0.2823, 47),
(41, 'ru', 11, 0.2742, 38.5),
(41, 'ru', 129, 0.2742, 42.5),
(41, 'ru', 130, 0.4016, 48),
(41, 'ru', 131, 0.2742, 42.5),
(41, 'ru', 167, 0.2742, 40.5),
(41, 'ru', 208, 0.2742, 73.5),
(41, 'ru', 625, 0.2742, 48.5),
(41, 'ru', 639, 0.2742, 34.5),
(41, 'ru', 674, 0.2742, 29.5),
(41, 'ru', 675, 0.2742, 30.5),
(41, 'ru', 684, 0.2742, 60.5),
(41, 'ru', 704, 0.2742, 50.5),
(41, 'ru', 719, 0.2742, 36.5),
(41, 'ru', 882, 0.2742, 32.5),
(41, 'ru', 902, 0.173, 1),
(41, 'ru', 903, 0.2742, 28.5),
(41, 'ru', 904, 0.2742, 37.5),
(41, 'ru', 905, 0.2742, 41.5),
(41, 'ru', 906, 0.2742, 51.5),
(41, 'ru', 907, 0.2742, 52.5),
(41, 'ru', 908, 0.2742, 56.5),
(41, 'ru', 909, 0.2742, 57.5),
(41, 'ru', 910, 0.2742, 59.5),
(41, 'ru', 911, 0.2742, 63.5),
(41, 'ru', 912, 0.2742, 65.5),
(41, 'ru', 913, 0.2742, 72.5),
(41, 'ru', 914, 0.2742, 75.5),
(42, 'ru', 12, 0.2613, 68.5),
(42, 'ru', 120, 0.2613, 63.5),
(42, 'ru', 359, 0.2613, 57.5),
(42, 'ru', 362, 0.2613, 38.5),
(42, 'ru', 440, 0.2613, 61.5),
(42, 'ru', 622, 0.2613, 36.5),
(42, 'ru', 650, 0.3828, 53),
(42, 'ru', 665, 0.2613, 29.5),
(42, 'ru', 670, 0.2613, 32.5),
(42, 'ru', 675, 0.4628, 41.8333),
(42, 'ru', 776, 0.2613, 66.5),
(42, 'ru', 788, 0.2613, 62.5),
(42, 'ru', 818, 0.2613, 27.5),
(42, 'ru', 882, 0.2613, 33.5),
(42, 'ru', 887, 0.2613, 48.5),
(42, 'ru', 888, 0.2613, 70.5),
(42, 'ru', 898, 0.2613, 30.5),
(42, 'ru', 915, 0.1649, 1),
(42, 'ru', 916, 0.2613, 35.5),
(42, 'ru', 917, 0.2613, 37.5),
(42, 'ru', 918, 0.2613, 41.5),
(42, 'ru', 919, 0.2613, 42.5),
(42, 'ru', 920, 0.2613, 44.5),
(42, 'ru', 921, 0.2613, 46.5),
(42, 'ru', 922, 0.2613, 54.5),
(42, 'ru', 923, 0.2613, 56.5),
(42, 'ru', 924, 0.2613, 58.5),
(42, 'ru', 925, 0.2613, 59.5),
(42, 'ru', 926, 0.2613, 72.5),
(42, 'ru', 927, 0.3828, 72.5),
(43, 'ru', 12, 0.2921, 50),
(43, 'ru', 333, 0.2921, 27),
(43, 'ru', 383, 0.2921, 44),
(43, 'ru', 419, 0.2921, 41),
(43, 'ru', 440, 0.2921, 49),
(43, 'ru', 442, 0.2921, 43),
(43, 'ru', 626, 0.2921, 42),
(43, 'ru', 663, 0.2921, 26),
(43, 'ru', 665, 0.2921, 32),
(43, 'ru', 675, 0.2921, 24),
(43, 'ru', 739, 0.2921, 46),
(43, 'ru', 743, 0.2921, 45),
(43, 'ru', 818, 0.2921, 20),
(43, 'ru', 831, 0.2921, 23),
(43, 'ru', 846, 0.2921, 48),
(43, 'ru', 895, 0.2921, 28),
(43, 'ru', 896, 0.2921, 29),
(43, 'ru', 897, 0.2921, 30),
(43, 'ru', 898, 0.2921, 33),
(43, 'ru', 922, 0.2921, 21),
(43, 'ru', 928, 0.1843, 1),
(43, 'ru', 929, 0.2921, 40),
(44, 'ru', 52, 0.2754, 38.5),
(44, 'ru', 61, 0.2754, 57.5),
(44, 'ru', 359, 0.2754, 26.5),
(44, 'ru', 382, 0.2754, 42.5),
(44, 'ru', 439, 0.2754, 55.5),
(44, 'ru', 498, 0.2754, 60.5),
(44, 'ru', 499, 0.2754, 61.5),
(44, 'ru', 622, 0.2754, 32.5),
(44, 'ru', 639, 0.2754, 35.5),
(44, 'ru', 651, 0.2754, 27.5),
(44, 'ru', 656, 0.1738, 2),
(44, 'ru', 663, 0.2754, 30.5),
(44, 'ru', 675, 0.4035, 40.5),
(44, 'ru', 831, 0.2754, 53.5),
(44, 'ru', 846, 0.2754, 41.5),
(44, 'ru', 882, 0.2754, 37.5),
(44, 'ru', 916, 0.2754, 31.5),
(44, 'ru', 922, 0.2754, 63.5),
(44, 'ru', 923, 0.2754, 48.5),
(44, 'ru', 930, 0.1738, 1),
(44, 'ru', 931, 0.2754, 25.5),
(44, 'ru', 932, 0.2754, 34.5),
(44, 'ru', 933, 0.2754, 39.5),
(44, 'ru', 934, 0.2754, 50.5),
(44, 'ru', 935, 0.2754, 58.5),
(44, 'ru', 936, 0.2754, 59.5),
(44, 'ru', 937, 0.2754, 64.5),
(45, 'ru', 12, 0.3667, 5),
(45, 'ru', 174, 0.3667, 4),
(45, 'ru', 642, 0.2314, 4),
(45, 'ru', 938, 0.2314, 3),
(45, 'ru', 939, 0.2314, 6),
(46, 'ru', 12, 0.2314, 2),
(46, 'ru', 651, 0.2314, 1),
(46, 'ru', 675, 0.2314, 5),
(46, 'ru', 771, 0.2314, 4),
(46, 'ru', 938, 0.2314, 3),
(47, 'ru', 12, 0.2314, 1),
(47, 'ru', 367, 0.2314, 3),
(47, 'ru', 675, 0.2314, 8),
(47, 'ru', 771, 0.2314, 6),
(47, 'ru', 940, 0.2314, 4),
(47, 'ru', 941, 0.2314, 5),
(48, 'ru', 12, 0.3667, 4.5),
(48, 'ru', 174, 0.2314, 5),
(48, 'ru', 368, 0.3667, 3.5),
(48, 'ru', 675, 0.2314, 4),
(48, 'ru', 942, 0.2314, 3),
(49, 'ru', 9, 0.2246, 11),
(49, 'ru', 12, 0.3979, 67),
(49, 'ru', 15, 0.1417, 57),
(49, 'ru', 17, 0.2246, 139.5),
(49, 'ru', 27, 0.1417, 81),
(49, 'ru', 56, 0.1417, 178),
(49, 'ru', 108, 0.1417, 170),
(49, 'ru', 129, 0.1417, 77),
(49, 'ru', 130, 0.1417, 77),
(49, 'ru', 131, 0.1417, 77),
(49, 'ru', 138, 0.2246, 98),
(49, 'ru', 142, 0.2246, 151.5),
(49, 'ru', 145, 0.2246, 152.5),
(49, 'ru', 191, 0.1417, 105),
(49, 'ru', 197, 0.2246, 43),
(49, 'ru', 198, 0.3291, 101),
(49, 'ru', 292, 0.1417, 75),
(49, 'ru', 302, 0.1417, 144),
(49, 'ru', 315, 0.2246, 101.5),
(49, 'ru', 319, 0.1417, 74),
(49, 'ru', 321, 0.2835, 30.3333),
(49, 'ru', 332, 0.1417, 168),
(49, 'ru', 346, 0.2246, 134),
(49, 'ru', 352, 0.1417, 28),
(49, 'ru', 360, 0.1417, 55),
(49, 'ru', 372, 0.1417, 32),
(49, 'ru', 376, 0.1417, 195),
(49, 'ru', 379, 0.1417, 92),
(49, 'ru', 380, 0.1417, 104),
(49, 'ru', 382, 0.1417, 58),
(49, 'ru', 389, 0.1417, 48),
(49, 'ru', 395, 0.1417, 155),
(49, 'ru', 408, 0.2246, 161),
(49, 'ru', 411, 0.1417, 179),
(49, 'ru', 421, 0.1417, 51),
(49, 'ru', 422, 0.1417, 52),
(49, 'ru', 423, 0.2835, 11.6667),
(49, 'ru', 427, 0.1417, 119),
(49, 'ru', 428, 0.1417, 159),
(49, 'ru', 445, 0.2835, 141),
(49, 'ru', 490, 0.1417, 39),
(49, 'ru', 544, 0.1417, 135),
(49, 'ru', 577, 0.1417, 173),
(49, 'ru', 589, 0.2246, 13),
(49, 'ru', 591, 0.3291, 170.75),
(49, 'ru', 735, 0.1417, 91),
(49, 'ru', 736, 0.1417, 161),
(49, 'ru', 773, 0.2246, 32.5),
(49, 'ru', 831, 0.1417, 84),
(49, 'ru', 846, 0.1417, 83),
(49, 'ru', 855, 0.2246, 142.5),
(49, 'ru', 862, 0.1417, 103),
(49, 'ru', 943, 0.2246, 12),
(49, 'ru', 944, 0.1417, 26),
(49, 'ru', 945, 0.1417, 30),
(49, 'ru', 946, 0.1417, 31),
(49, 'ru', 947, 0.1417, 33),
(49, 'ru', 948, 0.1417, 34),
(49, 'ru', 949, 0.1417, 35),
(49, 'ru', 950, 0.1417, 37),
(49, 'ru', 951, 0.1417, 40),
(49, 'ru', 952, 0.1417, 41),
(49, 'ru', 953, 0.1417, 50),
(49, 'ru', 954, 0.1417, 59),
(49, 'ru', 955, 0.1417, 60),
(49, 'ru', 956, 0.1417, 70),
(49, 'ru', 957, 0.1417, 73),
(49, 'ru', 958, 0.1417, 76),
(49, 'ru', 959, 0.1417, 86),
(49, 'ru', 960, 0.1417, 89),
(49, 'ru', 961, 0.1417, 98),
(49, 'ru', 962, 0.1417, 101),
(49, 'ru', 963, 0.2246, 115),
(49, 'ru', 964, 0.2835, 148),
(49, 'ru', 965, 0.1417, 118),
(49, 'ru', 966, 0.1417, 122),
(49, 'ru', 967, 0.1417, 126),
(49, 'ru', 968, 0.1417, 130),
(49, 'ru', 969, 0.1417, 136),
(49, 'ru', 970, 0.1417, 137),
(49, 'ru', 971, 0.1417, 145),
(49, 'ru', 972, 0.1417, 146),
(49, 'ru', 973, 0.1417, 148),
(49, 'ru', 974, 0.1417, 149),
(49, 'ru', 975, 0.1417, 154),
(49, 'ru', 976, 0.1417, 157),
(49, 'ru', 977, 0.1417, 160),
(49, 'ru', 978, 0.1417, 167),
(49, 'ru', 979, 0.1417, 171),
(49, 'ru', 980, 0.1417, 172),
(49, 'ru', 981, 0.1417, 174),
(49, 'ru', 982, 0.1417, 180),
(49, 'ru', 983, 0.1417, 192),
(49, 'ru', 984, 0.1417, 193),
(49, 'ru', 985, 0.1417, 196),
(49, 'ru', 986, 0.2246, 203),
(49, 'ru', 987, 0.1417, 199),
(49, 'ru', 988, 0.1417, 207),
(49, 'ru', 989, 0.1417, 209),
(50, 'ru', 12, 0.3551, 57),
(50, 'ru', 42, 0.1529, 25),
(50, 'ru', 197, 0.1529, 138),
(50, 'ru', 208, 0.1529, 26),
(50, 'ru', 228, 0.2424, 76),
(50, 'ru', 235, 0.1529, 4),
(50, 'ru', 236, 0.1529, 66),
(50, 'ru', 247, 0.1529, 62),
(50, 'ru', 271, 0.1529, 124),
(50, 'ru', 288, 0.2424, 95),
(50, 'ru', 316, 0.1529, 87),
(50, 'ru', 359, 0.1529, 77),
(50, 'ru', 374, 0.1529, 9),
(50, 'ru', 377, 0.1529, 2),
(50, 'ru', 380, 0.2424, 74),
(50, 'ru', 382, 0.1529, 122),
(50, 'ru', 385, 0.1529, 58),
(50, 'ru', 388, 0.1529, 94),
(50, 'ru', 395, 0.1529, 101),
(50, 'ru', 405, 0.1529, 95),
(50, 'ru', 406, 0.1529, 42),
(50, 'ru', 410, 0.1529, 28),
(50, 'ru', 413, 0.1529, 20),
(50, 'ru', 417, 0.1529, 40),
(50, 'ru', 418, 0.1529, 21),
(50, 'ru', 419, 0.3058, 36.3333),
(50, 'ru', 440, 0.1529, 74),
(50, 'ru', 442, 0.1529, 91),
(50, 'ru', 445, 0.2424, 52),
(50, 'ru', 489, 0.1529, 97),
(50, 'ru', 563, 0.1529, 34),
(50, 'ru', 577, 0.2424, 4),
(50, 'ru', 589, 0.3551, 44.5),
(50, 'ru', 629, 0.2424, 75.5),
(50, 'ru', 678, 0.1529, 128),
(50, 'ru', 765, 0.1529, 36),
(50, 'ru', 967, 0.1529, 57),
(50, 'ru', 969, 0.1529, 76),
(50, 'ru', 971, 0.1529, 52),
(50, 'ru', 972, 0.1529, 96),
(50, 'ru', 990, 0.1529, 5),
(50, 'ru', 991, 0.1529, 6),
(50, 'ru', 992, 0.1529, 16),
(50, 'ru', 993, 0.1529, 18),
(50, 'ru', 994, 0.1529, 22),
(50, 'ru', 995, 0.1529, 23),
(50, 'ru', 996, 0.1529, 27),
(50, 'ru', 997, 0.1529, 29),
(50, 'ru', 998, 0.1529, 35),
(50, 'ru', 999, 0.1529, 38),
(50, 'ru', 1000, 0.1529, 41),
(50, 'ru', 1001, 0.1529, 49),
(50, 'ru', 1002, 0.1529, 50),
(50, 'ru', 1003, 0.1529, 51),
(50, 'ru', 1004, 0.1529, 55),
(50, 'ru', 1005, 0.2424, 70.5),
(50, 'ru', 1006, 0.1529, 60),
(50, 'ru', 1007, 0.1529, 61),
(50, 'ru', 1008, 0.1529, 63),
(50, 'ru', 1009, 0.1529, 65),
(50, 'ru', 1010, 0.1529, 75),
(50, 'ru', 1011, 0.1529, 84),
(50, 'ru', 1012, 0.1529, 88),
(50, 'ru', 1013, 0.1529, 90),
(50, 'ru', 1014, 0.1529, 92),
(50, 'ru', 1015, 0.1529, 98),
(50, 'ru', 1016, 0.2424, 112.5),
(50, 'ru', 1017, 0.1529, 109),
(50, 'ru', 1018, 0.1529, 116),
(50, 'ru', 1019, 0.1529, 121),
(50, 'ru', 1020, 0.2424, 121),
(50, 'ru', 1021, 0.1529, 126),
(50, 'ru', 1022, 0.1529, 139),
(50, 'ru', 1023, 0.1529, 140),
(50, 'ru', 1024, 0.1529, 141),
(50, 'ru', 1025, 0.1529, 142),
(51, 'ru', 8, 0.1738, 19),
(51, 'ru', 12, 0.1738, 29),
(51, 'ru', 198, 0.2754, 32),
(51, 'ru', 247, 0.2754, 26),
(51, 'ru', 255, 0.1738, 15),
(51, 'ru', 260, 0.1738, 47),
(51, 'ru', 273, 0.1738, 3),
(51, 'ru', 289, 0.1738, 42),
(51, 'ru', 367, 0.1738, 2),
(51, 'ru', 377, 0.1738, 16),
(51, 'ru', 423, 0.2754, 36),
(51, 'ru', 434, 0.2754, 49),
(51, 'ru', 435, 0.1738, 33),
(51, 'ru', 438, 0.1738, 14),
(51, 'ru', 544, 0.1738, 13),
(51, 'ru', 768, 0.1738, 24),
(51, 'ru', 780, 0.1738, 55),
(51, 'ru', 1026, 0.1738, 1),
(51, 'ru', 1027, 0.1738, 4),
(51, 'ru', 1028, 0.1738, 5),
(51, 'ru', 1029, 0.1738, 6),
(51, 'ru', 1030, 0.1738, 7),
(51, 'ru', 1031, 0.1738, 8),
(51, 'ru', 1032, 0.1738, 10),
(51, 'ru', 1033, 0.1738, 17),
(51, 'ru', 1034, 0.1738, 20),
(51, 'ru', 1035, 0.1738, 21),
(51, 'ru', 1036, 0.1738, 22),
(51, 'ru', 1037, 0.1738, 23),
(51, 'ru', 1038, 0.1738, 25),
(51, 'ru', 1039, 0.1738, 26),
(51, 'ru', 1040, 0.1738, 28),
(51, 'ru', 1041, 0.1738, 30),
(51, 'ru', 1042, 0.1738, 31),
(51, 'ru', 1043, 0.1738, 32),
(51, 'ru', 1044, 0.1738, 36),
(51, 'ru', 1045, 0.1738, 43),
(51, 'ru', 1046, 0.1738, 44),
(51, 'ru', 1047, 0.1738, 45),
(51, 'ru', 1048, 0.1738, 48),
(51, 'ru', 1049, 0.1738, 49),
(51, 'ru', 1050, 0.1738, 50),
(51, 'ru', 1051, 0.1738, 51),
(51, 'ru', 1052, 0.1738, 53),
(51, 'ru', 1053, 0.1738, 54),
(51, 'ru', 1054, 0.1738, 56),
(51, 'ru', 1055, 0.1738, 62),
(51, 'ru', 1056, 0.1738, 64),
(51, 'ru', 1057, 0.1738, 65),
(51, 'ru', 1058, 0.1738, 66),
(52, 'ru', 142, 0.1626, 24),
(52, 'ru', 144, 0.1626, 25),
(52, 'ru', 145, 0.2577, 25),
(52, 'ru', 255, 0.3252, 43.3333),
(52, 'ru', 261, 0.1626, 32),
(52, 'ru', 273, 0.1626, 3),
(52, 'ru', 284, 0.1626, 45),
(52, 'ru', 289, 0.1626, 62),
(52, 'ru', 323, 0.1626, 53),
(52, 'ru', 349, 0.1626, 28),
(52, 'ru', 438, 0.1626, 6),
(52, 'ru', 507, 0.1626, 41),
(52, 'ru', 509, 0.1626, 13),
(52, 'ru', 525, 0.1626, 7),
(52, 'ru', 534, 0.1626, 5),
(52, 'ru', 553, 0.2577, 46),
(52, 'ru', 557, 0.1626, 1),
(52, 'ru', 738, 0.1626, 44),
(52, 'ru', 754, 0.1626, 47),
(52, 'ru', 768, 0.1626, 40),
(52, 'ru', 780, 0.1626, 67),
(52, 'ru', 924, 0.1626, 26),
(52, 'ru', 968, 0.1626, 14),
(52, 'ru', 1028, 0.1626, 15),
(52, 'ru', 1029, 0.1626, 16),
(52, 'ru', 1035, 0.1626, 17),
(52, 'ru', 1036, 0.1626, 18),
(52, 'ru', 1037, 0.1626, 19),
(52, 'ru', 1045, 0.1626, 83),
(52, 'ru', 1047, 0.1626, 84),
(52, 'ru', 1048, 0.1626, 55),
(52, 'ru', 1049, 0.1626, 88),
(52, 'ru', 1050, 0.1626, 89),
(52, 'ru', 1051, 0.1626, 90),
(52, 'ru', 1053, 0.1626, 93),
(52, 'ru', 1054, 0.1626, 68),
(52, 'ru', 1055, 0.1626, 74),
(52, 'ru', 1057, 0.1626, 65),
(52, 'ru', 1058, 0.1626, 66),
(52, 'ru', 1059, 0.3252, 31),
(52, 'ru', 1060, 0.1626, 4),
(52, 'ru', 1061, 0.1626, 10),
(52, 'ru', 1062, 0.2577, 23.5),
(52, 'ru', 1063, 0.1626, 21),
(52, 'ru', 1064, 0.2577, 21),
(52, 'ru', 1065, 0.1626, 22),
(52, 'ru', 1066, 0.1626, 30),
(52, 'ru', 1067, 0.1626, 31),
(52, 'ru', 1068, 0.1626, 33),
(52, 'ru', 1069, 0.1626, 34),
(52, 'ru', 1070, 0.1626, 49),
(52, 'ru', 1071, 0.2577, 54),
(52, 'ru', 1072, 0.1626, 54),
(52, 'ru', 1073, 0.1626, 63),
(52, 'ru', 1074, 0.1626, 75),
(52, 'ru', 1075, 0.1626, 78),
(52, 'ru', 1076, 0.1626, 80),
(52, 'ru', 1077, 0.1626, 81),
(52, 'ru', 1078, 0.1626, 82),
(52, 'ru', 1079, 0.1626, 85),
(52, 'ru', 1080, 0.1626, 87),
(52, 'ru', 1081, 0.1626, 92),
(53, 'ru', 4, 0.1626, 5),
(53, 'ru', 27, 0.1626, 32),
(53, 'ru', 37, 0.1626, 29),
(53, 'ru', 48, 0.1626, 49),
(53, 'ru', 60, 0.1626, 25),
(53, 'ru', 212, 0.1626, 79),
(53, 'ru', 255, 0.3776, 47.25),
(53, 'ru', 261, 0.1626, 27),
(53, 'ru', 273, 0.1626, 6),
(53, 'ru', 289, 0.1626, 61),
(53, 'ru', 298, 0.1626, 52),
(53, 'ru', 390, 0.3252, 23.3333),
(53, 'ru', 438, 0.1626, 17),
(53, 'ru', 634, 0.1626, 56),
(53, 'ru', 637, 0.1626, 31),
(53, 'ru', 643, 0.1626, 60),
(53, 'ru', 662, 0.1626, 50),
(53, 'ru', 708, 0.1626, 55),
(53, 'ru', 761, 0.1626, 57),
(53, 'ru', 768, 0.1626, 38),
(53, 'ru', 780, 0.1626, 99),
(53, 'ru', 858, 0.1626, 87),
(53, 'ru', 972, 0.1626, 4),
(53, 'ru', 979, 0.1626, 2),
(53, 'ru', 1027, 0.1626, 14),
(53, 'ru', 1028, 0.1626, 15),
(53, 'ru', 1029, 0.1626, 16),
(53, 'ru', 1045, 0.1626, 85),
(53, 'ru', 1047, 0.2577, 92),
(53, 'ru', 1049, 0.1626, 95),
(53, 'ru', 1054, 0.1626, 100),
(53, 'ru', 1055, 0.1626, 106),
(53, 'ru', 1062, 0.1626, 21),
(53, 'ru', 1074, 0.1626, 62),
(53, 'ru', 1082, 0.2577, 10),
(53, 'ru', 1083, 0.1626, 7),
(53, 'ru', 1084, 0.1626, 13),
(53, 'ru', 1085, 0.1626, 20),
(53, 'ru', 1086, 0.1626, 22),
(53, 'ru', 1087, 0.1626, 24),
(53, 'ru', 1088, 0.1626, 26),
(53, 'ru', 1089, 0.1626, 28),
(53, 'ru', 1090, 0.1626, 30),
(53, 'ru', 1091, 0.1626, 41),
(53, 'ru', 1092, 0.1626, 42),
(53, 'ru', 1093, 0.1626, 45),
(53, 'ru', 1094, 0.1626, 46),
(53, 'ru', 1095, 0.1626, 47),
(53, 'ru', 1096, 0.2577, 47),
(53, 'ru', 1097, 0.1626, 51),
(53, 'ru', 1098, 0.1626, 53),
(53, 'ru', 1099, 0.2577, 53),
(53, 'ru', 1100, 0.1626, 54),
(53, 'ru', 1101, 0.1626, 59),
(53, 'ru', 1102, 0.1626, 65),
(53, 'ru', 1103, 0.1626, 67),
(53, 'ru', 1104, 0.1626, 68),
(53, 'ru', 1105, 0.1626, 76),
(53, 'ru', 1106, 0.1626, 77),
(53, 'ru', 1107, 0.1626, 78),
(53, 'ru', 1108, 0.1626, 88),
(53, 'ru', 1109, 0.1626, 96),
(54, 'ru', 9, 0.4665, 75.5),
(54, 'ru', 198, 0.3417, 68),
(54, 'ru', 231, 0.3417, 70),
(54, 'ru', 255, 0.3417, 66),
(54, 'ru', 390, 0.3417, 73),
(54, 'ru', 398, 0.3417, 61),
(54, 'ru', 416, 0.3417, 91),
(54, 'ru', 490, 0.3417, 92),
(54, 'ru', 555, 0.3417, 71),
(54, 'ru', 556, 0.1472, 155),
(54, 'ru', 557, 0.1472, 156),
(54, 'ru', 595, 0.3417, 82),
(54, 'ru', 751, 0.3417, 76),
(54, 'ru', 757, 0.3417, 62),
(54, 'ru', 899, 0.3417, 90),
(54, 'ru', 1110, 0.1472, 1),
(54, 'ru', 1111, 0.1472, 2),
(54, 'ru', 1112, 0.2333, 2),
(54, 'ru', 1113, 0.4665, 74.5),
(54, 'ru', 1114, 0.3417, 65),
(54, 'ru', 1115, 0.3417, 72),
(54, 'ru', 1116, 0.3417, 75),
(54, 'ru', 1117, 0.3417, 78),
(54, 'ru', 1118, 0.3417, 79),
(54, 'ru', 1119, 0.3417, 80),
(54, 'ru', 1120, 0.3417, 83),
(54, 'ru', 1121, 0.3417, 84),
(54, 'ru', 1122, 0.3417, 85),
(54, 'ru', 1123, 0.3417, 88),
(54, 'ru', 1124, 0.1472, 157),
(55, 'ru', 9, 0.4684, 75.5),
(55, 'ru', 198, 0.3431, 68),
(55, 'ru', 231, 0.3431, 70),
(55, 'ru', 255, 0.3431, 66),
(55, 'ru', 390, 0.3431, 73),
(55, 'ru', 398, 0.3431, 61),
(55, 'ru', 416, 0.3431, 91),
(55, 'ru', 490, 0.3431, 92),
(55, 'ru', 555, 0.3431, 71),
(55, 'ru', 595, 0.3431, 82),
(55, 'ru', 751, 0.3431, 76),
(55, 'ru', 757, 0.3431, 62),
(55, 'ru', 899, 0.3431, 90),
(55, 'ru', 1113, 0.4684, 74.5),
(55, 'ru', 1114, 0.3431, 65);
INSERT INTO `b_search_content_stem` (`SEARCH_CONTENT_ID`, `LANGUAGE_ID`, `STEM`, `TF`, `PS`) VALUES
(55, 'ru', 1115, 0.3431, 72),
(55, 'ru', 1116, 0.3431, 75),
(55, 'ru', 1117, 0.3431, 78),
(55, 'ru', 1118, 0.3431, 79),
(55, 'ru', 1119, 0.3431, 80),
(55, 'ru', 1120, 0.3431, 83),
(55, 'ru', 1121, 0.3431, 84),
(55, 'ru', 1122, 0.3431, 85),
(55, 'ru', 1123, 0.3431, 88),
(55, 'ru', 1125, 0.1478, 1),
(55, 'ru', 1126, 0.1478, 2),
(55, 'ru', 1127, 0.1478, 2),
(55, 'ru', 1128, 0.1478, 155),
(55, 'ru', 1129, 0.1478, 156),
(56, 'ru', 3, 0.3229, 110.25),
(56, 'ru', 228, 0.3229, 114.25),
(56, 'ru', 231, 0.3229, 124.25),
(56, 'ru', 388, 0.3229, 106.25),
(56, 'ru', 398, 0.3229, 134.25),
(56, 'ru', 451, 0.3229, 116.25),
(56, 'ru', 498, 0.3229, 131.25),
(56, 'ru', 499, 0.3229, 132.25),
(56, 'ru', 555, 0.3229, 125.25),
(56, 'ru', 592, 0.3229, 86.25),
(56, 'ru', 650, 0.3229, 105.25),
(56, 'ru', 659, 0.3229, 109.25),
(56, 'ru', 890, 0.3229, 113.25),
(56, 'ru', 895, 0.3229, 87.25),
(56, 'ru', 964, 0.3229, 100.25),
(56, 'ru', 1065, 0.3229, 119.25),
(56, 'ru', 1087, 0.3229, 91.25),
(56, 'ru', 1121, 0.4409, 121.25),
(56, 'ru', 1130, 0.1391, 1),
(56, 'ru', 1131, 0.1391, 2),
(56, 'ru', 1132, 0.2204, 2),
(56, 'ru', 1133, 0.3229, 88.25),
(56, 'ru', 1134, 0.3229, 90.25),
(56, 'ru', 1135, 0.3229, 92.25),
(56, 'ru', 1136, 0.5147, 109.583),
(56, 'ru', 1137, 0.3229, 102.25),
(56, 'ru', 1138, 0.3229, 107.25),
(56, 'ru', 1139, 0.3229, 112.25),
(56, 'ru', 1140, 0.3229, 115.25),
(56, 'ru', 1141, 0.3229, 117.25),
(56, 'ru', 1142, 0.4409, 121.25),
(56, 'ru', 1143, 0.3229, 121.25),
(56, 'ru', 1144, 0.3229, 135.25),
(56, 'ru', 1145, 0.3229, 136.25),
(56, 'ru', 1146, 0.1391, 230),
(56, 'ru', 1147, 0.1391, 236),
(57, 'ru', 1148, 0.2314, 1),
(57, 'ru', 1149, 0.2314, 2),
(57, 'ru', 1150, 0.2314, 3),
(57, 'ru', 1151, 0.2314, 4),
(57, 'ru', 1152, 0.2314, 5),
(57, 'ru', 1153, 0.2314, 6),
(58, 'ru', 1154, 0.2314, 1),
(58, 'ru', 1155, 0.3667, 3),
(58, 'ru', 1156, 0.2314, 3),
(58, 'ru', 1157, 0.2314, 5),
(59, 'ru', 1158, 0.2314, 1);

-- --------------------------------------------------------

--
-- Table structure for table `b_search_content_text`
--

CREATE TABLE `b_search_content_text` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SEARCH_CONTENT_MD5` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `SEARCHABLE_CONTENT` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_search_content_text`
--

INSERT INTO `b_search_content_text` (`SEARCH_CONTENT_ID`, `SEARCH_CONTENT_MD5`, `SEARCHABLE_CONTENT`) VALUES
(1, 'f58e028735b5d07233c4a161c9231405', 'ПОИСК\r\n\r\n'),
(2, 'be3fe2336ca014ea48484837a6379cf7', 'КАРТА САЙТА\r\n\r\n'),
(3, '43974ce3161b1536a23aab70dfdf083c', 'ПРОДУКЦИЯ\r\n\r\n'),
(4, '85c3cf0e7e15755e89b334085eb959c0', 'ОТЗЫВЫ\r\n\r\n'),
(5, '55171aa121806afa21b564e0af9ed46f', 'ИСТОРИЯ\r\n1992Г. 								\rМЕБЕЛЬНАЯ КОМПАНИЯ\rНАЧИНАЛАСЬ С ИЗГОТОВЛЕНИЯ МЕБЕЛИ ДЛЯ ШКОЛ И ОФИСОВ. ПЕРВОЕ 									ПРОИЗВОДСТВО МЕБЕЛИ РАСПОЛАГАЛОСЬ В АРЕНДУЕМОЙ МАСТЕРСКОЙ, ПЛОЩАДЬЮ 400 М2 С ОДНИМ 									ДЕРЕВООБРАБАТЫВАЮЩИМ СТАНКОМ. В КОМПАНИИ РАБОТАЛО ДВАДЦАТЬ ЧЕЛОВЕК. ВСЕ ЗАРАБОТАННЫЕ 									СРЕДСТВА ВКЛАДЫВАЛИСЬ В РАЗВИТИЕ, ЧТО ПОЗВОЛИЛО МОЛОДОЙ КОМПАНИИ РАСТИ БЫСТРЫМИ 									ТЕМПАМИ. 								\r1993Г. 								\rВВЕДЕН В ЭКСПЛУАТАЦИЮ НОВЫЙ ЦЕХ ПЛОЩАДЬЮ 700 М2, СТАВШИЙ ПЕРВОЙ СОБСТВЕННОСТЬЮ 									\rМЕБЕЛЬНОЙ КОМПАНИИ\r. МОДЕРНИЗАЦИЯ ПРОИЗВОДСТВЕННОЙ БАЗЫ ПРЕДПРИЯТИЯ СТАЛА ХОРОШЕЙ 									ТРАДИЦИЕЙ. КОМПАНИЯ ПОСТЕПЕННО ПЕРЕШЛА К БОЛЕЕ СОВЕРШЕННОМУ ОБОРУДОВАНИЮ, ЧТО ПОЗВОЛИЛО 									ПОВЫСИТЬ УРОВЕНЬ КАЧЕСТВА ВЫПУСКАЕМОЙ ПРОДУКЦИИ И ЗНАЧИТЕЛЬНО УВЕЛИЧИТЬ ОБЪЕМЫ ПРОИЗВОДСТВА. 								\r1998Г. 								\rВ ВОРОНЕЖЕ ОТКРЫТ ПЕРВЫЙ ФИРМЕННЫЙ МАГАЗИН-САЛОН \rМЕБЕЛЬНАЯ КОМПАНИЯ\r. ШАГ ЗА ШАГОМ 									ПРОДУКЦИЯ ПРЕДПРИЯТИЯ ЗАВОЕВЫВАЛА РЕГИОНЫ СИБИРИ И УРАЛА, МОСКВЫ И ПОДМОСКОВЬЯ, 									ЮГА И СЕВЕРО-ЗАПАДА РОССИИ. ПРОИЗВОДСТВЕННЫЕ ПЛОЩАДИ КОМПАНИИ УВЕЛИЧЕНЫ ДО 5000 									М2. 								\r1999Г. 								\rМЕБЕЛЬНАЯ КОМПАНИЯ\rСТАЛА ДИПЛОМАНТОМ ОДНОЙ ИЗ САМЫХ ПРЕСТИЖНЫХ МЕЖДУНАРОДНЫХ 									ВЫСТАВОК \rЕВРОЭКСПОМЕБЕЛЬ-99\r- ПЕРВОЕ ОФИЦИАЛЬНОЕ ПРИЗНАНИЕ МЕБЕЛЬНОЙ ПРОДУКЦИИ 									МЕБЕЛЬНОЙ КОМПАНИИ. В ЭТОМ ЖЕ ГОДУ КОМПАНИЯ ВЫХОДИТ НА МИРОВОЙ РЫНОК. БЫЛ ЗАКЛЮЧЕН 									РЯД КОНТРАКТОВ НА ПОСТАВКУ МЕБЕЛИ В СТРАНЫ СНГ И БЛИЖНЕГО ЗАРУБЕЖЬЯ. 								\r2000Г. 								\rКОЛЛЕКТИВ КОМПАНИИ НАСЧИТЫВАЕТ БОЛЕЕ 500 СОТРУДНИКОВ. ЗАКЛЮЧАЮТСЯ НОВЫЕ КОНТРАКТ 									НА ПОСТАВКУ МЕБЕЛИ В ЕВРОПЕЙСКИЕ СТРАНЫ. 								\r2002Г. 								\rМЕБЕЛЬНАЯ КОМПАНИЯ\rВОШЛА В ДЕСЯТКУ ЛУЧШИХ ПРОИЗВОДИТЕЛЕЙ МЕБЕЛИ ПО ДАННЫМ ВЕДУЩИХ 									МЕБЕЛЬНЫХ САЛОНОВ РОССИИ, А ТАКЖЕ В ЧИСЛО ЛИДЕРОВ ОРГАНИЗАЦИОННОГО РАЗВИТИЯ. 								\r2003Г. 								\rПРИСТУПИЛИ К СТРОИТЕЛЬСТВУ СКЛАДА МАТЕРИАЛОВ. В МОСКВЕ ОТКРЫТ ФИЛИАЛ КОМПАНИИ. \nПРОВЕДЕНА ПЕРВАЯ КОНФЕРЕНЦИЯ ПАРТНЕРОВ, РЕЗУЛЬТАТОМ КОТОРОЙ СТАЛО УКРЕПЛЕНИЕ ВЗАИМОВЫГОДНЫХ 									ОТНОШЕНИЙ И ЗАКЛЮЧЕНИЕ ДИЛЕРСКИХ ДОГОВОРОВ. 								\r2004Г. 								\rЗАВЕРШЕНО СТРОИТЕЛЬСТВО И ОСНАЩЕНИЕ НОВОГО ПРОИЗВОДСТВЕННОГО КОРПУСА И СКЛАДА МАТЕРИАЛОВ. \nРАСШИРЕНО ПРЕДСТАВИТЕЛЬСТВО КОМПАНИИ НА РОССИЙСКОМ РЫНКЕ И ЗА РУБЕЖОМ. \nОТКРЫТО 									РЕГИОНАЛЬНОЕ ПРЕДСТАВИТЕЛЬСТВО \rМЕБЕЛЬНОЙ КОМПАНИИ\rВ ЕКАТЕРИНБУРГЕ. 								\r2005Г. 								\rКОМПАНИЯ ПРИОБРЕТАЕТ НОВОЕ ПРОИЗВОДСТВЕННОЕ ОБОРУДОВАНИЕ КОНЦЕРНА - УГЛОВУЮ ЛИНИЮ 									РАСКРОЯ МАТЕРИАЛОВ И ЛИНИЮ ЗАГРУЗКИ ВЫГРУЗКИ. \nНАЧИНАЕТСЯ ВЫПУСК ПРОДУКЦИИ В 									НАТУРАЛЬНОМ ШПОНЕ. ФОРМИРУЕТСЯ ОТДЕЛЬНЫЙ СКЛАД МАТЕРИАЛОВ И КОМПЛЕКТУЮЩИХ. \nВ ЭТОМ ЖЕ ГОДУ ОТКРЫВАЕТСЯ ФАБРИКА МЯГКОЙ МЕБЕЛИ \rМЕБЕЛЬПЛЮС\r2006Г. 								\rОТКРЫТЫ РЕГИОНАЛЬНЫЕ ПРЕДСТАВИТЕЛЬСТВА \rМЕБЕЛЬНОЙ КОМПАНИИ\rВ САНКТ-ПЕТЕРБУРГЕ 									И НИЖНЕМ НОВГОРОДЕ. \nРАЗВИВАЕТСЯ СОБСТВЕННАЯ РОЗНИЧНАЯ СЕТЬ ФИРМЕННЫХ МАГАЗИНОВ-САЛОНОВ 									НА ТЕРРИТОРИИ РОССИИ. 								\r2007Г. 								\rЗАВЕРШЕНО СТРОИТЕЛЬСТВО ВТОРОЙ ФАБРИКИ. ОБЩАЯ ПЛОЩАДЬ ПРОИЗВОДСВЕННО-СКЛАДСКИХ КОРПУСОВ 									КОМПАНИИ СОСТАВЛЯЕТ УЖЕ БОЛЕЕ 30000 М2. \nПРОВЕДЕНА ВТОРАЯ КОНФЕРЕНЦИЯ ПАРТНЕРОВ 									КОМПАНИИ \r"ТЕХНОЛОГИЯ УСПЕШНОГО БИЗНЕСА"\r. 								\r2008Г. 								\rОТКРЫТО НОВОЕ ПРЕДПРИЯТИЕ ДЛЯ ПРОИЗВОДСТВА МЕБЕЛИ ПО ИНДИВИДУАЛЬНЫМ ПРОЕКТАМ \rКОМФОРТ\r. \nМЕБЕЛЬНАЯ КОМПАНИЯ\rПРОДОЛЖАЕТ ОБНОВЛЕНИЕ ОБОРУДОВАНИЯ. 								\r2008Г. 								\rНОВЕЙШИМ ОБОРУДОВАНИЕМ УКОМПЛЕКТОВАНА ВТОРАЯ ФАБРИКА. ЗАПУЩЕНА ВТОРАЯ ПРОИЗВОДСТВЕННАЯ 									ЛИНИЯ. \nПРОВЕДЕНА ТРЕТЬЯ КОНФЕРЕНЦИЯ \rПАРТНЕРСТВО - БИЗНЕС СЕГОДНЯ\rПРИНЯТО РЕШЕНИЕ О СТРОИТЕЛЬСТВЕ ТРЕТЬЕЙ ФАБРИКИ. ПЛОЩАДЬ ПРОИЗВОДСТВЕННО  СКЛАДСКИХ 									КОРПУСОВ СОСТАВИТ БОЛЕЕ 70000М2. \nПО ВСЕЙ СТРАНЕ И ЗАРУБЕЖОМ ОТКРЫТО 37 МЕБЕЛЬНЫХ 									САЛОНОВ. \nВ КОМПАНИИ РАБОТАЕТ БОЛЕЕ ПОЛУТОРА ТЫСЯЧ СОТРУДНИКОВ.\r\n'),
(6, '17e08217818f62561b1d2f0f3a016a1f', 'МИССИЯ И СТРАТЕГИЯ\r\nМЕБЕЛЬНАЯ КОМПАНИЯ\r- ДИНАМИЧНО РАЗВИВАЮЩЕЕСЯ ПРОИЗВОДСТВЕННОЕ 							ПРЕДПРИЯТИЕ, КОТОРОЕ ИМЕЕТ ПЕРЕД СОБОЙ \nЯСНО ВЫРАЖЕННЫЕ ЦЕЛИ И ИНСТРУМЕНТЫ ДЛЯ 							ИХ ДОСТИЖЕНИ.МЫ ПРЕДОСТАВЛЯЕМ КАЖДОМУ ЛУЧШУЮ ВОЗМОЖНОСТЬ ОБУСТРОИТЬ СВОЕ ЖИЗНЕННОЕ \nИ РАБОЧЕЕ ПРОСТРАНСТВО.МЫ РАБОТАЕМ НА ДОЛГОСРОЧНУЮ ПЕРСПЕКТИВУ И ПРЕДЛАГАЕМ ОПТИМАЛЬНЫЕ 							РЕШЕНИЯ. КОМПАНИЯ \rМЕБЕЛЬНАЯ КОМПАНИЯ\r- \nНАДЕЖНЫЙ, ТЕХНОЛОГИЧНЫЙ, ГИБКИЙ ПОСТАВЩИК 							С БОЛЬШИМИ МОЩНОСТЯМИ. 						\rЦЕЛИ И ЗАДАЧИ\rОПРАВДЫВАТЬ ОЖИДАНИЯ ЗАКАЗЧИКА: КЛИЕНТ ВСЕГДА ПРАВ. ТОЛЬКО ПОТРЕБИТЕЛЬ ФОРМИРУЕТ 									ЕДИНУЮ СИСТЕМУ ВЗГЛЯДОВ НА КАЧЕСТВО \nВЫПУСКАЕМОЙ ПРОДУКЦИИ И РАБОТ.\rДОБИТЬСЯ ОТ РАБОТНИКОВ КОМПАНИИ ПОНИМАНИЯ ИХ ЛИЧНОЙ ОТВЕТСТВЕННОСТИ ЗА КАЧЕСТВО 									РАБОТ.\rПУТЕМ ПОВЫШЕНИЯ КАЧЕСТВА ПРОДУКЦИИ И РАБОТ ПОСТОЯННО УВЕЛИЧИВАТЬ ОБЪЕМЫ ПРОИЗВОДСТВА 									С ЦЕЛЬЮ ПОСЛЕДУЮЩЕГО РЕИНВЕСТИРОВАНИЯ \nПРИБЫЛИ В РАЗВИТИЕ КОМПАНИИ.\rОБЕСПЕЧИВАТЬ СТРОГОЕ СООТВЕТСТВИЕ ПРОИЗВОДИМОЙ ПРОДУКЦИИ ТРЕБОВАНИЯМ ПОТРЕБИТЕЛЕЙ, 									НОРМАМ И ПРАВИЛАМ \nБЕЗОПАСНОСТИ, ТРЕБОВАНИЯМ ЗАЩИТЫ ОКРУЖАЮЩЕЙ СРЕДЫ.\rПОЛИТИКА КОМПАНИИ\rПОСТОЯННОЕ СОВЕРШЕНСТВОВАНИЕ СИСТЕМЫ КАЧЕСТВА. СВОЕВРЕМЕННОЕ И ЭФФЕКТИВНОЕ ПРИНЯТИЕ 									КОРРЕКТИРУЮЩИХ МЕР .\rЗАБОТА О РАБОТНИКАХ КОМПАНИИ. СОЗДАНИЕ УСЛОВИЙ ТРУДА И ОСНАЩЕНИЕ РАБОЧИХ МЕСТ, СООТВЕТСТВУЮЩИХ 									ВСЕМ САНИТАРНЫМ \nИ ГИГИЕНИЧЕСКИМ НОРМАМ.\rПОВЫШЕНИЕ БЛАГОСОСТОЯНИЯ СОТРУДНИКОВ. ОБЕСПЕЧЕНИЕ МОРАЛЬНОГО И МАТЕРИАЛЬНОГО УДОВЛЕТВОРЕНИЯ 									РАБОТНИКОВ КОМПАНИИ.\rСИСТЕМАТИЧЕСКОЕ ОБУЧЕНИЕ РАБОТНИКОВ ВСЕХ УРОВНЕЙ С ЦЕЛЬЮ ПОСТОЯННОГО ПОВЫШЕНИЯ ИХ 									ПРОФЕССИОНАЛЬНОГО МАСТЕРСТВА.\rВНЕДРЕНИЕ ВЫСОКОПРОИЗВОДИТЕЛЬНОГО ОБОРУДОВАНИЯ И НОВЕЙШИХ ТЕХНОЛОГИЙ ДЛЯ ПОВЫШЕНИЯ 									ПРОИЗВОДИТЕЛЬНОСТИ ТРУДА, \nОПТИМИЗАЦИИ ЗАТРАТ И, КАК РЕЗУЛЬТАТ, СНИЖЕНИЯ ЦЕН 									НА ВЫПУСКАЕМУЮ ПРОДУКЦИЮ.\rСОЗДАНИЕ НОВЫХ РАБОЧИХ МЕСТ. ПРИВЛЕЧЕНИЕ НА РАБОТУ СПЕЦИАЛИСТОВ ВЫСОКОЙ КВАЛИФИКАЦИИ.\rВЫХОД НА МЕЖДУНАРОДНЫЙ РЫНОК.\rМЫ РАЗВИВАЕМ ДОВЕРИТЕЛЬНЫЕ ВЗАИМОВЫГОДНЫЕ ОТНОШЕНИЯ СО СВОИМИ ПАРТНЕРАМИ В ДОЛГОСРОЧНЫХ 							ИНТЕРЕСАХ НАШЕГО БИЗНЕСА. \nМЕБЕЛЬНАЯ КОМПАНИЯ\rОТВЕТСТВЕННО ОТНОСИТСЯ 							К ВЫПОЛНЕНИЮ ВЗЯТЫХ НА СЕБЯ ОБЯЗАТЕЛЬСТВ И ЖДЕТ ТАКОГО ЖЕ \nПОДХОДА К ДЕЛУ ОТ 							СВОИХ ПАРТНЕРОВ ПО БИЗНЕСУ. ЭТА ТРЕБОВАТЕЛЬНОСТЬ  ЗАЛОГ НАШЕЙ ДОЛГОСРОЧНОЙ ПРИБЫЛЬНОСТИ. 						\rСО ДНЯ СВОЕГО ОСНОВАНИЯ \rМЕБЕЛЬНАЯ КОМПАНИЯ\rСОДЕЙСТВУЕТ РОСТУ БЛАГОСОСТОЯНИЯ 							РЕГИОНОВ РОССИИ. МЫ ПОНИМАЕМ ВАЖНОСТЬ \nСОЦИАЛЬНОЙ ОТВЕТСТВЕННОСТИ НАШЕЙ КОМПАНИИ 							И ОСТАНЕМСЯ ПРИМЕРОМ В ВОПРОСАХ СОЦИАЛЬНОЙ ЗАЩИЩЕННОСТИ НАШИХ СОТРУДНИКОВ.\r\n'),
(7, 'b535d9cb75c64e695d6ebad33b22d99c', 'О КОМПАНИИ\r\nНАША КОМПАНИЯ СУЩЕСТВУЕТ НА РОССИЙСКОМ РЫНКЕ С 1992 ГОДА. ЗА ЭТО ВРЕМЯ \rМЕБЕЛЬНАЯ КОМПАНИЯ\rПРОШЛА БОЛЬШОЙ ПУТЬ ОТ МАЛЕНЬКОЙ ТОРГОВОЙ ФИРМЫ ДО ОДНОГО ИЗ КРУПНЕЙШИХ ПРОИЗВОДИТЕЛЕЙ КОРПУСНОЙ МЕБЕЛИ В РОССИИ. 						 \rГЛАВНОЕ ПРАВИЛО - ИНДИВИДУАЛЬНЫЙ ПОДХОД К КАЖДОМУ КЛИЕНТУ\rНА СЕГОДНЯШНИЙ ДЕНЬ НАМИ РАЗРАБОТАНО БОЛЕЕ ПЯТИСОТ МОДЕЛЕЙ ДЛЯ ОФИСА И ДОМА. ВМЕСТЕ С ТЕМ МЫ СТРЕМИМСЯ ОБЕСПЕЧИТЬ НЕПОВТОРИМОСТЬ СВОЕЙ ПРОДУКЦИИ. МЫ ИЗГОТОВИМ МЕБЕЛЬ ДЛЯ КУХНИ, ДЕТСКОЙ, ГОСТИНОЙ, СПАЛЬНОЙ ИЛИ ВАННОЙ КОМНАТЫ, МЕБЕЛЬ ДЛЯ ОФИСА ОСОБОГО ДИЗАЙНА И НЕСТАНДАРТНОГО РАЗМЕРА. \rНАШИ ДИЗАЙНЕРЫ ПРОИЗВЕДУТ ЗАМЕРЫ ПОМЕЩЕНИЯ И ВМЕСТЕ С ВАМИ РАЗРАБОТАЮТ ДИЗАЙН-ПРОЕКТ МЕБЕЛИ ДЛЯ ВАШЕГО ИНТЕРЬЕРА, ПОДОБРАВ С ВЫСОКОЙ ТОЧНОСТЬЮ РАЗМЕРЫ, МОДЕЛИ, ЦВЕТА, ПОМОГУТ ОПТИМАЛЬНО РАСПОЛОЖИТЬ МЕБЕЛЬ. \rВАШ ПРОЕКТ БУДЕТ СОЗДАН С УЧЕТОМ ВСЕХ НЮАНСОВ И ПРОРИСОВКОЙ МЕЛЬЧАЙШИХ ДЕТАЛЕЙ. РЕЗУЛЬТАТЫ СОВМЕСТНОГО ТВОРЧЕСТВА ВЫ СМОЖЕТЕ ПОСМОТРЕТЬ В ОБЪЕМНОМ ПРЕДСТАВЛЕНИИ. ВАМ НАГЛЯДНО ПРОДЕМОНСТРИРУЮТ, КАК БУДУТ ВЫГЛЯДЕТЬ В ЖИЗНИ ВЫБРАННЫЕ ЭЛЕМЕНТЫ ИНТЕРЬЕРА ПРИ РАЗНОМ ОСВЕЩЕНИИ, В КОНКРЕТНОМ ПОМЕЩЕНИИ, СДЕЛАННЫЕ ИЗ ОПРЕДЕЛЕННЫХ МАТЕРИАЛОВ. В ВАШЕ РАСПОРЯЖЕНИЕ БУДЕТ ПРЕДОСТАВЛЕНО МНОГО РАЗЛИЧНЫХ ВАРИАНТОВ, ИЗ КОТОРЫХ ВЫ СМОЖЕТЕ ВЫБРАТЬ НАИБОЛЕЕ ПОДХОДЯЩИЙ ИМЕННО ВАМ. 						 					\rЗАКАЗ БУДЕТ ВЫПОЛНЕН И ДОСТАВЛЕН ТОЧНО В СРОК. ВСЕ РАБОТЫ ПО СБОРКЕ И УСТАНОВКЕ МЕБЕЛИ ОСУЩЕСТВЛЯЮТ СОТРУДНИКИ НАШЕЙ КОМПАНИИ. СТРОГИЙ КОНТРОЛЬ КАЧЕСТВА ОСУЩЕСТВЛЯЕТСЯ НА ВСЕХ ЭТАПАХ РАБОТ: ОТ МОМЕНТА ОФОРМЛЕНИЯ ЗАКАЗА ДО МОМЕНТА ПРИЕМА ВЫПОЛНЕННЫХ РАБОТ. \rПЕРЕДОВЫЕ ТЕХНОЛОГИИ И БЕСЦЕННЫЙ ОПЫТ\rИСПОЛЬЗОВАНИЕ ПЕРЕДОВЫХ КОМПЬЮТЕРНЫХ ТЕХНОЛОГИЙ, МНОГОЛЕТНИЙ ОПЫТ НАШИХ СПЕЦИАЛИСТОВ ПОЗВОЛЯЮТ ПРОИЗВЕСТИ ГРАМОТНЫЕ РАСЧЕТЫ И СНИЗИТЬ РАСХОД МАТЕРИАЛОВ И СЕБЕСТОИМОСТЬ ПРОДУКЦИИ, ИЗБЕЖАТЬ ОШИБОК ПРИ ПРОЕКТИРОВАНИИ И ОПТИМИЗИРОВАТЬ ДИЗАЙН КОМПЛЕКСНЫХ ИНТЕРЬЕРОВ. ГАРАНТИЯ НА НАШУ ПРОДУКЦИЮ СОСТАВЛЯЕТ 18 МЕСЯЦЕВ, А НА ОТДЕЛЬНУЮ ПРОДУКЦИЮ 36 МЕСЯЦЕВ. \rМЫ ГОРДИМСЯ НАШИМИ СОТРУДНИКАМИ ПРОШЕДШИМИ ПРОФЕССИОНАЛЬНОЕ ОБУЧЕНИЕ В ЛУЧШИХ УЧЕБНЫХ ЗАВЕДЕНИЯХ РОССИИ И ЗАРУБЕЖЬЯ. У НАС ТРУДЯТСЯ ВЫСОКОКЛАССНЫЕ СПЕЦИАЛИСТЫ РАЗНЫХ ВОЗРАСТОВ. МЫ ЦЕНИМ ЭНТУЗИАЗМ МОЛОДЕЖИ И БЕСЦЕННЫЙ ОПЫТ СТАРШЕГО ПОКОЛЕНИЯ. ВСЕ МЫ РАЗНЫЕ, НО НАС ОБЪЕДИНЯЕТ ПРЕДАННОСТЬ СВОЕМУ ДЕЛУ И ВЕРА В ИДЕИ НАШЕЙ КОМПАНИИ. \rВЫСОЧАЙШИЕ СТАНДАРТЫ КАЧЕСТВА - ЗАЛОГ НАШЕГО УСПЕХА\rМЕБЕЛЬНАЯ КОМПАНИЯ\rОСУЩЕСТВЛЯЕТ ПРОИЗВОДСТВО МЕБЕЛИ НА ВЫСОКОКЛАССНОМ ОБОРУДОВАНИИ С ПРИМЕНЕНИЕМ МИНИМАЛЬНОЙ ДОЛИ РУЧНОГО ТРУДА, ЧТО ПОЗВОЛЯЕТ ОБЕСПЕЧИТЬ ВЫСОКОЕ КАЧЕСТВО НАШЕЙ ПРОДУКЦИИ. НАЛАЖЕН ПРОИЗВОДСТВЕННЫЙ ПРОЦЕСС КАК МАССОВОГО И ИНДИВИДУАЛЬНОГО ХАРАКТЕРА, ЧТО С ОДНОЙ СТОРОНЫ ПОЗВОЛЯЕТ ОБЕСПЕЧИТЬ ПОСТОЯННУЮ НОМЕНКЛАТУРУ ИЗДЕЛИЙ И ИНДИВИДУАЛЬНЫЙ ПОДХОД  С ДРУГОЙ. \rЕЖЕГОДНО НАША ПРОДУКЦИЯ ПРОХОДИТ СЕРТИФИКАЦИОННЫЕ ИСПЫТАНИЯ В СПЕЦИАЛИЗИРОВАННЫХ ЛАБОРАТОРИЯХ РОССИИ И ИМЕЕТ СЕРТИФИКАТЫ СООТВЕТСТВИЯ ПРОДУКЦИИ НОРМАМ БЕЗОПАСНОСТИ И КАЧЕСТВА. КРОМЕ ТОГО, \rМЕБЕЛЬНАЯ КОМПАНИЯ\rОДНОЙ ИЗ ПЕРВЫХ СРЕДИ МЕБЕЛЬНЫХ ПРОИЗВОДИТЕЛЕЙ РОССИИ В 2003 ГОДУ ПРОШЛА АУДИТ НА СООТВЕТСТВИЕ ТРЕБОВАНИЯМ СИСТЕМЫ МЕНЕДЖМЕНТА КАЧЕСТВА ИСО 9000 И ПОЛУЧИЛА СЕРТИФИКАТ СООТВЕТСТВИЯ СИСТЕМЫ КАЧЕСТВА НА ПРЕДПРИЯТИИ НОРМАМ МЕЖДУНАРОДНОГО СТАНДАРТА.\r\n'),
(8, '4ca200ee516256f67fa334608bb550d9', 'TEST\r\n\r\n'),
(9, 'c501a4fb29fd5bc92bc4babebf160ed9', 'РУКОВОДСТВО\r\nУСПЕШНОЕ РАЗВИТИЕ БИЗНЕСА  ВО МНОГОМ РЕЗУЛЬТАТ КВАЛИФИЦИРОВАННОЙ РАБОТЫ РУКОВОДСТВА. 							\rМЕБЕЛЬНАЯ КОМПАНИЯ\rНА МЕБЕЛЬНОМ РЫНКЕ УЖЕ 18 ЛЕТ. ЗА ЭТО ВРЕМЯ КОМПАНИЯ 							НЕ ТОЛЬКО СОХРАНИЛА, НО И УПРОЧИЛА ЛИДИРУЮЩИЕ ПОЗИЦИИ СРЕДИ ВЕДУЩИХ ИГРОКОВ МЕБЕЛЬНОГО 							РЫНКА. 						\rМЕБЕЛЬНАЯ КОМПАНИЯ\rИЗ ГОДА В ГОД РАСШИРЯЕТ АССОРТИМЕНТ ВЫПУСКАЕМОЙ ПРОДУКЦИИ, 							НАРАЩИВАЕТ ТЕМПЫ И ОБЪЕМЫ ПРОИЗВОДСТВА, УВЕЛИЧИВАЕТ ПРОИЗВОДСТВЕННЫЕ И СКЛАДСКИЕ 							ПЛОЩАДИ, РАЗВИВАЕТ ОТНОШЕНИЯ С ПАРТНЕРАМИ СО ВСЕХ РЕГИОНОВ СТРАНЫ И НАЛАЖИВАЕТ СВЯЗИ 							С ЗАРУБЕЖНЫМИ ПАРТНЕРАМИ. В БОЛЬШОЙ СТЕПЕНИ ЭТО ЗАСЛУГА ХОРОШО ПОДГОТОВЛЕННОГО РУКОВОДЯЩЕГО 							СОСТАВА И ЕГО ГРАМОТНОЙ ПОЛИТИКИ. 						\rСОБСТВЕННИК КОМПАНИИ МЕБЕЛЬНАЯ КОМПАНИЯ\rКОЛЕСНИКОВ ВИКТОР ФЕДОРОВИЧ 								\rРОДИЛСЯ 3 СЕНТЯБРЯ 1964 ГОДА.\nОБРАЗОВАНИЕ: ЗАКОНЧИЛ АВИАЦИОННЫЙ ФАКУЛЬТЕТ ВОРОНЕЖСКОГО 									ГОСУДАРСТВЕННОГО ПОЛИТЕХНИЧЕСКОГО ИНСТИТУТА. В 1994 ГОДУ ПРОШЕЛ ОБУЧЕНИЕ ПО ПРОГРАММЕ 									ПОДГОТОВКА МАЛОГО И СРЕДНЕГО БИЗНЕСА В США.\nВ НАСТОЯЩЕЕ ВРЕМЯ ВИКТОР ФЕДОРОВИЧ 									ВОЗГЛАВЛЯЕТ УПРАВЛЯЮЩУЮ КОМПАНИЮ, КОТОРАЯ КООРДИНИРУЕТ ДЕЯТЕЛЬНОСТЬ ПРЕДПРИЯТИЙ, 									ВХОДЯЩИХ В ГРУППУ КОМПАНИЙ \rМЕБЕЛЬНАЯ КОМПАНИЯ\r. 								\rГЕНЕРАЛЬНЫЙ ДИРЕКТОР МЕБЕЛЬНОЙ КОМПАНИИ\rРАТЧЕНКО АЛЕКСАНДР ПЕТРОВИЧ 								\rРОДИЛСЯ 5 ИЮНЯ 1962 ГОДА.\nОБРАЗОВАНИЕ: ВОРОНЕЖСКИЙ ПОЛИТЕХНИЧЕСКИЙ ИНСТИТУТ 									ПО СПЕЦИАЛЬНОСТИ ИНЖЕНЕР-ТЕХНОЛОГ; ПРОГРАММА ЭФФЕКТИВНОЕ РАЗВИТИЕ ПРОИЗВОДСТВА 									(США).\nВ \rМЕБЕЛЬНОЙ КОМПАНИИ\rСЕРГЕЙ ФОМИЧ С 1994 ГОДА. ЗА ЭТО ВРЕМЯ ПРОШЕЛ 									ПУТЬ ОТ НАЧАЛЬНИКА ЦЕХА ДО ГЕНЕРАЛЬНОГО ДИРЕКТОРА ПРЕДПРИЯТИЯ. 								\rЗАМЕСТИТЕЛЬ ГЕНЕРАЛЬНОГО ДИРЕКТОРА УПРАВЛЯЮЩЕЙ КОМПАНИИ\rРОГОВОЙ АНДРЕЙ ВЛАДИМИРОВИЧ 								\rОБРАЗОВАНИЕ: ФАКУЛЬТЕТ РАДИОТЕХНИКИ ВОРОНЕЖСКОГО ГОСУДАРСТВЕННОГО ТЕХНИЧЕСКОГО УНИВЕРСИТЕТА.\nВ КОМПАНИИ С 1 ИЮНЯ 2000 ГОДА.\r\n'),
(10, 'd6ae18283686e0f65091531174c8b418', 'ВАКАНСИИ\r\n\r\n'),
(11, '3140fa939e82d14de3829b731863cd80', 'УСЛУГИ\r\n\r\n'),
(12, '01b241f580eb7d284dd883218ecccdaf', 'МЕБЕЛЬНАЯ КОМПАНИЯ\r\n\r\n'),
(13, '4ca200ee516256f67fa334608bb550d9', 'TEST\r\n\r\n'),
(14, '0204ba1b914c4e49bb2549d6f83915c8', 'АРХИВ\r\nTEXT HERE....\r\n'),
(15, 'bc432db4993a16569c992496af655d10', 'АНОНСЫ\r\nTEXT HERE....\r\n'),
(16, 'b66de5e1b964c2265988a4a021b6ef95', 'УСЛОВИЯ СОТРУДНИЧЕСТВА\r\nTEXT HERE....\r\n'),
(17, 'fd87c2afd5f3de8b42cd7d5ed211d189', 'КАК СТАТЬ ПАРТНЕРОМ\r\nTEXT HERE....\r\n'),
(18, '626a5d1bd18fcc622fbe4e4e3619a88a', 'НОВОСТИ\r\n\r\n'),
(19, 'd63c4b77cf485102f232c0d0d27f8bc3', 'КОНТАКТЫ\r\nОБРАТИТЕСЬ К НАШИМ СПЕЦИАЛИСТАМ И ПОЛУЧИТЕ ПРОФЕССИОНАЛЬНУЮ КОНСУЛЬТАЦИЮ ПО ВОПРОСАМ СОЗДАНИЯ И ПОКУПКИ МЕБЕЛИ (ОТ ДИЗАЙНА, РАЗРАБОТКИ ТЕХНИЧЕСКОГО ЗАДАНИЯ ДО ДОСТАВКИ МЕБЕЛИ К ВАМ ДОМОЙ).\rВЫ МОЖЕТЕ ОБРАТИТЬСЯ К НАМ ПО ТЕЛЕФОНУ, ПО ЭЛЕКТРОННОЙ ПОЧТЕ ИЛИ ДОГОВОРИТЬСЯ О ВСТРЕЧЕ В НАШЕМ ОФИСЕ. БУДЕМ РАДЫ ПОМОЧЬ ВАМ И ОТВЕТИТЬ НА ВСЕ ВАШИ ВОПРОСЫ. \rТЕЛЕФОНЫ\rТЕЛЕФОН/ФАКС:\n(495) 212-85-06\rТЕЛЕФОНЫ:\n(495) 212-85-07\r(495) 212-85-08\rEMAIL\rINFO@EXAMPLE.RU\r ОБЩИЕ ВОПРОСЫ\rSALES@EXAMPLE.RU\r ПРИОБРЕТЕНИЕ ПРОДУКЦИИ\rMARKETING@EXAMPLE.RU\r МАРКЕТИНГ/МЕРОПРИЯТИЯ/PR\rОФИС В МОСКВЕ\r\n'),
(20, '7c285f6a61d238a340b43f0ef846a536', 'ВХОД НА САЙТ\r\nВЫ ЗАРЕГИСТРИРОВАНЫ И УСПЕШНО АВТОРИЗОВАЛИСЬ.\rВЕРНУТЬСЯ НА ГЛАВНУЮ СТРАНИЦУ\r\n'),
(21, 'f86144adfc89dc75855e25d200a5e333', 'ГЕРЦОГ\r\nИЗЯЩНЫЙ КАРКАС С ЭЛЕМЕНТАМИ РОСПИСИ, РОСКОШНЫЕ ТКАНИ ДЛЯ ОБИВКИ, ЯРКИЕ ЦВЕТА И БОГАТЫЙ ДЕКОР.\r\r\n \rИЗЯЩНЫЙ КАРКАС С ЭЛЕМЕНТАМИ РОСПИСИ, РОСКОШНЫЕ ТКАНИ ДЛЯ ОБИВКИ, ЯРКИЕ ЦВЕТА И БОГАТЫЙ ДЕКОР.\r\n'),
(22, '3a7ce138fe31e4cc12b2809a04e0db25', 'МОНАЛИЗА\r\nБОГАТСТВО И ИЗЫСК ВЫРАЖЕН В ДАННОЙ МОДЕЛИ. КАРКАС ДОПОЛНИТЕЛЬНО РАСПИСЫВАЕТСЯ ЗОЛОТОМ.\rПО ЖЕЛАНИЮ КЛИЕНТА ВОЗМОЖНА ПРОСТЕЖКА НА СПИНКЕ И ПОДЛОКОТНИКАХ.\r\r\n \rБОГАТСТВО И ИЗЫСК ВЫРАЖЕН В ДАННОЙ МОДЕЛИ. КАРКАС ДОПОЛНИТЕЛЬНО РАСПИСЫВАЕТСЯ ЗОЛОТОМ.\rПО ЖЕЛАНИЮ КЛИЕНТА ВОЗМОЖНА ПРОСТЕЖКА НА СПИНКЕ И ПОДЛОКОТНИКАХ.\r\n'),
(23, 'df6d1da3eabe6c40954a796579d554cb', 'МИНИСТР\r\nКРЕСЛО РУКОВОДИТЕЛЯ МИНИСТР, НЕСМОТРЯ НА НИЗКУЮ СТОИМОСТЬ, ВПЕЧАТЛЯЮЩЕ ВЫГЛЯДИТ. \rС ЕГО ПОМОЩЬЮ МОЖНО СОЗДАТЬ ОФИСНЫЙ ИНТЕРЬЕР ВЫСОКОГО УРОВНЯ. К ТОМУ ЖЕ В НЕМ МОЖНО РАБОТАТЬ С КОМФОРТОМ, НЕ ЧУВСТВУЯ УСТАЛОСТИ.\r\r\n \rКРЕСЛО РУКОВОДИТЕЛЯ МИНИСТР, НЕСМОТРЯ НА НИЗКУЮ СТОИМОСТЬ, ВПЕЧАТЛЯЮЩЕ ВЫГЛЯДИТ. \rС ЕГО ПОМОЩЬЮ МОЖНО СОЗДАТЬ ОФИСНЫЙ ИНТЕРЬЕР ВЫСОКОГО УРОВНЯ. К ТОМУ ЖЕ В НЕМ МОЖНО РАБОТАТЬ С КОМФОРТОМ, НЕ ЧУВСТВУЯ УСТАЛОСТИ.\r\n'),
(24, 'bc3cb6280475204c00312b331b7c2fa9', 'ХРОМ\r\nДИНАМИЧНАЯ МОДЕЛЬ ОФИСНОГО КРЕСЛА ПРИМЕЧАТЕЛЬНА ОРИГИНАЛЬНЫМ ВНЕШНИМ ВИДОМ, КОТОРЫЙ ДОСТИГНУТ ЗА \rСЧЕТ ХРОМИРОВАННОЙ КРЕСТОВИНЫ,НЕОБЫЧНЫХ ПОДЛОКОТНИКОВ И ПОТРЯСАЮЩЕЙ ЭРГОНОМИКИ. \rТВЕРДАЯ СПИНКА ЖЕСТКО ПОДДЕРЖИВАЕТ ПОЗВОНОЧНИК.\r\r\n \rДИНАМИЧНАЯ МОДЕЛЬ ОФИСНОГО КРЕСЛА ПРИМЕЧАТЕЛЬНА ОРИГИНАЛЬНЫМ ВНЕШНИМ ВИДОМ, КОТОРЫЙ ДОСТИГНУТ ЗА \rСЧЕТ ХРОМИРОВАННОЙ КРЕСТОВИНЫ,НЕОБЫЧНЫХ ПОДЛОКОТНИКОВ И ПОТРЯСАЮЩЕЙ ЭРГОНОМИКИ. \rТВЕРДАЯ СПИНКА ЖЕСТКО ПОДДЕРЖИВАЕТ ПОЗВОНОЧНИК.\r\n'),
(25, '5c32b6f62c6126843cbd44b1a593d952', 'ЛИВЕРПУЛЬ\r\nДЕРЕВЯННЫЕ СТУЛЬЯ ЛИВЕРПУЛЬ, ВЫПОЛНЕННЫЕ В КЛАССИЧЕСКОМ АНГЛИЙСКОМ СТИЛЕ, \rСОЗДАЮТ ОСОБУЮ АТМОСФЕРУ В КУХНЕ.\r\r\n \rДЕРЕВЯННЫЕ СТУЛЬЯ ЛИВЕРПУЛЬ, ВЫПОЛНЕННЫЕ В КЛАССИЧЕСКОМ АНГЛИЙСКОМ СТИЛЕ, \rСОЗДАЮТ ОСОБУЮ АТМОСФЕРУ В КУХНЕ.\r\n'),
(26, '7955bfe502463895d32a336f267421a8', 'ИЗАБЕЛЛА\r\nИЗЯЩНЫЙ КАРКАС С ЭЛЕМЕНТАМИ РОСПИСИ ЗОЛОТОМ. ОБИВКА МОЖЕТ БЫТЬ ПРЕДСТАВЛЕНА В ТКАНИ ИЛИ КОЖЕ.\r\r\n \rИЗЯЩНЫЙ КАРКАС С ЭЛЕМЕНТАМИ РОСПИСИ ЗОЛОТОМ. ОБИВКА МОЖЕТ БЫТЬ ПРЕДСТАВЛЕНА В ТКАНИ ИЛИ КОЖЕ.\r\n'),
(27, '00e3040c167611cbe598003e6d5427ae', 'АЛАДДИН\r\nКОМФОРТНАЯ, МАССИВНАЯ МОДЕЛЬ. ОБИВКА - ЭЛИТНЫЕ ТКАНИ, РУЧНАЯ СТРОЧКА, \rПРИДАЮТ ИЗДЕЛИЮ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ. \rПО ЖЕЛАНИЮ КЛИЕНТА МОЖНО УСТАНОВИТЬ МЕХАНИЗМ ТРАНСФОРМАЦИИ ДЛЯ ЕЖЕДНЕВНОГО ИСПОЛЬЗОВАНИЯ ИЛИ «ГОСТЕВУЮ РАСКЛАДУШКУ»\r\r\n \rКОМФОРТНАЯ, МАССИВНАЯ МОДЕЛЬ. ОБИВКА - ЭЛИТНЫЕ ТКАНИ, РУЧНАЯ СТРОЧКА, \rПРИДАЮТ ИЗДЕЛИЮ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ. \rПО ЖЕЛАНИЮ КЛИЕНТА МОЖНО УСТАНОВИТЬ МЕХАНИЗМ ТРАНСФОРМАЦИИ ДЛЯ ЕЖЕДНЕВНОГО ИСПОЛЬЗОВАНИЯ ИЛИ «ГОСТЕВУЮ РАСКЛАДУШКУ»\r\n'),
(28, 'f5e7877d0bc889cce24427c1d1e8d96f', 'ДЖОКОНДА\r\nИЗЯЩНЫЙ КАРКАС, ЭЛИТНЫЕ ТКАНИ ДЛЯ ОБИВКИ, РУЧНАЯ СТРОЧКА, ПРИДАЮТ ИЗДЕЛИЮ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ. \rОБИВКА ТАКЖЕ МОЖЕТ БЫТЬ В КОЖЕ, ПО ЖЕЛАНИЮ КЛИЕНТА ВОЗМОЖНА ПРОСТЕЖКА НА ПОДЛОКОТНИКАХ И СПИНКЕ.\r\r\n \rИЗЯЩНЫЙ КАРКАС, ЭЛИТНЫЕ ТКАНИ ДЛЯ ОБИВКИ, РУЧНАЯ СТРОЧКА, ПРИДАЮТ ИЗДЕЛИЮ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ. \rОБИВКА ТАКЖЕ МОЖЕТ БЫТЬ В КОЖЕ, ПО ЖЕЛАНИЮ КЛИЕНТА ВОЗМОЖНА ПРОСТЕЖКА НА ПОДЛОКОТНИКАХ И СПИНКЕ.\r\n'),
(29, '13ffbc270cbe931d486a5511fd6da896', 'ФЛОРА\r\nКЛАССИЧЕСКАЯ МОДЕЛЬ СОЗДАНА ДЛЯ УКРАШЕНИЯ РОСКОШНЫХ ИНТЕРЬЕРОВ. \rЭЛЕГАНТНОСТЬ И КОЛОРИТНОСТЬ МОДЕЛИ ПРИДАЮТ НАКЛАДКИ ИЗ НАТУРАЛЬНОГО ДЕРЕВА.\r\r\n \rКЛАССИЧЕСКАЯ МОДЕЛЬ СОЗДАНА ДЛЯ УКРАШЕНИЯ РОСКОШНЫХ ИНТЕРЬЕРОВ. \rЭЛЕГАНТНОСТЬ И КОЛОРИТНОСТЬ МОДЕЛИ ПРИДАЮТ НАКЛАДКИ ИЗ НАТУРАЛЬНОГО ДЕРЕВА.\r\n'),
(30, '81fb3b3fcb9358b5de6446706e8e132c', 'ПРЕСТИЖ\r\nТАХТА В КЛАССИЧЕСКОМ ИСПОЛНЕНИИ. ПОДЛОКОТНИК НАХОДИТСЯ СЛЕВА – ЭТО СТАНДАРТ. ОБИВКА МОЖЕТ БЫТЬ КАК В ТКАНИ, ТАК И В КОЖЕ.\r\r\n \rТАХТА В КЛАССИЧЕСКОМ ИСПОЛНЕНИИ. ПОДЛОКОТНИК НАХОДИТСЯ СЛЕВА – ЭТО СТАНДАРТ. ОБИВКА МОЖЕТ БЫТЬ КАК В ТКАНИ, ТАК И В КОЖЕ.\r\n'),
(31, 'fee2bd8c63d03b8452efa69f751e6fb2', 'ЛАУРА\r\nДВУХМЕСТНАЯ СОФА НА ОСНОВЕ КОНУСНЫХ ПРУЖИН ИЛИ НА ОСНОВЕ КОМБИНАЦИИ ПЛОТНЫХ ПОРОЛОНОВ, ПО ВАШЕМУ ЖЕЛАНИЮ. \rЭЛИТНЫЕ ТКАНИ ДЛЯ ОБИВКИ ПРИДАЮТ МОДЕЛИ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ.\r\r\n \rДВУХМЕСТНАЯ СОФА НА ОСНОВЕ КОНУСНЫХ ПРУЖИН ИЛИ НА ОСНОВЕ КОМБИНАЦИИ ПЛОТНЫХ ПОРОЛОНОВ, ПО ВАШЕМУ ЖЕЛАНИЮ. \rЭЛИТНЫЕ ТКАНИ ДЛЯ ОБИВКИ ПРИДАЮТ МОДЕЛИ НЕОБЫКНОВЕННЫЙ ШАРМ И ЭЛЕГАНТНУЮ РОСКОШЬ.\r\n'),
(32, 'e980bf84fb99998e698762a99222ea9a', 'МОДЕРН\r\nОСНОВНЫМИ ХАРАКТЕРИСТИКАМИ ДАННОЙ СЕРИИ ЯВЛЯЕТСЯ НОВИЗНА ДИЗАЙНЕРСКОЙ МЫСЛИ, \rКОТОРАЯ ВОПЛОЩЕНА ВО ВНЕШНЕМ ОБЛИКЕ ЭТОЙ МЕБЕЛИ, И ОРИГИНАЛЬНОСТЬ ИСПОЛНЕНИЯ КЛАССИЧЕСКОЙ КОМПОНОВКИ, \rКОТОРАЯ СОЧЕТАЕТ В СЕБЕ ОПТИМАЛЬНЫЙ НАБОР ВСЕХ НЕОБХОДИМЫХ ЭЛЕМЕНТОВ И СВЕЖИЕ РЕШЕНИЯ В ИХ ОРГАНИЗАЦИИ. \rЧТО В СОЧЕТАНИИ С УДАЧНЫМИ ЦВЕТОВЫМИ РЕШЕНИЯМИ СОЗДАСТ В ВАШЕМ ОФИСЕ АТМОСФЕРУ НЕПОВТОРИМОЙ ИНДИВИДУАЛЬНОСТИ. \rДАННАЯ СЕРИЯ – НАИЛУЧШЕЕ РЕШЕНИЕ ДЛЯ БИЗНЕСМЕНОВ, КОТОРЫЕ ПРИВЫКЛИ БЫТЬ НА ШАГ ВПЕРЕДИ НЕ ТОЛЬКО СВОИХ КОНКУРЕНТОВ, \rНО И САМОГО ВРЕМЕНИ.\r\r\n \rОСНОВНЫМИ ХАРАКТЕРИСТИКАМИ ДАННОЙ СЕРИИ ЯВЛЯЕТСЯ НОВИЗНА ДИЗАЙНЕРСКОЙ МЫСЛИ, \rКОТОРАЯ ВОПЛОЩЕНА ВО ВНЕШНЕМ ОБЛИКЕ ЭТОЙ МЕБЕЛИ, И ОРИГИНАЛЬНОСТЬ ИСПОЛНЕНИЯ КЛАССИЧЕСКОЙ КОМПОНОВКИ, \rКОТОРАЯ СОЧЕТАЕТ В СЕБЕ ОПТИМАЛЬНЫЙ НАБОР ВСЕХ НЕОБХОДИМЫХ ЭЛЕМЕНТОВ И СВЕЖИЕ РЕШЕНИЯ В ИХ ОРГАНИЗАЦИИ. \rЧТО В СОЧЕТАНИИ С УДАЧНЫМИ ЦВЕТОВЫМИ РЕШЕНИЯМИ СОЗДАСТ В ВАШЕМ ОФИСЕ АТМОСФЕРУ НЕПОВТОРИМОЙ ИНДИВИДУАЛЬНОСТИ. \rДАННАЯ СЕРИЯ – НАИЛУЧШЕЕ РЕШЕНИЕ ДЛЯ БИЗНЕСМЕНОВ, КОТОРЫЕ ПРИВЫКЛИ БЫТЬ НА ШАГ ВПЕРЕДИ НЕ ТОЛЬКО СВОИХ КОНКУРЕНТОВ, \rНО И САМОГО ВРЕМЕНИ.\r\n'),
(33, '286e9f6fd660a7a29d1c58fd03b7cbfa', 'ОПТИМА\r\nУДАЧНЫЙ ВЫБОР МЕБЕЛИ ДЛЯ ПЕРСОНАЛА ВО МНОГОМ ОПРЕДЕЛЯЕТ УСПЕШНОСТЬ ДЕЯТЕЛЬНОСТИ ВСЕЙ КОМПАНИИ. \rПРАВИЛЬНО ОРГАНИЗОВАТЬ РАБОЧЕЕ ПРОСТРАНСТВО - ЗНАЧИТ ПОМОЧЬ КОЛЛЕГАМ ВЫПОЛНЯТЬ СВОИ ФУНКЦИИ БЫСТРЕЕ И ЭФФЕКТИВНЕЕ.\rСЕРИЯ \r«ОПТИМА»\rПОЗВОЛИТ НАЙТИ МАССУ РЕШЕНИЙ ДЛЯ ОБУСТРОЙСТВА РАБОЧЕЙ ЗОНЫ, ПРИСПОСОБИТЬ ИНТЕРЬЕР К ДОЛЖНОСТНЫМ \rОБЯЗАННОСТЯМ ВСЕХ КАТЕГОРИЙ СОТРУДНИКОВ. ЭРГОНОМИЧНЫЕ УГЛОВЫЕ СТОЛЫ, ПЕРЕГОРОДКИ, ШКАФЫ И ТУМБЫ ПОМОГУТ РАЦИОНАЛЬНО ИСПОЛЬЗОВАТЬ \rПРОСТРАНСТВО ПОД УНИКАЛЬНОЕ РАБОЧЕЕ МЕСТО, ПРИСПОСОБЛЕННОЕ К ПОТРЕБНОСТЯМ КАЖДОГО РАБОТНИКА И ВСЕЙ ФИРМЫ В ЦЕЛОМ.\rМЕБЕЛЬ \r«ОПТИМА»\r- ЭТО ПОЛНЫЙ НАБОР ИНТЕРЬЕРНЫХ РЕШЕНИЙ ДЛЯ ОБУСТРОЙСТВА ПРОСТРАНСТВА В ОФИСЕ ПО СОВРЕМЕННЫМ СТАНДАРТАМ.\r\r\n \rУДАЧНЫЙ ВЫБОР МЕБЕЛИ ДЛЯ ПЕРСОНАЛА ВО МНОГОМ ОПРЕДЕЛЯЕТ УСПЕШНОСТЬ ДЕЯТЕЛЬНОСТИ ВСЕЙ КОМПАНИИ. ПРАВИЛЬНО ОРГАНИЗОВАТЬ РАБОЧЕЕ ПРОСТРАНСТВО - ЗНАЧИТ ПОМОЧЬ КОЛЛЕГАМ ВЫПОЛНЯТЬ СВОИ ФУНКЦИИ БЫСТРЕЕ И ЭФФЕКТИВНЕЕ.\rСЕРИЯ \r«ОПТИМА»\rПОЗВОЛИТ НАЙТИ МАССУ РЕШЕНИЙ ДЛЯ ОБУСТРОЙСТВА РАБОЧЕЙ ЗОНЫ, ПРИСПОСОБИТЬ ИНТЕРЬЕР К ДОЛЖНОСТНЫМ ОБЯЗАННОСТЯМ ВСЕХ КАТЕГОРИЙ СОТРУДНИКОВ. ЭРГОНОМИЧНЫЕ УГЛОВЫЕ СТОЛЫ, ПЕРЕГОРОДКИ, ШКАФЫ И ТУМБЫ ПОМОГУТ РАЦИОНАЛЬНО ИСПОЛЬЗОВАТЬ ПРОСТРАНСТВО ПОД УНИКАЛЬНОЕ РАБОЧЕЕ МЕСТО, ПРИСПОСОБЛЕННОЕ К ПОТРЕБНОСТЯМ КАЖДОГО РАБОТНИКА И ВСЕЙ ФИРМЫ В ЦЕЛОМ.\rМЕБЕЛЬ \r«ОПТИМА»\r- ЭТО ПОЛНЫЙ НАБОР ИНТЕРЬЕРНЫХ РЕШЕНИЙ ДЛЯ ОБУСТРОЙСТВА ПРОСТРАНСТВА В ОФИСЕ ПО СОВРЕМЕННЫМ СТАНДАРТАМ.\r\n'),
(34, '37c339b919a986e466960961039e1d6a', 'СОБРАНИЕ\r\nЗАХОДЯ В ПОМЕЩЕНИЕ, ГДЕ НАХОДЯТСЯ СТОЛЫ ДЛЯ ПЕРЕГОВОРОВ «СОБРАНИЕ», ВОЗНИКАЕТ СТОЙКОЕ ОЩУЩЕНИЕ, ЧТО НАХОДИШЬСЯ В КАБИНЕТЕ ЕСЛИ НЕ ПРЕЗИДЕНТА СТРАНЫ, ТО ПРЕМЬЕР-МИНИСТРА КАК МИНИМУМ. ВОТ-ВОТ В КОМНАТУ ВОЙДЕТ ВЫСОКОПОСТАВЛЕННЫЙ ЧИНОВНИК, И НАЧНЕТСЯ ОБСУЖДЕНИЕ ГЛОБАЛЬНЫХ ВОПРОСОВ.\rУДИВИТЕЛЬНОЕ СОЧЕТАНИЕ ИЗЫСКАННОЙ РОСКОШИ СТИЛЯ И КРАСОТЫ КЛАССИЧЕСКИХ ЛИНИЙ СТОЛОВ «СОБРАНИЕ» И ПРИВЛЕКАТЕЛЬНОЙ ЦЕНЫ ОПРОВЕРГАЕТ УСТОЯВШЕЕСЯ УТВЕРЖДЕНИЕ О КАЧЕСТВЕ ДЕШЕВОЙ МЕБЕЛИ. УМЕНЬШЕНИЕ СЕБЕСТОИМОСТИ ПРОИСХОДИТ ЗА СЧЕТ ИСПОЛЬЗОВАНИЯ БОЛЕЕ ДЕШЕВЫХ МАТЕРИАЛОВ – ДСП И ДВП, ЧТО ПОЗВОЛЯЕТ ОФИСНОЙ МЕБЕЛИ СОХРАНЯТЬ ВЕЛИКОЛЕПНЫЕ ЭКСПЛУАТАЦИОННЫЕ ХАРАКТЕРИСТИКИ.\r\r\n \rЗАХОДЯ В ПОМЕЩЕНИЕ, ГДЕ НАХОДЯТСЯ СТОЛЫ ДЛЯ ПЕРЕГОВОРОВ «СОБРАНИЕ», ВОЗНИКАЕТ СТОЙКОЕ ОЩУЩЕНИЕ, ЧТО НАХОДИШЬСЯ В КАБИНЕТЕ ЕСЛИ НЕ ПРЕЗИДЕНТА СТРАНЫ, ТО ПРЕМЬЕР-МИНИСТРА КАК МИНИМУМ. ВОТ-ВОТ В КОМНАТУ ВОЙДЕТ ВЫСОКОПОСТАВЛЕННЫЙ ЧИНОВНИК, И НАЧНЕТСЯ ОБСУЖДЕНИЕ ГЛОБАЛЬНЫХ ВОПРОСОВ.\rУДИВИТЕЛЬНОЕ СОЧЕТАНИЕ ИЗЫСКАННОЙ РОСКОШИ СТИЛЯ И КРАСОТЫ КЛАССИЧЕСКИХ ЛИНИЙ СТОЛОВ «СОБРАНИЕ» И ПРИВЛЕКАТЕЛЬНОЙ ЦЕНЫ ОПРОВЕРГАЕТ УСТОЯВШЕЕСЯ УТВЕРЖДЕНИЕ О КАЧЕСТВЕ ДЕШЕВОЙ МЕБЕЛИ. УМЕНЬШЕНИЕ СЕБЕСТОИМОСТИ ПРОИСХОДИТ ЗА СЧЕТ ИСПОЛЬЗОВАНИЯ БОЛЕЕ ДЕШЕВЫХ МАТЕРИАЛОВ – ДСП И ДВП, ЧТО ПОЗВОЛЯЕТ ОФИСНОЙ МЕБЕЛИ СОХРАНЯТЬ ВЕЛИКОЛЕПНЫЕ ЭКСПЛУАТАЦИОННЫЕ ХАРАКТЕРИСТИКИ.\r\n'),
(35, 'cae6ed5ad18b5af81c184a7d384f6dd3', 'ЛИДЕР\r\nЭТОТ СТИЛЬНЫЙ СТОЛ АБСОЛЮТНО НЕ СИММЕТРИЧЕН, И ЭТО ПРИДАЕТ ЕМУ ИЗЯЩНОСТЬ И ОРИГИНАЛЬНОСТЬ. \rСЛЕВА ОН ОПИРАЕТСЯ НА НОЖКУ, ОСВОБОЖДАЯ ПОЛЕЗНОЕ ПРОСТРАНСТВО ДЛЯ СИСТЕМНОГО БЛОКА И НОГ. \rСПРАВА ОСНОВАНИЕМ СЛУЖИТ УДОБНАЯ И ВМЕСТИТЕЛЬНАЯ ТУМБА. ПЛАВНЫЕ ЛИНИИ, СТИЛЬНЫЙ ДИЗАЙН И ВЫСОКАЯ ЭРГОНОМИЧНОСТЬ ЯВЛЯЮТСЯ \rОСНОВНЫМИ ДОСТОИНСТВАМИ ДАННОЙ СЕРИИ.\r\r\n \rЭТОТ СТИЛЬНЫЙ СТОЛ АБСОЛЮТНО НЕ СИММЕТРИЧЕН, И ЭТО ПРИДАЕТ ЕМУ ИЗЯЩНОСТЬ И ОРИГИНАЛЬНОСТЬ. \rСЛЕВА ОН ОПИРАЕТСЯ НА НОЖКУ, ОСВОБОЖДАЯ ПОЛЕЗНОЕ ПРОСТРАНСТВО ДЛЯ СИСТЕМНОГО БЛОКА И НОГ. \rСПРАВА ОСНОВАНИЕМ СЛУЖИТ УДОБНАЯ И ВМЕСТИТЕЛЬНАЯ ТУМБА. ПЛАВНЫЕ ЛИНИИ, СТИЛЬНЫЙ ДИЗАЙН И ВЫСОКАЯ ЭРГОНОМИЧНОСТЬ ЯВЛЯЮТСЯ \rОСНОВНЫМИ ДОСТОИНСТВАМИ ДАННОЙ СЕРИИ.\r\n'),
(36, '07e40b7ee85f6e0586e6b7dca7071207', 'ПРЕЗИДЕНТ\r\nКРЕСЛО РУКОВОДИТЕЛЯ ПРЕЗИДЕНТ\rВО ГЛАВЕ БОЛЬШОГО КРУГЛОГО СТОЛА ПОМОЖЕТ СОЗДАТЬ В ВАШЕМ КАБИНЕТЕ\rОБСТАНОВКУ ЛЕГЕНДАРНОЙ СОВЕЩАТЕЛЬНОЙ КОМНАТЫ. ВЕДЬ ЭТО НЕ ПРОСТО МЕБЕЛЬ ОФИСНАЯ – ЭТО НАСТОЯЩИЙ ТРОН, КОТОРЫЙ \rПОМОЖЕТ УПРАВЛЕНЦУ РЕШАТЬ ЛЮБЫЕ ВОПРОСЫ, СОГЛАСУЯСЬ С ПОНЯТИЯМИ ЧЕСТИ И СОВЕСТИ.\r\r\n \rКРЕСЛО РУКОВОДИТЕЛЯ ПРЕЗИДЕНТ\rВО ГЛАВЕ БОЛЬШОГО КРУГЛОГО СТОЛА ПОМОЖЕТ СОЗДАТЬ В ВАШЕМ КАБИНЕТЕ\rОБСТАНОВКУ ЛЕГЕНДАРНОЙ СОВЕЩАТЕЛЬНОЙ КОМНАТЫ. ВЕДЬ ЭТО НЕ ПРОСТО МЕБЕЛЬ ОФИСНАЯ – ЭТО НАСТОЯЩИЙ ТРОН, КОТОРЫЙ \rПОМОЖЕТ УПРАВЛЕНЦУ РЕШАТЬ ЛЮБЫЕ ВОПРОСЫ, СОГЛАСУЯСЬ С ПОНЯТИЯМИ ЧЕСТИ И СОВЕСТИ. \rДИЗАЙН КРЕСЛА ВЫПОЛНЕН В СТРОГОМ КЛАССИЧЕСКОМ СТИЛЕ. ОКАНТОВКА И ПОДЛОКОТНИКИ КРЕСЛА ВЫТОЧЕНА ВРУЧНУЮ И ПОТОМУ УНИКАЛЬНЫ. \rПРОИЗВОДИТСЯ ОГРАНИЧЕННЫМИ ПАРТИЯМИ - НЕ БОЛЕЕ 10 КРЕСЕЛ В ГОД.\r\n'),
(37, 'eafc4c3a71f8b67e539a59cd7f90eeda', 'ПЛУТОН\r\nОФИСНОЕ КРЕСЛО, ПОДОБРАННОЕ С УЧЕТОМ ВАШИХ ФИЗИОЛОГИЧЕСКИХ ОСОБЕННОСТЕЙ - ВАЖНАЯ СОСТАВЛЯЮЩАЯ РАБОТОСПОСОБНОСТИ И ЗДОРОВЬЯ. \rДАННАЯ МОДЕЛЬ БУДЕТ НЕЗАМЕНИМА ДЛЯ ТЕХ, КТО МНОГО РАБОТАЕТ ЗА КОМПЬЮТЕРОМ.\r\r\n \rОФИСНОЕ КРЕСЛО, ПОДОБРАННОЕ С УЧЕТОМ ВАШИХ ФИЗИОЛОГИЧЕСКИХ ОСОБЕННОСТЕЙ - ВАЖНАЯ СОСТАВЛЯЮЩАЯ РАБОТОСПОСОБНОСТИ И ЗДОРОВЬЯ. \rДАННАЯ МОДЕЛЬ БУДЕТ НЕЗАМЕНИМА ДЛЯ ТЕХ, КТО МНОГО РАБОТАЕТ ЗА КОМПЬЮТЕРОМ.\r\n'),
(38, 'd9c1fcdf56ed763d069672a51edaf886', 'ПАРМА\r\nСТУЛЬЯ ПАРМА ВНЕСУТ В КУХНЮ УЮТНОЕ ОБАЯНИЕ ЭКОЛОГИЧЕСКИ ЧИСТОГО ДРЕВЕСНОГО МАТЕРИАЛА. \rСТУЛ ПРАКТИЧЕСКИ ЦЕЛИКОМ СДЕЛАН ИЗ МАССИВА БУКА, ИСКЛЮЧЕНИЕМ СТАЛО ЛИШЬ МЯГКОЕ СИДЕНЬЕ. \rТОНИРОВКА ДЕРЕВЯННЫХ ДЕТАЛЕЙ МОЖЕТ БЫТЬ ВЫПОЛНЕНА В ЛЮБОЙ ЦВЕТОВОЙ ПАЛИТРЕ.\r\r\n \r <P>СТУЛЬЯ ПАРМА ВНЕСУТ В КУХНЮ УЮТНОЕ ОБАЯНИЕ ЭКОЛОГИЧЕСКИ ЧИСТОГО ДРЕВЕСНОГО МАТЕРИАЛА. \r СТУЛ ПРАКТИЧЕСКИ ЦЕЛИКОМ СДЕЛАН ИЗ МАССИВА БУКА, ИСКЛЮЧЕНИЕМ СТАЛО ЛИШЬ МЯГКОЕ СИДЕНЬЕ. \r ТОНИРОВКА ДЕРЕВЯННЫХ ДЕТАЛЕЙ МОЖЕТ БЫТЬ ВЫПОЛНЕНА В ЛЮБОЙ ЦВЕТОВОЙ ПАЛИТРЕ.</P>\r\n'),
(39, '6b34dc50a2008617635888607e22f36c', 'ПАЛЕРМО\r\nУНИВЕРСАЛЬНЫЙ ДИЗАЙН СТУЛЬЕВ ПАЛЕРМО ПОЗВОЛИТ С УСПЕХОМ ИСПОЛЬЗОВАТЬ ИХ И В ОФИСНЫХ ПОМЕЩЕНИЯХ, \rИ В ИНТЕРЬЕРЕ КАФЕ, И В ДОМАШНЕЙ ОБСТАНОВКЕ. СТУЛЬЯ ПАЛЕРМО ДОБАВЯТ УЮТА В КАЖДОЕ ПОМЕЩЕНИЕ И \rОРГАНИЧНО СОЛЬЮТСЯ С ЕГО СТИЛЕМ.\r\r\n \rУНИВЕРСАЛЬНЫЙ ДИЗАЙН СТУЛЬЕВ ПАЛЕРМО ПОЗВОЛИТ С УСПЕХОМ ИСПОЛЬЗОВАТЬ ИХ И В ОФИСНЫХ ПОМЕЩЕНИЯХ, \rИ В ИНТЕРЬЕРЕ КАФЕ, И В ДОМАШНЕЙ ОБСТАНОВКЕ. СТУЛЬЯ ПАЛЕРМО ДОБАВЯТ УЮТА В КАЖДОЕ ПОМЕЩЕНИЕ И \rОРГАНИЧНО СОЛЬЮТСЯ С ЕГО СТИЛЕМ.\r\n'),
(40, 'dde02b9a7017c12f3635df242d7fec2d', 'ВАЛЕНСИЯ\r\nСТИЛЬНЫЙ ДИЗАЙН СТУЛЬЕВ ВАЛЕНСИЯ СРАЗУ ПРИВЛЕКАЕТ ВНИМАНИЕ, А ЭРГОНОМИЧНАЯ ФОРМА СПИНКИ И \rМЯГКОЕ СИДЕНЬЕ ДЕЛАЮТ ИХ НЕОБЫЧАЙНО УДОБНЫМИ. ЭТИ СТУЛЬЯ ХОРОШО ПОДОЙДУТ К ЛЮБОЙ ОФИСНОЙ МЕБЕЛИ ДЛЯ \rПЕРСОНАЛА.\r\r\n \rСТИЛЬНЫЙ ДИЗАЙН СТУЛЬЕВ ВАЛЕНСИЯ СРАЗУ ПРИВЛЕКАЕТ ВНИМАНИЕ, А ЭРГОНОМИЧНАЯ ФОРМА СПИНКИ И \rМЯГКОЕ СИДЕНЬЕ ДЕЛАЮТ ИХ НЕОБЫЧАЙНО УДОБНЫМИ. ЭТИ СТУЛЬЯ ХОРОШО ПОДОЙДУТ К ЛЮБОЙ ОФИСНОЙ МЕБЕЛИ ДЛЯ \rПЕРСОНАЛА.\r\n'),
(41, 'e8afd744f2236f58877667738872c313', 'ФАЗЕНДА\r\nСКЛАДНОЙ ДЕРЕВЯННЫЙ СТУЛ С СИДЕНЬЕМ И СПИНКОЙ ИЗ ПЛОТНОГО ХЛОПКА, ИЗГОТОВЛЕННЫЙ ИЗ НАТУРАЛЬНЫХ ПРИРОДНЫХ МАТЕРИАЛОВ. \rТКАНЬ И ДЕРЕВО СЧИТАЮТСЯ ТЕПЛЫМИ МАТЕРИАЛАМИ - ДАЖЕ ЗИМОЙ СИДЕТЬ НА НИХ КОМФОРТНЕЕ, ЧЕМ НА ЖЕЛЕЗЕ ИЛИ ПЛАСТИКЕ. ЭТО ПРЕКРАСНОЕ РЕШЕНИЕ ДЛЯ ДАЧИ.\r\r\n \rСКЛАДНОЙ ДЕРЕВЯННЫЙ СТУЛ С СИДЕНЬЕМ И СПИНКОЙ ИЗ ПЛОТНОГО ХЛОПКА, ИЗГОТОВЛЕННЫЙ ИЗ НАТУРАЛЬНЫХ ПРИРОДНЫХ МАТЕРИАЛОВ. \rТКАНЬ И ДЕРЕВО СЧИТАЮТСЯ ТЕПЛЫМИ МАТЕРИАЛАМИ - ДАЖЕ ЗИМОЙ СИДЕТЬ НА НИХ КОМФОРТНЕЕ, ЧЕМ НА ЖЕЛЕЗЕ ИЛИ ПЛАСТИКЕ. ЭТО ПРЕКРАСНОЕ РЕШЕНИЕ ДЛЯ ДАЧИ.\r\n'),
(42, 'fc9d38eebe941fe855bc8731bfa026c1', 'ЭРА\r\nСТИЛЬНЫЙ СТУЛ НЕОБЫЧНЫЙ ФОРМЫ С ЖЕСТКИМИ СИДЕНЬЯМИ НА МЕТАЛЛИЧЕСКОМ КАРКАСЕ УДОБЕН ТЕМ, \rЧТО МОЖНО КОМПАКТНО СЛОЖИТЬ ДЛЯ ХРАНЕНИЯ ДО 45 ТАКИХ СТУЛЬЕВ. ЛЕГКАЯ И ПРОЧНАЯ МОДЕЛЬ ОТЛИЧНО ПОДОЙДЕТ \rК КОМПЬЮТЕРНОЙ СТОЙКЕ, ТАКЖЕ ЕЕ МОЖНО ИСПОЛЬЗОВАТЬ КАК МЕБЕЛЬ ДЛЯ КАФЕ И БАРОВ.\r\r\n \rСТИЛЬНЫЙ СТУЛ НЕОБЫЧНЫЙ ФОРМЫ С ЖЕСТКИМИ СИДЕНЬЯМИ НА МЕТАЛЛИЧЕСКОМ КАРКАСЕ УДОБЕН ТЕМ, \rЧТО МОЖНО КОМПАКТНО СЛОЖИТЬ ДЛЯ ХРАНЕНИЯ ДО 45 ТАКИХ СТУЛЬЕВ. ЛЕГКАЯ И ПРОЧНАЯ МОДЕЛЬ ОТЛИЧНО ПОДОЙДЕТ \rК КОМПЬЮТЕРНОЙ СТОЙКЕ, ТАКЖЕ ЕЕ МОЖНО ИСПОЛЬЗОВАТЬ КАК МЕБЕЛЬ ДЛЯ КАФЕ И БАРОВ.\r\n'),
(43, '3485e5d80bb6fbae95a83915c4aca23f', 'СИТИ\r\nСТИЛЬНЫЙ, ЛЕГКИЙ И УДОБНЫЙ СТУЛ НА ХРОМИРОВАННОМ ОСНОВАНИИ СРАЗУ ПРИВЛЕКАЕТ ВНИМАНИЕ \rСВОЕЙ НЕОБЫЧНОЙ ФОРМОЙ. А РАЗНООБРАЗНЫЕ ВАРИАНТЫ ОБИВКИ ПОЗВОЛЯЮТ ПОДОБРАТЬ НАИЛУЧШЕЕ СОЧЕТАНИЕ С \rЛЮБОЙ КОМПЬЮТЕРНОЙ МЕБЕЛЬЮ.\r\r\n \rСТИЛЬНЫЙ, ЛЕГКИЙ И УДОБНЫЙ СТУЛ НА ХРОМИРОВАННОМ ОСНОВАНИИ СРАЗУ ПРИВЛЕКАЕТ ВНИМАНИЕ \rСВОЕЙ НЕОБЫЧНОЙ ФОРМОЙ. А РАЗНООБРАЗНЫЕ ВАРИАНТЫ ОБИВКИ ПОЗВОЛЯЮТ ПОДОБРАТЬ НАИЛУЧШЕЕ СОЧЕТАНИЕ С \rЛЮБОЙ КОМПЬЮТЕРНОЙ МЕБЕЛЬЮ.\r\n'),
(44, '53dd08f5b5b2624b7521c7f382c7f9f6', 'ИЗОПЛАСТ ХРОМ\r\nПОПУЛЯРНАЯ МОДЕЛЬ ОФИСНОГО СТУЛА НА ХРОМИРОВАННОМ МЕТАЛЛИЧЕСКОМ КАРКАСЕ С ПЛАСТИКОВЫМИ СПИНКОЙ И \rСИДЕНЬЕМ ХОРОШО ВПИСЫВАЕТСЯ В ЛЮБОЙ ИНТЕРЬЕР. ПРОЧНЫЕ И ДОЛГОВЕЧНЫЕ, ЭТИ СТУЛЬЯ УДОБНЫ ДЛЯ ИСПОЛЬЗОВАНИЯ \rВ КАЧЕСТВЕ АУДИТОРНЫХ КОНФЕРЕНЦ-КРЕСЕЛ, КРОМЕ ТОГО, ИХ ЛЕГКО ХРАНИТЬ.\r\r\n \rПОПУЛЯРНАЯ МОДЕЛЬ ОФИСНОГО СТУЛА НА ХРОМИРОВАННОМ МЕТАЛЛИЧЕСКОМ КАРКАСЕ С ПЛАСТИКОВЫМИ СПИНКОЙ И \rСИДЕНЬЕМ ХОРОШО ВПИСЫВАЕТСЯ В ЛЮБОЙ ИНТЕРЬЕР. ПРОЧНЫЕ И ДОЛГОВЕЧНЫЕ, ЭТИ СТУЛЬЯ УДОБНЫ ДЛЯ ИСПОЛЬЗОВАНИЯ \rВ КАЧЕСТВЕ АУДИТОРНЫХ КОНФЕРЕНЦ-КРЕСЕЛ, КРОМЕ ТОГО, ИХ ЛЕГКО ХРАНИТЬ.\r\n'),
(45, '2efa39d6fa529b12dd51fd7139adec0e', 'МЯГКАЯ МЕБЕЛЬ\r\nДИВАНЫ, КРЕСЛА И ПРОЧАЯ МЯГКАЯ МЕБЕЛЬ\r\n'),
(46, '2c9244e9e768ea36f0bb298526f21402', 'ОФИСНАЯ МЕБЕЛЬ\r\nДИВАНЫ, СТОЛЫ, СТУЛЬЯ\r\n'),
(47, 'acd32268f26f878af2a96d753ccbc9c8', 'МЕБЕЛЬ ДЛЯ КУХНИ\r\nПОЛКИ, ЯЩИКИ, СТОЛЫ И СТУЛЬЯ\r\n'),
(48, 'e986498f11e924c98c57e35939cf927f', 'ДЕТСКАЯ МЕБЕЛЬ\r\nКРОВАТИ, СТУЛЬЯ, МЯГКАЯ ДЕТСКАЯ МЕБЕЛЬ\r\n'),
(49, 'da430218f51fdea19711a3806fb7a3c4', 'МЕБЕЛЬ НА ЗАКАЗ\r\nНАША КОМПАНИЯ ЗАНИМАЕТСЯ РАЗРАБОТКОЙ МЕБЕЛИ НА ЗАКАЗ.\r\n \rНАША КОМПАНИЯ ЗАНИМАЕТСЯ РАЗРАБОТКОЙ МЕБЕЛИ НА ЗАКАЗ ПО ИНДИВИДУАЛЬНЫМ ПРОЕКТАМ: ВСТРОЕННЫЕ И КОРПУСНЫЕ ШКАФЫ КУПЕ,\rГАРДЕРОБНЫЕ КОМНАТЫ, ПРИХОЖИЕ, БИБЛИОТЕКИ, ПЛАТЯНЫЕ ШКАФЫ, КОМОДЫ И ДРУГИЕ СЛОЖНЫЕ КОНСТРУКЦИИ.\rМЫ СОЗДАЕМ МЕБЕЛЬ ИДЕАЛЬНО ПОДХОДЯЩУЮ ИМЕННО К ВАШЕМУ ДОМУ И ОФИСУ, ИНТЕРЬЕРЫ, МАКСИМАЛЬНО ОТОБРАЖАЮЩИЕ ВАШУ ИНДИВИДУАЛЬНОСТЬ.\rПО ВАШЕЙ ЗАЯВКЕ НАШ СПЕЦИАЛИСТ ПРИЕЗЖАЕТ СО ВСЕМИ ОБРАЗЦАМИ МАТЕРИАЛОВ, С КОТОРЫМИ МЫ РАБОТАЕМ, В ЛЮБОЕ УДОБНОЕ ДЛЯ ВАС ВРЕМЯ И\rПРОИЗВЕДЕТ ВСЕ НЕОБХОДИМЫЕ ЗАМЕРЫ. УЧИТЫВАЯ ВСЕ ВАШИ ПОЖЕЛАНИЯ И ОСОБЕННОСТИ ПОМЕЩЕНИЯ, СОСТАВЛЯЕТСЯ ЭСКИЗНЫЙ ПРОЕКТ.\rПОСЛЕ ЗАКЛЮЧЕНИЯ ДОГОВОРА, В КОТОРОМ ОГОВАРИВАЮТСЯ СРОКИ ДОСТАВКИ И МОНТАЖА МЕБЕЛИ, ЭСКИЗНЫЙ ПРОЕКТ ПЕРЕДАЕТСЯ НА ПРОИЗВОДСТВО,\rГДЕ ОПЫТНЫМИ СПЕЦИАЛИСТАМИ ПРОИЗВОДЯТСЯ РАСЧЕТЫ В ПРОГРАММЕ ТРЕХМЕРНОГО МОДЕЛИРОВАНИЯ. ПОСЛЕ ВСЕХ РАСЧЕТОВ ГОТОВЫЙ ПРОЕКТ ПОСТУПАЕТ\rНЕПОСРЕДСТВЕННО НА ПРОИЗВОДСТВО, ГДЕ ПРОИЗВОДЯТ РАСКРОЙ ДЕТАЛЕЙ, ИХ ОБРАБОТКУ, И СБОРКУ НЕКОТОРЫХ ЭЛЕМЕНТОВ. НАКАНУНЕ ДНЯ ДОСТАВКИ\rСОТРУДНИКИ ОТДЕЛА ТРАНСПОРТНЫХ УСЛУГ СВЯЖУТСЯ С ВАМИ И БОЛЕЕ КОНКРЕТНО ОГОВОРЯТ ВРЕМЯ ДОСТАВКИ. ПОСЛЕ ЗАКЛЮЧЕНИЯ ДОГОВОРА ВАМИ\rВНОСИТСЯ ПРЕДОПЛАТА В РАЗМЕРЕ 30% ОТ СУММЫ ЗАКАЗАННОЙ ВАМИ МЕБЕЛИ. ОСТАЛЬНАЯ СУММА ОПЛАЧИВАЕТСЯ ВАМИ ПО ДОСТАВКЕ.\r\n'),
(50, '6ae9d8e3d86f6edc36947e4e39db948b', 'УСЛУГИ ДИЗАЙНЕРА\r\nМЫ ПРЕДЛАГАЕМ ШИРОКИЙ СПЕКТР УСЛУГ ПО ДИЗАЙНУ МЕБЕЛИ.\r\n \rДИАГНОСТИКА ВОЗМОЖНОСТЕЙ ПРЕОБРАЗОВАНИЯ ПОМЕЩЕНИЙ – ОПРЕДЕЛЕНИЕ ВАРИАНТОВ ПЕРЕПЛАНИРОВКИ, ОТДЕЛКИ, РАЗРАБОТКА НОВЫХ РЕШЕНИЙ КОЛОРИСТКИ, ОСВЕЩЕНИЯ, ПЕРЕСТАНОВКИ МЕБЕЛИ И ДЕКОРА, РАЗРАБОТКА СПЕЦИАЛЬНЫХ ФУНКЦИОНАЛЬНЫХ ЗОН ДЛЯ ПЕРЕКЛЮЧЕНИЯ В РАЗЛИЧНЫЕ РЕЖИМЫ ЖИЗНИ.\rРАЗРАБОТКА ИДЕИ-ОБРАЗА, ПРОВЕДЕНИЕ ПРЕДВАРИТЕЛЬНЫХ РАСЧЁТОВ И СОЗДАНИЕ 3D-МОДЕЛИ: ИЗОБРАЖЕНИЕ ПЕРЕДАЕТ ЦВЕТ И ФАКТУРУ, ПРЕДЛАГАЯ КЛИЕНТУ ЭКСПЕРИМЕНТИРОВАТЬ И ПОДБИРАТЬ ОПТИМАЛЬНЫЙ ВАРИАНТ.\rРАЗРАБОТКА КОМПЬЮТЕРНЫХ ЦВЕТНЫХ ТРЕХМЕРНЫХ МОДЕЛЕЙ МЕБЕЛИ. НАТУРАЛИСТИЧНОСТЬ ИЗОБРАЖЕНИЙ, ИХ ВЫСОКАЯ СХОЖЕСТЬ С ОРИГИНАЛОМ ПОЗВОЛЯЮТ ПРЕДСТАВИТЬ, КАК БУДЕТ ВЫГЛЯДЕТЬ ГОТОВОЕ ИЗДЕЛИЕ, РАССМОТРЕТЬ ЕГО В ДЕТАЛЯХ.\rПОДБОР И РАССТАНОВКА МЕБЕЛИ.\rДЕКОРИРОВАНИЕ - ПОДБОР ДЕКОРА И АКСЕССУАРОВ ИНТЕРЬЕРА В СООТВЕТСТВИИ С ОБРАЗОМ И СТИЛЕМ ПОМЕЩЕНИЯ. ВОЗМОЖНО СОЗДАНИЕ ПО ИНДИВИДУАЛЬНОМУ ЗАПРОСУ ЭКСКЛЮЗИВНЫХ, АВТОРСКИХ КОЛЛЕКЦИЙ.\r\n'),
(51, '73b0737b640ddf58dcbdd46d5175e414', 'ПРОДАВЕЦ-ДИЗАЙНЕР (КУХНИ)\r\nТРЕБОВАНИЯ\rУВЕРЕННЫЙ ПОЛЬЗОВАТЕЛЬ ПК, НАВЫКИ ЧЕРЧЕНИЯ ОТ РУКИ И В ПРОГРАММАХ, ОПЫТ РАБОТЫ ДИЗАЙНЕРОМ/КОНСТРУКТОРОМ В МЕБЕЛЬНОЙ СФЕРЕ, ЭТИКА ДЕЛОВОГО ОБЩЕНИЯ\rОБЯЗАННОСТИ\rКОНСУЛЬТИРОВАНИЕ КЛИЕНТОВ ПО КУХОННОЙ МЕБЕЛИ, ОСТАВЛЕНИЕ ХУДОЖЕСТВЕННО-КОНСТРУКТОРСКИХ ПРОЕКТОВ, ПРИЕМ И ОФОРМЛЕНИЕ ЗАКАЗОВ.\rУСЛОВИЯ\rЗАРПЛАТА: 13500 ОКЛАД + % ОТ ЛИЧНЫХ ПРОДАЖ + ПРЕМИИ‚ СОВОКУПНЫЙ ДОХОД ОТ 20000 РУБ,ПОЛНЫЙ СОЦ. ПАКЕТ‚ ОФОРМЛЕНИЕ СОГЛАСНО ТК РФ\r\n'),
(52, 'fa5c9c5ac99f37b001a1a0421af4b144', 'ДИРЕКТОР МАГАЗИНА\r\nТРЕБОВАНИЯ\rВЫСШЕЕ ОБРАЗОВАНИЕ‚ ОПЫТ РУКОВОДЯЩЕЙ РАБОТЫ В РОЗНИЦЕ ОТ 3 ЛЕТ‚ ОПЫТНЫЙ ПОЛЬЗОВАТЕЛЬ ПК‚ ЭТИКА ДЕЛОВОГО ОБЩЕНИЯ‚ ЗНАНИЕ МЕТОДОВ УПРАВЛЕНИЯ И ЗАКЛЮЧЕНИЯ ДОГОВОРОВ‚ ОТЛИЧНОЕ ЗНАНИЕ ТОРГОВОГО И ТРУДОВОГО ЗАКОНОДАТЕЛЬСТВ‚ ОТВЕТСТВЕННОСТЬ‚ ИНИЦИАТИВНОСТЬ‚ АКТИВНОСТЬ.\rОБЯЗАННОСТИ\rРУКОВОДСТВО ДЕЯТЕЛЬНОСТЬЮ МАГАЗИНА‚ ОРГАНИЗАЦИЯ ЭФФЕКТИВНОЙ РАБОТЫ ПЕРСОНАЛА МАГАЗИНА‚ ФИНАНСОВО-ХОЗЯЙСТВЕННАЯ ДЕЯТЕЛЬНОСТЬ И ОТЧЕТНОСТЬ‚ ВЫПОЛНЕНИЕ ПЛАНА ПРОДАЖ‚ ОТЧЕТНОСТЬ.\rУСЛОВИЯ\rТРУДОУСТРОЙСТВО ПО ТК РФ‚ ПОЛНЫЙ СОЦ. ПАКЕТ‚ ГРАФИК РАБОТЫ 5 ЧЕРЕ 2 (168 ЧАС/МЕС)‚ ЗАРПЛАТА: ОКЛАД 28000 + % ОТ ОБОРОТА + ПРЕМИИ‚ СОВОКУПНЫЙ ДОХОД ОТ 35000 РУБ\r\n'),
(53, '3187d1b1ae8eb650d8851807a7ab248b', 'БУХГАЛТЕР ОТДЕЛА УЧЕТА ГОТОВОЙ ПРОДУКЦИИ\r\nТРЕБОВАНИЯ\rЖЕН., 22-45, УВЕРЕННЫЙ ПОЛЬЗОВАТЕЛЬ ПК, ОПЫТ РАБОТЫ БУХГАЛТЕРОМ ПРИВЕТСВУЕТСЯ, ЗНАНИЕ БУХГАЛТЕРСКОГО УЧЕТА (БАЗОВЫЙ УРОВЕНЬ), САМОСТОЯТЕЛЬНОСТЬ, ОТВЕТСТВЕННОСТЬ, КОММУНИКАБЕЛЬНОСТЬ, БЫСТРАЯ ОБУЧАЕМОСТЬ, ЖЕЛАНИЕ РАБОТАТЬ.\rОБЯЗАННОСТИ\rРАБОТА С ПЕРВИЧНЫМИ ДОКУМЕНТАМИ ПО УЧЕТУ МПЗ ВЕДЕНИЕ ЖУРНАЛОВ-ОРДЕРОВ ПО ПРОИЗВОДСТВЕННЫМ СЧЕТАМ ФОРМИРОВАНИЕ МАТЕРИАЛЬНЫХ ОТЧЕТОВ ПОДРАЗДЕЛЕНИЙ ИСПОЛНЕНИЕ ДОПОЛНИТЕЛЬНЫХ ФУНКЦИЙ ПО УКАЗАНИЮ РУКОВОДИТЕЛЯ\rУСЛОВИЯ\rГРАФИК РАБОТЫ 5 ДНЕЙ В НЕДЕЛЮ, АДРЕС РАБОТЫ Г. ШАТУРА, БОТИНСКИЙ ПР-Д, 37. ЗАРПЛАТА: ОКЛАД 10 800 Р. + ПРЕМИЯ 40% ОТ ОКЛАДА, ПОЛНЫЙ СОЦ. ПАКЕТ.\r\n'),
(54, '7549c9b852ce0227509f36355ba48fea', 'CЕРГЕЙ РОДИОНОВ\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nГЕНЕРАЛЬНЫЙ ДИРЕКТОР\r\nCTC-МЕДИА\r\n'),
(55, 'f2d2560279c1ff2f9662de0d348f3318', 'АННА АНДРЕЕВА\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nВЫ СМОЖЕТЕ ОРГАНИЗОВАТЬ ВНУТРИ КОМПАНИИ КОЛЛЕКТИВНУЮ РАБОТУ НАД ПРОЕКТАМИ В РАБОЧИХ ГРУППАХ, ВЕСТИ УЧЕТ И ПЛАНИРОВАНИЕ ВРЕМЕНИ И СОБЫТИЙ, ОБМЕНИВАТЬСЯ СООБЩЕНИЯМИ И ПОЧТОЙ ЧЕРЕЗ ПОРТАЛ, ПРОВОДИТЬ ВНУТРИ КОМПАНИИ ВИДЕОКОНФЕРЕНЦИИ И ДЕЛАТЬ МНОГОЕ ДРУГОЕ.\r\nМАРКЕТОЛОГ\r\nRK-TELECOM\r\n'),
(56, '63f0152ec61c51e41eb8136c50576e04', 'ДМИТРИЯ ПЯЛОВ\r\nМОЖЕТЕ СРАЗУ ПЕРЕЙТИ С «МЛАДШЕЙ», БАЗОВОЙ РЕДАКЦИИ НА «БИЗНЕС-ПРОЦЕССЫ». ПОСЛЕ ТАКОГО ПЕРЕХОДА ВАШ ПОРТАЛ МОЖНО БУДЕТ ИНТЕГРИРОВАТЬ С ВНЕШНИМ САЙТОМ, НА ПОРТАЛЕ ДОБАВЯТСЯ ВОЗМОЖНОСТИ ВИЗУАЛЬНОГО ПРОЕКТИРОВАНИЯ БИЗНЕС-ПРОЦЕССОВ И УПРАВЛЕНИЯ СПИСКАМИ, ВКЛЮЧАЯ СПИСКИ В РАБОЧИХ ГРУППАХ. КРОМЕ ТОГО, ВЫ СМОЖЕТЕ АНАЛИЗИРОВАТЬ ПОСЕЩАЕМОСТЬ СВОЕГО ПОРТАЛА\r\nМОЖЕТЕ СРАЗУ ПЕРЕЙТИ С «МЛАДШЕЙ», БАЗОВОЙ РЕДАКЦИИ НА «БИЗНЕС-ПРОЦЕССЫ». ПОСЛЕ ТАКОГО ПЕРЕХОДА ВАШ ПОРТАЛ МОЖНО БУДЕТ ИНТЕГРИРОВАТЬ С ВНЕШНИМ САЙТОМ, НА ПОРТАЛЕ ДОБАВЯТСЯ ВОЗМОЖНОСТИ ВИЗУАЛЬНОГО ПРОЕКТИРОВАНИЯ БИЗНЕС-ПРОЦЕССОВ И УПРАВЛЕНИЯ СПИСКАМИ, ВКЛЮЧАЯ СПИСКИ В РАБОЧИХ ГРУППАХ. КРОМЕ ТОГО, ВЫ СМОЖЕТЕ АНАЛИЗИРОВАТЬ ПОСЕЩАЕМОСТЬ СВОЕГО ПОРТАЛА.\r\nМОЖЕТЕ СРАЗУ ПЕРЕЙТИ С «МЛАДШЕЙ», БАЗОВОЙ РЕДАКЦИИ НА «БИЗНЕС-ПРОЦЕССЫ». ПОСЛЕ ТАКОГО ПЕРЕХОДА ВАШ ПОРТАЛ МОЖНО БУДЕТ ИНТЕГРИРОВАТЬ С ВНЕШНИМ САЙТОМ, НА ПОРТАЛЕ ДОБАВЯТСЯ ВОЗМОЖНОСТИ ВИЗУАЛЬНОГО ПРОЕКТИРОВАНИЯ БИЗНЕС-ПРОЦЕССОВ И УПРАВЛЕНИЯ СПИСКАМИ, ВКЛЮЧАЯ СПИСКИ В РАБОЧИХ ГРУППАХ. КРОМЕ ТОГО, ВЫ СМОЖЕТЕ АНАЛИЗИРОВАТЬ ПОСЕЩАЕМОСТЬ СВОЕГО ПОРТАЛА.\r\nМОЖЕТЕ СРАЗУ ПЕРЕЙТИ С «МЛАДШЕЙ», БАЗОВОЙ РЕДАКЦИИ НА «БИЗНЕС-ПРОЦЕССЫ». ПОСЛЕ ТАКОГО ПЕРЕХОДА ВАШ ПОРТАЛ МОЖНО БУДЕТ ИНТЕГРИРОВАТЬ С ВНЕШНИМ САЙТОМ, НА ПОРТАЛЕ ДОБАВЯТСЯ ВОЗМОЖНОСТИ ВИЗУАЛЬНОГО ПРОЕКТИРОВАНИЯ БИЗНЕС-ПРОЦЕССОВ И УПРАВЛЕНИЯ СПИСКАМИ, ВКЛЮЧАЯ СПИСКИ В РАБОЧИХ ГРУППАХ. КРОМЕ ТОГО, ВЫ СМОЖЕТЕ АНАЛИЗИРОВАТЬ ПОСЕЩАЕМОСТЬ СВОЕГО ПОРТАЛА.\r\n\r\nПРОГРАММИСТ \r\n.NET-ДЕВЕЛОПМЕНТ\r\n'),
(57, '2c6e568b17cc9f7d7bf2030137763876', 'ASKDGFJAS KLASDFH\r\nDFGSDGERHDWFHRTHR\r\nRETHJGFHET6ITYKE\r\nSDFSD\r\nSDFSDF\r\n'),
(58, '4adeeba5e29b7d4d9c9b10353f38bf44', 'GDHJSJFSOIOISUDHIFUSIDUFIUSHGD\r\nSDGSDG\r\nDGSDGЫФАЫАФЫА\r\nSDGSDG\r\nDSGSDG\r\n'),
(59, 'bcbc99db98ce307aff51ddb0f9af9e67', 'ПРОФИЛЬ\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `b_search_content_title`
--

CREATE TABLE `b_search_content_title` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `POS` int(11) NOT NULL,
  `WORD` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

--
-- Dumping data for table `b_search_content_title`
--

INSERT INTO `b_search_content_title` (`SEARCH_CONTENT_ID`, `SITE_ID`, `POS`, `WORD`) VALUES
(1, 's1', 0, 'ПОИСК'),
(2, 's1', 0, 'КАРТА'),
(2, 's1', 6, 'САЙТА'),
(3, 's1', 0, 'ПРОДУКЦИЯ'),
(4, 's1', 0, 'ОТЗЫВЫ'),
(5, 's1', 0, 'ИСТОРИЯ'),
(6, 's1', 1, 'И'),
(6, 's1', 0, 'МИССИЯ'),
(6, 's1', 9, 'СТРАТЕГИЯ'),
(7, 's1', 2, 'КОМПАНИИ'),
(7, 's1', 0, 'О'),
(8, 's1', 0, 'TEST'),
(9, 's1', 0, 'РУКОВОДСТВО'),
(10, 's1', 0, 'ВАКАНСИИ'),
(11, 's1', 0, 'УСЛУГИ'),
(12, 's1', 10, 'КОМПАНИЯ'),
(12, 's1', 0, 'МЕБЕЛЬНАЯ'),
(13, 's1', 0, 'TEST'),
(14, 's1', 0, 'АРХИВ'),
(15, 's1', 0, 'АНОНСЫ'),
(16, 's1', 8, 'СОТРУДНИЧЕСТВА'),
(16, 's1', 0, 'УСЛОВИЯ'),
(17, 's1', 0, 'КАК'),
(17, 's1', 10, 'ПАРТНЕРОМ'),
(17, 's1', 4, 'СТАТЬ'),
(18, 's1', 0, 'НОВОСТИ'),
(19, 's1', 0, 'КОНТАКТЫ'),
(20, 's1', 0, 'ВХОД'),
(20, 's1', 5, 'НА'),
(20, 's1', 8, 'САЙТ'),
(21, 's1', 0, 'ГЕРЦОГ'),
(22, 's1', 0, 'МОНАЛИЗА'),
(23, 's1', 0, 'МИНИСТР'),
(24, 's1', 0, 'ХРОМ'),
(25, 's1', 0, 'ЛИВЕРПУЛЬ'),
(26, 's1', 0, 'ИЗАБЕЛЛА'),
(27, 's1', 0, 'АЛАДДИН'),
(28, 's1', 0, 'ДЖОКОНДА'),
(29, 's1', 0, 'ФЛОРА'),
(30, 's1', 0, 'ПРЕСТИЖ'),
(31, 's1', 0, 'ЛАУРА'),
(32, 's1', 0, 'МОДЕРН'),
(33, 's1', 0, 'ОПТИМА'),
(34, 's1', 0, 'СОБРАНИЕ'),
(35, 's1', 0, 'ЛИДЕР'),
(36, 's1', 0, 'ПРЕЗИДЕНТ'),
(37, 's1', 0, 'ПЛУТОН'),
(38, 's1', 0, 'ПАРМА'),
(39, 's1', 0, 'ПАЛЕРМО'),
(40, 's1', 0, 'ВАЛЕНСИЯ'),
(41, 's1', 0, 'ФАЗЕНДА'),
(42, 's1', 0, 'ЭРА'),
(43, 's1', 0, 'СИТИ'),
(44, 's1', 0, 'ИЗОПЛАСТ'),
(44, 's1', 9, 'ХРОМ'),
(45, 's1', 7, 'МЕБЕЛЬ'),
(45, 's1', 0, 'МЯГКАЯ'),
(46, 's1', 8, 'МЕБЕЛЬ'),
(46, 's1', 0, 'ОФИСНАЯ'),
(47, 's1', 7, 'ДЛЯ'),
(47, 's1', 11, 'КУХНИ'),
(47, 's1', 0, 'МЕБЕЛЬ'),
(48, 's1', 0, 'ДЕТСКАЯ'),
(48, 's1', 8, 'МЕБЕЛЬ'),
(49, 's1', 10, 'ЗАКАЗ'),
(49, 's1', 0, 'МЕБЕЛЬ'),
(49, 's1', 7, 'НА'),
(50, 's1', 7, 'ДИЗАЙНЕРА'),
(50, 's1', 0, 'УСЛУГИ'),
(51, 's1', 19, 'КУХНИ'),
(51, 's1', 0, 'ПРОДАВЕЦ-ДИЗАЙНЕР'),
(52, 's1', 0, 'ДИРЕКТОР'),
(52, 's1', 9, 'МАГАЗИНА'),
(53, 's1', 0, 'БУХГАЛТЕР'),
(53, 's1', 23, 'ГОТОВОЙ'),
(53, 's1', 10, 'ОТДЕЛА'),
(53, 's1', 31, 'ПРОДУКЦИИ'),
(53, 's1', 17, 'УЧЕТА'),
(54, 's1', 0, 'CЕРГЕЙ'),
(54, 's1', 7, 'РОДИОНОВ'),
(55, 's1', 5, 'АНДРЕЕВА'),
(55, 's1', 0, 'АННА'),
(56, 's1', 0, 'ДМИТРИЯ'),
(56, 's1', 8, 'ПЯЛОВ'),
(57, 's1', 0, 'ASKDGFJAS'),
(57, 's1', 10, 'KLASDFH'),
(58, 's1', 0, 'GDHJSJFSOIOISUDHIFUSIDUFIUSHGD'),
(59, 's1', 0, 'ПРОФИЛЬ');

-- --------------------------------------------------------

--
-- Table structure for table `b_search_custom_rank`
--

CREATE TABLE `b_search_custom_rank` (
  `ID` int(11) NOT NULL,
  `APPLIED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `RANK` int(11) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `PARAM1` text COLLATE utf8_unicode_ci,
  `PARAM2` text COLLATE utf8_unicode_ci,
  `ITEM_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_search_phrase`
--

CREATE TABLE `b_search_phrase` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL,
  `PAGES` int(11) NOT NULL,
  `SESSION_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TAGS` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO` text COLLATE utf8_unicode_ci,
  `URL_TO_404` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `URL_TO_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `STAT_SESS_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_search_phrase`
--

INSERT INTO `b_search_phrase` (`ID`, `TIMESTAMP_X`, `SITE_ID`, `RESULT_COUNT`, `PAGES`, `SESSION_ID`, `PHRASE`, `TAGS`, `URL_TO`, `URL_TO_404`, `URL_TO_SITE_ID`, `STAT_SESS_ID`, `EVENT1`) VALUES
(1, '2018-02-27 13:36:31', 's1', 1, 1, '6d505705fe93eea3e52b3c0128eb9141', 'водостойкое соединение', NULL, NULL, NULL, NULL, NULL, NULL),
(2, '2018-02-27 13:39:07', 's1', 1, 1, '6d505705fe93eea3e52b3c0128eb9141', 'cергей родионов', NULL, NULL, NULL, NULL, NULL, NULL),
(3, '2018-02-27 13:39:21', 's1', 2, 1, '6d505705fe93eea3e52b3c0128eb9141', 'вы сможете организовать внутри компании коллективную работу', NULL, 'http://127.0.0.1/demo/detail.php?ID=34', 'Y', 's1', NULL, NULL),
(4, '2018-02-27 13:40:01', 's1', 1, 1, '6d505705fe93eea3e52b3c0128eb9141', 'cергей родионов, 17 апреля 2017 г., генеральный директор , ctc-медиа', NULL, NULL, NULL, NULL, NULL, NULL),
(5, '2018-02-27 13:40:45', 's1', 1, 1, '6d505705fe93eea3e52b3c0128eb9141', 'dgsdgыфаыафыа', NULL, NULL, NULL, NULL, NULL, NULL),
(6, '2018-02-27 13:41:18', 's1', 0, 1, '6d505705fe93eea3e52b3c0128eb9141', 'маркетолог', NULL, NULL, NULL, NULL, NULL, NULL),
(7, '2018-02-27 13:42:15', 's1', 1, 1, '6d505705fe93eea3e52b3c0128eb9141', 'rk-telecom', NULL, 'http://127.0.0.1/rew/34.php', 'N', 's1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_search_stem`
--

CREATE TABLE `b_search_stem` (
  `ID` int(11) NOT NULL,
  `STEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_search_stem`
--

INSERT INTO `b_search_stem` (`ID`, `STEM`) VALUES
(858, '10'),
(1046, '13500'),
(1076, '168'),
(456, '18'),
(562, '1962'),
(533, '1964'),
(345, '1992'),
(7, '1992Г'),
(39, '1993Г'),
(542, '1994'),
(66, '1998Г'),
(82, '1999Г'),
(575, '2000'),
(1052, '20000'),
(103, '2000Г'),
(111, '2002Г'),
(500, '2003'),
(125, '2003Г'),
(146, '2004Г'),
(158, '2005Г'),
(176, '2006Г'),
(186, '2007Г'),
(196, '2008Г'),
(603, '212-85-06'),
(604, '212-85-07'),
(605, '212-85-08'),
(1084, '22-45'),
(1079, '28000'),
(985, '30'),
(192, '30000'),
(1081, '35000'),
(459, '36'),
(212, '37'),
(1004, '3D-МОДЕЛ'),
(1109, '40'),
(22, '400'),
(921, '45'),
(602, '495'),
(106, '500'),
(81, '5000'),
(44, '700'),
(211, '70000М2'),
(1108, '800'),
(504, '9000'),
(1148, 'ASKDGFJAS'),
(1124, 'CTC-МЕД'),
(1110, 'CЕРГ'),
(1150, 'DFGSDGERHDWFHRTHR'),
(1156, 'DGSDGЫФАЫАФЫ'),
(1157, 'DSGSDG'),
(606, 'EMAIL'),
(608, 'EXAMPLE'),
(1154, 'GDHJSJFSOIOISUDHIFUSIDUFIUSHGD'),
(580, 'HERE'),
(607, 'INFO'),
(1149, 'KLASDFH'),
(611, 'MARKETING'),
(1147, 'NET-ДЕВЕЛОПМЕНТ'),
(614, 'PR'),
(1151, 'RETHJGFHET6ITYKE'),
(1129, 'RK-TELECOM'),
(609, 'SALES'),
(1152, 'SDFSD'),
(1153, 'SDFSDF'),
(1155, 'SDGSDG'),
(506, 'TEST'),
(579, 'TEXT'),
(819, 'АБСОЛЮТН'),
(536, 'АВИАЦИОН'),
(617, 'АВТОРИЗОВА'),
(1024, 'АВТОРСК'),
(1104, 'АДРЕС'),
(1020, 'АКСЕССУАР'),
(1019, 'АКСЕССУАРОВ'),
(1069, 'АКТИВН'),
(683, 'АЛАДДИН'),
(559, 'АЛЕКСАНДР'),
(1125, 'АН'),
(1144, 'АНАЛИЗИРОВА'),
(677, 'АНГЛИЙСК'),
(570, 'АНДР'),
(1127, 'АНДРЕ'),
(1126, 'АНДРЕЕВ'),
(581, 'АНОНС'),
(19, 'АРЕНДУЕМ'),
(578, 'АРХ'),
(517, 'АССОРТИМЕНТ'),
(679, 'АТМОСФЕР'),
(501, 'АУД'),
(935, 'АУДИТОРН'),
(49, 'БАЗ'),
(1087, 'БАЗОВ'),
(927, 'БАР'),
(926, 'БАРОВ'),
(276, 'БЕЗОПАСН'),
(437, 'БЕСЦЕН'),
(948, 'БИБЛИОТЕК'),
(195, 'БИЗНЕС'),
(1136, 'БИЗНЕС-ПРОЦЕСС'),
(1141, 'БИЗНЕС-ПРОЦЕССОВ'),
(746, 'БИЗНЕСМ'),
(745, 'БИЗНЕСМЕН'),
(744, 'БИЗНЕСМЕНОВ'),
(295, 'БЛАГОСОСТОЯН'),
(101, 'БЛИЖН'),
(827, 'БЛОК'),
(628, 'БОГАТ'),
(631, 'БОГАТСТВ'),
(56, 'БОЛ'),
(241, 'БОЛЬШ'),
(1106, 'БОТИНСК'),
(597, 'БУД'),
(388, 'БУДЕТ'),
(404, 'БУДУТ'),
(879, 'БУК'),
(1082, 'БУХГАЛТЕР'),
(1086, 'БУХГАЛТЕРСК'),
(37, 'БЫСТР'),
(863, 'ВАЖН'),
(338, 'ВАЖНОСТ'),
(576, 'ВАКАНС'),
(894, 'ВАЛЕНС'),
(371, 'ВАН'),
(419, 'ВАРИАНТ'),
(418, 'ВАРИАНТОВ'),
(959, 'ВАС'),
(40, 'ВВЕД'),
(841, 'ВЕД'),
(1094, 'ВЕДЕН'),
(117, 'ВЕДУЩ'),
(816, 'ВЕЛИКОЛЕПН'),
(474, 'ВЕР'),
(618, 'ВЕРНУТ'),
(1115, 'ВЕСТ'),
(140, 'ВЗАИМОВЫГОДН'),
(254, 'ВЗГЛЯД'),
(253, 'ВЗГЛЯДОВ'),
(324, 'ВЗЯТ'),
(660, 'ВИД'),
(1123, 'ВИДЕОКОНФЕРЕНЦ'),
(1140, 'ВИЗУАЛЬН'),
(529, 'ВИКТОР'),
(32, 'ВКЛАДЫВА'),
(1143, 'ВКЛЮЧ'),
(571, 'ВЛАДИМИРОВИЧ'),
(361, 'ВМЕСТ'),
(832, 'ВМЕСТИТЕЛЬН'),
(306, 'ВНЕДРЕН'),
(870, 'ВНЕСУТ'),
(659, 'ВНЕШН'),
(897, 'ВНИМАН'),
(983, 'ВНОС'),
(1113, 'ВНУТР'),
(550, 'ВОЗГЛАВЛЯ'),
(228, 'ВОЗМОЖН'),
(787, 'ВОЗНИКА'),
(467, 'ВОЗРАСТ'),
(466, 'ВОЗРАСТОВ'),
(795, 'ВОЙДЕТ'),
(730, 'ВОПЛОЩ'),
(342, 'ВОПРОС'),
(801, 'ВОПРОСОВ'),
(67, 'ВОРОНЕЖ'),
(538, 'ВОРОНЕЖСК'),
(794, 'ВОТ-ВОТ'),
(112, 'ВОШЛ'),
(748, 'ВПЕРЕД'),
(647, 'ВПЕЧАТЛЯЮЩ'),
(933, 'ВПИСЫВА'),
(346, 'ВРЕМ'),
(751, 'ВРЕМЕН'),
(853, 'ВРУЧН'),
(248, 'ВСЕГД'),
(292, 'ВСЕМ'),
(302, 'ВСЕХ'),
(596, 'ВСТРЕЧ'),
(944, 'ВСТРОЕН'),
(187, 'ВТОР'),
(615, 'ВХОД'),
(554, 'ВХОДЯ'),
(753, 'ВЫБОР'),
(407, 'ВЫБРА'),
(648, 'ВЫГЛЯД'),
(405, 'ВЫГЛЯДЕТ'),
(165, 'ВЫГРУЗК'),
(424, 'ВЫПОЛН'),
(323, 'ВЫПОЛНЕН'),
(760, 'ВЫПОЛНЯ'),
(166, 'ВЫПУСК'),
(62, 'ВЫПУСКА'),
(633, 'ВЫРАЖ'),
(222, 'ВЫРАЖЕН'),
(316, 'ВЫСОК'),
(465, 'ВЫСОКОКЛАССН'),
(796, 'ВЫСОКОПОСТАВЛЕН'),
(307, 'ВЫСОКОПРОИЗВОДИТЕЛЬН'),
(476, 'ВЫСОЧАЙШ'),
(86, 'ВЫСТАВОК'),
(1060, 'ВЫСШ'),
(852, 'ВЫТОЧ'),
(91, 'ВЫХОД'),
(455, 'ГАРАНТ'),
(946, 'ГАРДЕРОБН'),
(556, 'ГЕНЕРАЛЬН'),
(620, 'ГЕРЦОГ'),
(239, 'ГИБК'),
(294, 'ГИГИЕНИЧЕСК'),
(835, 'ГЛАВ'),
(353, 'ГЛАВН'),
(800, 'ГЛОБАЛЬН'),
(90, 'ГОД'),
(460, 'ГОРД'),
(697, 'ГОСТЕВ'),
(369, 'ГОСТИН'),
(539, 'ГОСУДАРСТВЕН'),
(972, 'ГОТОВ'),
(444, 'ГРАМОТН'),
(1074, 'ГРАФИК'),
(555, 'ГРУПП'),
(116, 'ДАН'),
(914, 'ДАЧ'),
(28, 'ДВАДЦА'),
(814, 'ДВП'),
(712, 'ДВУХМЕСТН'),
(629, 'ДЕКОР'),
(1018, 'ДЕКОРИРОВАН'),
(328, 'ДЕЛ'),
(899, 'ДЕЛА'),
(1036, 'ДЕЛОВ'),
(355, 'ДЕН'),
(705, 'ДЕР'),
(704, 'ДЕРЕВ'),
(25, 'ДЕРЕВООБРАБАТЫВА'),
(674, 'ДЕРЕВЯ'),
(113, 'ДЕСЯТК'),
(395, 'ДЕТАЛ'),
(368, 'ДЕТСК'),
(810, 'ДЕШЕВ'),
(553, 'ДЕЯТЕЛЬН'),
(699, 'ДЖОКОНД'),
(992, 'ДИАГНОСТИК'),
(938, 'ДИВА'),
(374, 'ДИЗАЙН'),
(381, 'ДИЗАЙН-ПРОЕКТ'),
(377, 'ДИЗАЙНЕР'),
(728, 'ДИЗАЙНЕРСК'),
(143, 'ДИЛЕРСК'),
(217, 'ДИНАМИЧН'),
(83, 'ДИПЛОМАНТ'),
(557, 'ДИРЕКТОР'),
(1130, 'ДМИТР'),
(1102, 'ДНЕ'),
(332, 'ДНЯ'),
(256, 'ДОБ'),
(890, 'ДОБАВ'),
(318, 'ДОВЕРИТЕЛЬН'),
(145, 'ДОГОВОР'),
(144, 'ДОГОВОРОВ'),
(1092, 'ДОКУМЕНТ'),
(481, 'ДОЛ'),
(934, 'ДОЛГОВЕЧН'),
(233, 'ДОЛГОСРОЧН'),
(767, 'ДОЛЖНОСТН'),
(360, 'ДОМ'),
(889, 'ДОМАШН'),
(634, 'ДОПОЛНИТЕЛЬН'),
(591, 'ДОСТАВК'),
(425, 'ДОСТАВЛ'),
(661, 'ДОСТИГНУТ'),
(225, 'ДОСТИЖЕН'),
(834, 'ДОСТОИНСТВ'),
(1051, 'ДОХОД'),
(875, 'ДРЕВЕСН'),
(490, 'ДРУГ'),
(813, 'ДСП'),
(110, 'ЕВРОПЕЙСК'),
(87, 'ЕВРОЭКСПОМЕБЕЛЬ-99'),
(251, 'ЕДИН'),
(491, 'ЕЖЕГОДН'),
(696, 'ЕЖЕДНЕВН'),
(157, 'ЕКАТЕРИНБУРГ'),
(821, 'ЕМ'),
(326, 'ЖДЕТ'),
(637, 'ЖЕЛАН'),
(911, 'ЖЕЛЕЗ'),
(1083, 'ЖЕН'),
(670, 'ЖЕСТК'),
(406, 'ЖИЗН'),
(230, 'ЖИЗНЕН'),
(1096, 'ЖУРНАЛОВ-ОРДЕР'),
(1095, 'ЖУРНАЛОВ-ОРДЕРОВ'),
(287, 'ЗАБОТ'),
(463, 'ЗАВЕДЕН'),
(147, 'ЗАВЕРШ'),
(72, 'ЗАВОЕВЫВА'),
(164, 'ЗАГРУЗК'),
(590, 'ЗАДАН'),
(243, 'ЗАДАЧ'),
(423, 'ЗАКАЗ'),
(987, 'ЗАКАЗА'),
(1044, 'ЗАКАЗОВ'),
(246, 'ЗАКАЗЧИК'),
(94, 'ЗАКЛЮЧ'),
(109, 'ЗАКЛЮЧА'),
(142, 'ЗАКЛЮЧЕН'),
(1067, 'ЗАКОНОДАТЕЛЬСТВ'),
(535, 'ЗАКОНЧ'),
(330, 'ЗАЛОГ'),
(379, 'ЗАМЕР'),
(568, 'ЗАМЕСТИТЕЛ'),
(943, 'ЗАНИМА'),
(1022, 'ЗАПРОС'),
(203, 'ЗАПУЩ'),
(30, 'ЗАРАБОТА'),
(616, 'ЗАРЕГИСТРИРОВА'),
(1045, 'ЗАРПЛАТ'),
(102, 'ЗАРУБЕЖ'),
(521, 'ЗАРУБЕЖН'),
(523, 'ЗАСЛУГ'),
(310, 'ЗАТРАТ'),
(784, 'ЗАХОД'),
(277, 'ЗАЩИТ'),
(343, 'ЗАЩИЩЕН'),
(956, 'ЗАЯВК'),
(865, 'ЗДОРОВ'),
(908, 'ЗИМ'),
(1062, 'ЗНАН'),
(758, 'ЗНАЧ'),
(63, 'ЗНАЧИТЕЛЬН'),
(636, 'ЗОЛОТ'),
(765, 'ЗОН'),
(515, 'ИГРОК'),
(514, 'ИГРОКОВ'),
(475, 'ИД'),
(953, 'ИДЕАЛЬН'),
(1001, 'ИДЕИ-ОБРАЗ'),
(680, 'ИЗАБЕЛЛ'),
(449, 'ИЗБЕЖА'),
(366, 'ИЗГОТОВ'),
(11, 'ИЗГОТОВЛЕН'),
(489, 'ИЗДЕЛ'),
(1005, 'ИЗОБРАЖЕН'),
(930, 'ИЗОПЛАСТ'),
(632, 'ИЗЫСК'),
(803, 'ИЗЫСКА'),
(621, 'ИЗЯЩН'),
(218, 'ИМЕЕТ'),
(422, 'ИМЕН'),
(197, 'ИНДИВИДУАЛЬН'),
(564, 'ИНЖЕНЕР-ТЕХНОЛОГ'),
(1068, 'ИНИЦИАТИВН'),
(541, 'ИНСТИТУТ'),
(224, 'ИНСТРУМЕНТ'),
(1138, 'ИНТЕГРИРОВА'),
(320, 'ИНТЕРЕС'),
(382, 'ИНТЕРЬЕР'),
(781, 'ИНТЕРЬЕРН'),
(454, 'ИНТЕРЬЕРОВ'),
(503, 'ИС'),
(880, 'ИСКЛЮЧЕН'),
(708, 'ИСПОЛНЕН'),
(776, 'ИСПОЛЬЗОВА'),
(439, 'ИСПОЛЬЗОВАН'),
(494, 'ИСПЫТАН'),
(6, 'ИСТОР'),
(561, 'ИЮН'),
(790, 'КАБИНЕТ'),
(227, 'КАЖД'),
(622, 'КАРКАС'),
(2, 'КАРТ'),
(769, 'КАТЕГОР'),
(888, 'КАФ'),
(61, 'КАЧЕСТВ'),
(317, 'КВАЛИФИКАЦ'),
(508, 'КВАЛИФИЦИРОВА'),
(676, 'КЛАССИЧЕСК'),
(247, 'КЛИЕНТ'),
(1039, 'КЛИЕНТОВ'),
(682, 'КОЖ'),
(528, 'КОЛЕСНИК'),
(527, 'КОЛЕСНИКОВ'),
(759, 'КОЛЛЕГ'),
(104, 'КОЛЛЕКТ'),
(1114, 'КОЛЛЕКТИВН'),
(1025, 'КОЛЛЕКЦ'),
(996, 'КОЛОРИСТК'),
(702, 'КОЛОРИТН'),
(718, 'КОМБИНАЦ'),
(1089, 'КОММУНИКАБЕЛЬН'),
(372, 'КОМНАТ'),
(950, 'КОМОД'),
(918, 'КОМПАКТН'),
(9, 'КОМПАН'),
(453, 'КОМПЛЕКСН'),
(171, 'КОМПЛЕКТ'),
(732, 'КОМПОНОВК'),
(868, 'КОМПЬЮТЕР'),
(440, 'КОМПЬЮТЕРН'),
(199, 'КОМФОРТ'),
(684, 'КОМФОРТН'),
(411, 'КОНКРЕТН'),
(750, 'КОНКУРЕНТ'),
(749, 'КОНКУРЕНТОВ'),
(1033, 'КОНСТРУКТОР'),
(952, 'КОНСТРУКЦ'),
(587, 'КОНСУЛЬТАЦ'),
(1038, 'КОНСУЛЬТИРОВАН'),
(585, 'КОНТАКТ'),
(97, 'КОНТРАКТ'),
(96, 'КОНТРАКТОВ'),
(431, 'КОНТРОЛ'),
(716, 'КОНУСН'),
(134, 'КОНФЕРЕНЦ'),
(936, 'КОНФЕРЕНЦ-КРЕСЕЛ'),
(160, 'КОНЦЕРН'),
(552, 'КООРДИНИР'),
(149, 'КОРПУС'),
(352, 'КОРПУСН'),
(190, 'КОРПУСОВ'),
(285, 'КОРРЕКТИР'),
(138, 'КОТОР'),
(804, 'КРАСОТ'),
(859, 'КРЕСЕЛ'),
(642, 'КРЕСЛ'),
(664, 'КРЕСТОВИН'),
(942, 'КРОВАТ'),
(498, 'КРОМ'),
(836, 'КРУГЛ'),
(351, 'КРУПН'),
(945, 'КУП'),
(367, 'КУХН'),
(1040, 'КУХОН'),
(496, 'ЛАБОРАТОР'),
(711, 'ЛАУР'),
(839, 'ЛЕГЕНДАРН'),
(922, 'ЛЕГК'),
(509, 'ЛЕТ'),
(673, 'ЛИВЕРПУЛ'),
(123, 'ЛИДЕР'),
(122, 'ЛИДЕРОВ'),
(512, 'ЛИДИР'),
(162, 'ЛИН'),
(260, 'ЛИЧН'),
(881, 'ЛИШ'),
(114, 'ЛУЧШ'),
(846, 'ЛЮБ'),
(23, 'М2'),
(1059, 'МАГАЗИН'),
(70, 'МАГАЗИН-САЛОН'),
(184, 'МАГАЗИНОВ-САЛОН'),
(183, 'МАГАЗИНОВ-САЛОНОВ'),
(954, 'МАКСИМАЛЬН'),
(546, 'МАЛ'),
(348, 'МАЛЕНЬК'),
(612, 'МАРКЕТИНГ'),
(1128, 'МАРКЕТОЛОГ'),
(763, 'МАСС'),
(878, 'МАССИВ'),
(685, 'МАССИВН'),
(485, 'МАССОВ'),
(20, 'МАСТЕРСК'),
(305, 'МАСТЕРСТВ'),
(131, 'МАТЕРИА'),
(130, 'МАТЕРИАЛ'),
(129, 'МАТЕРИАЛОВ'),
(298, 'МАТЕРИАЛЬН'),
(12, 'МЕБЕЛ'),
(8, 'МЕБЕЛЬН'),
(175, 'МЕБЕЛЬПЛЮС'),
(85, 'МЕЖДУНАРОДН'),
(394, 'МЕЛЬЧАЙШ'),
(502, 'МЕНЕДЖМЕНТ'),
(286, 'МЕР'),
(613, 'МЕРОПРИЯТ'),
(1078, 'МЕС'),
(291, 'МЕСТ'),
(458, 'МЕСЯЦ'),
(457, 'МЕСЯЦЕВ'),
(916, 'МЕТАЛЛИЧЕСК'),
(1064, 'МЕТОД'),
(1063, 'МЕТОДОВ'),
(694, 'МЕХАНИЗМ'),
(480, 'МИНИМАЛЬН'),
(793, 'МИНИМУМ'),
(641, 'МИНИСТР'),
(92, 'МИРОВ'),
(215, 'МИСС'),
(1134, 'МЛАДШ'),
(416, 'МНОГ'),
(441, 'МНОГОЛЕТН'),
(359, 'МОДЕЛ'),
(970, 'МОДЕЛИРОВАН'),
(722, 'МОДЕРН'),
(47, 'МОДЕРНИЗАЦ'),
(592, 'МОЖЕТ'),
(650, 'МОЖН'),
(35, 'МОЛОД'),
(469, 'МОЛОДЕЖ'),
(433, 'МОМЕНТ'),
(630, 'МОНАЛИЗ'),
(966, 'МОНТАЖ'),
(297, 'МОРАЛЬН'),
(76, 'МОСКВ'),
(242, 'МОЩНОСТ'),
(1093, 'МПЗ'),
(729, 'МЫСЛ'),
(174, 'МЯГК'),
(734, 'НАБОР'),
(1030, 'НАВЫК'),
(402, 'НАГЛЯДН'),
(237, 'НАДЕЖН'),
(420, 'НАИБОЛ'),
(743, 'НАИЛУЧШ'),
(762, 'НАЙТ'),
(978, 'НАКАНУН'),
(703, 'НАКЛАДК'),
(483, 'НАЛАЖ'),
(519, 'НАЛАЖИВА'),
(356, 'НАМ'),
(518, 'НАРАЩИВА'),
(464, 'НАС'),
(549, 'НАСТОЯ'),
(105, 'НАСЧИТЫВА'),
(1011, 'НАТУРАЛИСТИЧН'),
(167, 'НАТУРАЛЬН'),
(709, 'НАХОД'),
(567, 'НАЧАЛЬНИК'),
(10, 'НАЧИНА'),
(798, 'НАЧНЕТ'),
(321, 'НАШ'),
(1103, 'НЕДЕЛ'),
(866, 'НЕЗАМЕНИМ'),
(977, 'НЕКОТОР'),
(653, 'НЕМ'),
(735, 'НЕОБХОДИМ'),
(689, 'НЕОБЫКНОВЕН'),
(900, 'НЕОБЫЧАЙН'),
(665, 'НЕОБЫЧН'),
(365, 'НЕПОВТОРИМ'),
(974, 'НЕПОСРЕДСТВЕН'),
(644, 'НЕСМОТР'),
(375, 'НЕСТАНДАРТН'),
(178, 'НИЖН'),
(645, 'НИЗК'),
(910, 'НИХ'),
(42, 'НОВ'),
(179, 'НОВГОРОД'),
(727, 'НОВИЗН'),
(584, 'НОВОСТ'),
(828, 'НОГ'),
(823, 'НОЖК'),
(488, 'НОМЕНКЛАТУР'),
(274, 'НОРМ'),
(392, 'НЮАНС'),
(391, 'НЮАНСОВ'),
(872, 'ОБАЯН'),
(364, 'ОБЕСПЕЧ'),
(296, 'ОБЕСПЕЧЕН'),
(269, 'ОБЕСПЕЧИВА'),
(626, 'ОБИВК'),
(731, 'ОБЛИК'),
(1118, 'ОБМЕНИВА'),
(201, 'ОБНОВЛЕН'),
(1080, 'ОБОРОТ'),
(58, 'ОБОРУДОВАН'),
(976, 'ОБРАБОТК'),
(1021, 'ОБРАЗ'),
(534, 'ОБРАЗОВАН'),
(958, 'ОБРАЗЦ'),
(586, 'ОБРАТ'),
(838, 'ОБСТАНОВК'),
(799, 'ОБСУЖДЕН'),
(229, 'ОБУСТРО'),
(764, 'ОБУСТРОЙСТВ'),
(1090, 'ОБУЧАЕМ'),
(301, 'ОБУЧЕН'),
(188, 'ОБЩ'),
(1037, 'ОБЩЕН'),
(472, 'ОБЪЕДИНЯ'),
(65, 'ОБЪЕМ'),
(400, 'ОБЪЕМН'),
(768, 'ОБЯЗАН'),
(325, 'ОБЯЗАТЕЛЬСТВ'),
(965, 'ОГОВАРИВА'),
(982, 'ОГОВОР'),
(856, 'ОГРАНИЧЕН'),
(24, 'ОДН'),
(245, 'ОЖИДАН'),
(851, 'ОКАНТОВК'),
(1047, 'ОКЛАД'),
(278, 'ОКРУЖА'),
(438, 'ОП'),
(822, 'ОПИРА'),
(989, 'ОПЛАЧИВА'),
(244, 'ОПРАВДЫВА'),
(413, 'ОПРЕДЕЛЕН'),
(755, 'ОПРЕДЕЛЯ'),
(807, 'ОПРОВЕРГА'),
(752, 'ОПТИМ'),
(236, 'ОПТИМАЛЬН'),
(309, 'ОПТИМИЗАЦ'),
(452, 'ОПТИМИЗИРОВА'),
(968, 'ОПЫТН'),
(738, 'ОРГАНИЗАЦ'),
(124, 'ОРГАНИЗАЦИОН'),
(757, 'ОРГАНИЗОВА'),
(892, 'ОРГАНИЧН'),
(1013, 'ОРИГИНАЛ'),
(658, 'ОРИГИНАЛЬН'),
(410, 'ОСВЕЩЕН'),
(824, 'ОСВОБОЖД'),
(715, 'ОСН'),
(148, 'ОСНАЩЕН'),
(714, 'ОСНОВ'),
(333, 'ОСНОВАН'),
(723, 'ОСНОВН'),
(373, 'ОСОБ'),
(862, 'ОСОБЕН'),
(1041, 'ОСТАВЛЕН'),
(988, 'ОСТАЛЬН'),
(340, 'ОСТАН'),
(430, 'ОСУЩЕСТВЛЯ'),
(600, 'ОТВЕТ'),
(261, 'ОТВЕТСТВЕН'),
(979, 'ОТДЕЛ'),
(995, 'ОТДЕЛК'),
(170, 'ОТДЕЛЬН'),
(5, 'ОТЗЫВ'),
(68, 'ОТКР'),
(172, 'ОТКРЫВА'),
(155, 'ОТКРЫТ'),
(924, 'ОТЛИЧН'),
(322, 'ОТНОС'),
(141, 'ОТНОШЕН'),
(955, 'ОТОБРАЖА'),
(1099, 'ОТЧЕТ'),
(1071, 'ОТЧЕТН'),
(1098, 'ОТЧЕТОВ'),
(15, 'ОФИС'),
(651, 'ОФИСН'),
(14, 'ОФИСОВ'),
(88, 'ОФИЦИАЛЬН'),
(434, 'ОФОРМЛЕН'),
(450, 'ОШИБОК'),
(789, 'ОЩУЩЕН'),
(1055, 'ПАКЕТ'),
(885, 'ПАЛЕРМ'),
(884, 'ПАЛИТР'),
(869, 'ПАРМ'),
(857, 'ПАРТ'),
(136, 'ПАРТНЕР'),
(135, 'ПАРТНЕРОВ'),
(205, 'ПАРТНЕРСТВ'),
(16, 'ПЕРВ'),
(1091, 'ПЕРВИЧН'),
(786, 'ПЕРЕГОВОР'),
(785, 'ПЕРЕГОВОРОВ'),
(772, 'ПЕРЕГОРОДК'),
(219, 'ПЕРЕД'),
(967, 'ПЕРЕДА'),
(436, 'ПЕРЕДОВ'),
(1133, 'ПЕРЕЙТ'),
(999, 'ПЕРЕКЛЮЧЕН'),
(994, 'ПЕРЕПЛАНИРОВК'),
(997, 'ПЕРЕСТАНОВК'),
(1137, 'ПЕРЕХОД'),
(55, 'ПЕРЕШЛ'),
(754, 'ПЕРСОНА'),
(234, 'ПЕРСПЕКТИВ'),
(560, 'ПЕТРОВИЧ'),
(1029, 'ПК'),
(833, 'ПЛАВН'),
(1072, 'ПЛАН'),
(1116, 'ПЛАНИРОВАН'),
(912, 'ПЛАСТИК'),
(932, 'ПЛАСТИКОВ'),
(949, 'ПЛАТЯН'),
(719, 'ПЛОТН'),
(21, 'ПЛОЩАД'),
(860, 'ПЛУТОН'),
(59, 'ПОВЫС'),
(263, 'ПОВЫШЕН'),
(1009, 'ПОДБИРА'),
(1016, 'ПОДБОР'),
(545, 'ПОДГОТОВК'),
(524, 'ПОДГОТОВЛЕН'),
(671, 'ПОДДЕРЖИВА'),
(640, 'ПОДЛОКОТНИК'),
(666, 'ПОДЛОКОТНИКОВ'),
(77, 'ПОДМОСКОВ'),
(383, 'ПОДОБРА'),
(925, 'ПОДОЙДЕТ'),
(901, 'ПОДОЙДУТ'),
(1100, 'ПОДРАЗДЕЛЕН'),
(327, 'ПОДХОД'),
(421, 'ПОДХОДЯ'),
(962, 'ПОЖЕЛАН'),
(34, 'ПОЗВОЛ'),
(442, 'ПОЗВОЛЯ'),
(672, 'ПОЗВОНОЧНИК'),
(513, 'ПОЗИЦ'),
(1, 'ПОИСК'),
(471, 'ПОКОЛЕН'),
(588, 'ПОКУПК'),
(825, 'ПОЛЕЗН'),
(540, 'ПОЛИТЕХНИЧЕСК'),
(280, 'ПОЛИТИК'),
(940, 'ПОЛК'),
(780, 'ПОЛН'),
(213, 'ПОЛУТОР'),
(505, 'ПОЛУЧ'),
(1028, 'ПОЛЬЗОВАТЕЛ'),
(380, 'ПОМЕЩЕН'),
(386, 'ПОМОГУТ'),
(837, 'ПОМОЖЕТ'),
(599, 'ПОМОЧ'),
(649, 'ПОМОЩ'),
(337, 'ПОНИМА'),
(259, 'ПОНИМАН'),
(848, 'ПОНЯТ'),
(931, 'ПОПУЛЯРН'),
(721, 'ПОРОЛОН'),
(720, 'ПОРОЛОНОВ'),
(1121, 'ПОРТА'),
(1139, 'ПОРТАЛ'),
(1145, 'ПОСЕЩАЕМ'),
(964, 'ПОСЛ'),
(266, 'ПОСЛЕД'),
(399, 'ПОСМОТРЕТ'),
(98, 'ПОСТАВК'),
(240, 'ПОСТАВЩИК'),
(54, 'ПОСТЕПЕН'),
(264, 'ПОСТОЯ'),
(973, 'ПОСТУПА'),
(854, 'ПОТ'),
(250, 'ПОТРЕБИТЕЛ'),
(779, 'ПОТРЕБН'),
(667, 'ПОТРЯСА'),
(595, 'ПОЧТ'),
(1107, 'ПР-Д'),
(249, 'ПРАВ'),
(275, 'ПРАВИЛ'),
(756, 'ПРАВИЛЬН'),
(876, 'ПРАКТИЧЕСК'),
(473, 'ПРЕДАН'),
(1003, 'ПРЕДВАРИТЕЛЬН'),
(1007, 'ПРЕДЛАГ'),
(235, 'ПРЕДЛАГА'),
(984, 'ПРЕДОПЛАТ'),
(415, 'ПРЕДОСТАВЛ'),
(226, 'ПРЕДОСТАВЛЯ'),
(50, 'ПРЕДПРИЯТ'),
(1014, 'ПРЕДСТАВ'),
(151, 'ПРЕДСТАВИТЕЛЬСТВ'),
(681, 'ПРЕДСТАВЛ'),
(401, 'ПРЕДСТАВЛЕН'),
(791, 'ПРЕЗИДЕНТ'),
(913, 'ПРЕКРАСН'),
(1049, 'ПРЕМ'),
(792, 'ПРЕМЬЕР-МИНИСТР'),
(993, 'ПРЕОБРАЗОВАН'),
(706, 'ПРЕСТИЖ'),
(84, 'ПРЕСТИЖН'),
(268, 'ПРИБ'),
(331, 'ПРИБЫЛЬН'),
(1085, 'ПРИВЕТСВ'),
(896, 'ПРИВЛЕКА'),
(806, 'ПРИВЛЕКАТЕЛЬН'),
(313, 'ПРИВЛЕЧЕН'),
(747, 'ПРИВЫКЛ'),
(688, 'ПРИДА'),
(957, 'ПРИЕЗЖА'),
(435, 'ПРИЕМ'),
(89, 'ПРИЗНАН'),
(479, 'ПРИМЕНЕН'),
(341, 'ПРИМЕР'),
(657, 'ПРИМЕЧАТЕЛЬН'),
(207, 'ПРИНЯТ'),
(159, 'ПРИОБРЕТА'),
(610, 'ПРИОБРЕТЕН'),
(905, 'ПРИРОДН'),
(766, 'ПРИСПОСОБ'),
(778, 'ПРИСПОСОБЛЕН'),
(126, 'ПРИСТУП'),
(947, 'ПРИХОЖ'),
(133, 'ПРОВЕД'),
(1002, 'ПРОВЕДЕН'),
(1122, 'ПРОВОД'),
(544, 'ПРОГРАММ'),
(1146, 'ПРОГРАММИСТ'),
(1026, 'ПРОДАВЕЦ-ДИЗАЙНЕР'),
(1048, 'ПРОДАЖ'),
(403, 'ПРОДЕМОНСТРИР'),
(200, 'ПРОДОЛЖА'),
(4, 'ПРОДУКЦ'),
(198, 'ПРОЕКТ'),
(451, 'ПРОЕКТИРОВАН'),
(1043, 'ПРОЕКТОВ'),
(960, 'ПРОИЗВЕДЕТ'),
(378, 'ПРОИЗВЕДУТ'),
(443, 'ПРОИЗВЕСТ'),
(855, 'ПРОИЗВОД'),
(272, 'ПРОИЗВОДИМ'),
(115, 'ПРОИЗВОДИТЕЛ'),
(308, 'ПРОИЗВОДИТЕЛЬН'),
(189, 'ПРОИЗВОДСВЕННО-СКЛАДСК'),
(17, 'ПРОИЗВОДСТВ'),
(48, 'ПРОИЗВОДСТВЕН'),
(812, 'ПРОИСХОД'),
(393, 'ПРОРИСОВК'),
(842, 'ПРОСТ'),
(638, 'ПРОСТЕЖК'),
(232, 'ПРОСТРАНСТВ'),
(304, 'ПРОФЕССИОНАЛЬН'),
(1158, 'ПРОФИЛ'),
(492, 'ПРОХОД'),
(484, 'ПРОЦЕСС'),
(939, 'ПРОЧ'),
(923, 'ПРОЧН'),
(461, 'ПРОШЕДШ'),
(543, 'ПРОШЕЛ'),
(347, 'ПРОШЛ'),
(717, 'ПРУЖИН'),
(262, 'ПУТ'),
(1132, 'ПЯЛ'),
(1131, 'ПЯЛОВ'),
(358, 'ПЯТИСОТ'),
(255, 'РАБОТ'),
(27, 'РАБОТА'),
(258, 'РАБОТНИК'),
(257, 'РАБОТНИКОВ'),
(864, 'РАБОТОСПОСОБН'),
(231, 'РАБОЧ'),
(598, 'РАД'),
(572, 'РАДИОТЕХНИК'),
(180, 'РАЗВИВА'),
(33, 'РАЗВИТ'),
(417, 'РАЗЛИЧН'),
(376, 'РАЗМЕР'),
(409, 'РАЗН'),
(929, 'РАЗНООБРАЗН'),
(357, 'РАЗРАБОТА'),
(589, 'РАЗРАБОТК'),
(698, 'РАСКЛАДУШК'),
(975, 'РАСКР'),
(163, 'РАСКРО'),
(635, 'РАСПИСЫВА'),
(18, 'РАСПОЛАГА'),
(387, 'РАСПОЛОЖ'),
(414, 'РАСПОРЯЖЕН'),
(1015, 'РАССМОТРЕТ'),
(1017, 'РАССТАНОВК'),
(36, 'РАСТ'),
(447, 'РАСХОД'),
(445, 'РАСЧЕТ'),
(971, 'РАСЧЕТОВ'),
(150, 'РАСШИР'),
(516, 'РАСШИРЯ'),
(558, 'РАТЧЕНК'),
(775, 'РАЦИОНАЛЬН'),
(73, 'РЕГИОН'),
(156, 'РЕГИОНАЛЬН'),
(336, 'РЕГИОНОВ'),
(1135, 'РЕДАКЦ'),
(1000, 'РЕЖИМ'),
(137, 'РЕЗУЛЬТАТ'),
(267, 'РЕИНВЕСТИРОВАН'),
(845, 'РЕША'),
(208, 'РЕШЕН'),
(569, 'РОГОВ'),
(531, 'РОД'),
(1112, 'РОДИОН'),
(1111, 'РОДИОНОВ'),
(1061, 'РОЗНИЦ'),
(181, 'РОЗНИЧН'),
(692, 'РОСКОШ'),
(624, 'РОСКОШН'),
(623, 'РОСПИС'),
(80, 'РОСС'),
(152, 'РОССИЙСК'),
(335, 'РОСТ'),
(1053, 'РУБ'),
(154, 'РУБЕЖ'),
(1032, 'РУК'),
(643, 'РУКОВОДИТЕЛ'),
(507, 'РУКОВОДСТВ'),
(525, 'РУКОВОДЯ'),
(482, 'РУЧН'),
(1058, 'РФ'),
(153, 'РЫНК'),
(93, 'РЫНОК'),
(95, 'РЯД'),
(3, 'САЙТ'),
(119, 'САЛОН'),
(118, 'САЛОНОВ'),
(1088, 'САМОСТОЯТЕЛЬН'),
(293, 'САНИТАРН'),
(177, 'САНКТ-ПЕТЕРБУРГ'),
(428, 'СБОРК'),
(737, 'СВЕЖ'),
(283, 'СВОЕВРЕМЕН'),
(981, 'СВЯЖУТ'),
(520, 'СВЯЗ'),
(412, 'СДЕЛА'),
(448, 'СЕБЕСТОИМ'),
(79, 'СЕВЕРО-ЗАПАД'),
(206, 'СЕГОДН'),
(354, 'СЕГОДНЯШН'),
(532, 'СЕНТЯБР'),
(725, 'СЕР'),
(565, 'СЕРГ'),
(497, 'СЕРТИФИКАТ'),
(493, 'СЕРТИФИКАЦИОН'),
(182, 'СЕТ'),
(74, 'СИБИР'),
(882, 'СИДЕН'),
(909, 'СИДЕТ'),
(820, 'СИММЕТРИЧ'),
(252, 'СИСТ'),
(282, 'СИСТЕМ'),
(300, 'СИСТЕМАТИЧЕСК'),
(826, 'СИСТЕМН'),
(928, 'СИТ'),
(128, 'СКЛАД'),
(903, 'СКЛАДН'),
(209, 'СКЛАДСК'),
(710, 'СЛЕВ'),
(919, 'СЛОЖ'),
(951, 'СЛОЖН'),
(830, 'СЛУЖ'),
(398, 'СМОЖЕТ'),
(100, 'СНГ'),
(311, 'СНИЖЕН'),
(446, 'СНИЗ'),
(319, 'СО'),
(220, 'СОБ'),
(783, 'СОБРАН'),
(46, 'СОБСТВЕН'),
(526, 'СОБСТВЕННИК'),
(1117, 'СОБЫТ'),
(57, 'СОВЕРШЕН'),
(281, 'СОВЕРШЕНСТВОВАН'),
(850, 'СОВЕСТ'),
(840, 'СОВЕЩАТЕЛЬН'),
(396, 'СОВМЕСТН'),
(1050, 'СОВОКУПН'),
(782, 'СОВРЕМЕН'),
(1056, 'СОГЛАСН'),
(847, 'СОГЛАСУ'),
(334, 'СОДЕЙСТВ'),
(389, 'СОЗДА'),
(288, 'СОЗДАН'),
(742, 'СОЗДАСТ'),
(893, 'СОЛЬЮТ'),
(1119, 'СООБЩЕН'),
(271, 'СООТВЕТСТВ'),
(210, 'СОСТАВ'),
(191, 'СОСТАВЛЯ'),
(108, 'СОТРУДНИК'),
(107, 'СОТРУДНИКОВ'),
(582, 'СОТРУДНИЧЕСТВ'),
(713, 'СОФ'),
(510, 'СОХРАН'),
(815, 'СОХРАНЯ'),
(1054, 'СОЦ'),
(339, 'СОЦИАЛЬН'),
(733, 'СОЧЕТА'),
(739, 'СОЧЕТАН'),
(370, 'СПАЛЬН'),
(991, 'СПЕКТР'),
(495, 'СПЕЦИАЛИЗИРОВА'),
(315, 'СПЕЦИАЛИСТ'),
(314, 'СПЕЦИАЛИСТОВ'),
(563, 'СПЕЦИАЛЬН'),
(639, 'СПИНК'),
(1142, 'СПИСК'),
(829, 'СПРАВ'),
(895, 'СРАЗ'),
(279, 'СРЕД'),
(547, 'СРЕДН'),
(31, 'СРЕДСТВ'),
(427, 'СРОК'),
(45, 'СТАВШ'),
(51, 'СТАЛ'),
(477, 'СТАНДАРТ'),
(26, 'СТАНК'),
(470, 'СТАРШ'),
(583, 'СТАТ'),
(522, 'СТЕПЕН'),
(678, 'СТИЛ'),
(818, 'СТИЛЬН'),
(646, 'СТОИМОСТ'),
(788, 'СТОЙК'),
(771, 'СТОЛ'),
(805, 'СТОЛОВ'),
(487, 'СТОРОН'),
(99, 'СТРАН'),
(619, 'СТРАНИЦ'),
(216, 'СТРАТЕГ'),
(363, 'СТРЕМ'),
(270, 'СТРОГ'),
(127, 'СТРОИТЕЛЬСТВ'),
(687, 'СТРОЧК'),
(675, 'СТУЛ'),
(887, 'СТУЛЬЕВ'),
(986, 'СУММ'),
(344, 'СУЩЕСТВ'),
(1034, 'СФЕР'),
(1012, 'СХОЖЕСТ'),
(662, 'СЧЕТ'),
(906, 'СЧИТА'),
(548, 'США'),
(120, 'ТАКЖ'),
(707, 'ТАХТ'),
(669, 'ТВЕРД'),
(397, 'ТВОРЧЕСТВ'),
(593, 'ТЕЛЕФОН'),
(362, 'ТЕМ'),
(38, 'ТЕМП'),
(907, 'ТЕПЛ'),
(185, 'ТЕРРИТОР'),
(867, 'ТЕХ'),
(573, 'ТЕХНИЧЕСК'),
(193, 'ТЕХНОЛОГ'),
(238, 'ТЕХНОЛОГИЧН'),
(1057, 'ТК'),
(625, 'ТКАН'),
(499, 'ТОГ'),
(652, 'ТОМ'),
(883, 'ТОНИРОВК'),
(349, 'ТОРГОВ'),
(426, 'ТОЧН'),
(384, 'ТОЧНОСТ'),
(53, 'ТРАДИЦ'),
(980, 'ТРАНСПОРТН'),
(695, 'ТРАНСФОРМАЦ'),
(273, 'ТРЕБОВАН'),
(329, 'ТРЕБОВАТЕЛЬН'),
(204, 'ТРЕТ'),
(969, 'ТРЕХМЕРН'),
(843, 'ТРОН'),
(290, 'ТРУД'),
(1066, 'ТРУДОВ'),
(1073, 'ТРУДОУСТРОЙСТВ'),
(774, 'ТУМБ'),
(214, 'ТЫСЯЧ'),
(64, 'УВЕЛИЧ'),
(265, 'УВЕЛИЧИВА'),
(1027, 'УВЕРЕН'),
(161, 'УГЛОВ'),
(740, 'УДАЧН'),
(802, 'УДИВИТЕЛЬН'),
(917, 'УДОБ'),
(831, 'УДОБН'),
(299, 'УДОВЛЕТВОРЕН'),
(1101, 'УКАЗАН'),
(202, 'УКОМПЛЕКТОВА'),
(701, 'УКРАШЕН'),
(139, 'УКРЕПЛЕН'),
(811, 'УМЕНЬШЕН'),
(886, 'УНИВЕРСАЛЬН'),
(574, 'УНИВЕРСИТЕТ'),
(777, 'УНИКАЛЬН'),
(1065, 'УПРАВЛЕН'),
(844, 'УПРАВЛЕНЦ'),
(551, 'УПРАВЛЯ'),
(511, 'УПРОЧ'),
(75, 'УРА'),
(60, 'УРОВЕН'),
(303, 'УРОВН'),
(289, 'УСЛОВ'),
(577, 'УСЛУГ'),
(478, 'УСПЕХ'),
(194, 'УСПЕШН'),
(655, 'УСТАЛ'),
(693, 'УСТАНОВ'),
(429, 'УСТАНОВК'),
(808, 'УСТОЯ'),
(809, 'УТВЕРЖДЕН'),
(462, 'УЧЕБН'),
(390, 'УЧЕТ'),
(961, 'УЧИТЫВ'),
(891, 'УЮТ'),
(871, 'УЮТН'),
(173, 'ФАБРИК'),
(902, 'ФАЗЕНД'),
(601, 'ФАКС'),
(1006, 'ФАКТУР'),
(537, 'ФАКУЛЬТЕТ'),
(530, 'ФЕДОРОВИЧ'),
(861, 'ФИЗИОЛОГИЧЕСК'),
(132, 'ФИЛИА'),
(1070, 'ФИНАНСОВО-ХОЗЯЙСТВЕН'),
(350, 'ФИРМ'),
(69, 'ФИРМЕН'),
(700, 'ФЛОР'),
(566, 'ФОМИЧ'),
(898, 'ФОРМ'),
(169, 'ФОРМИР'),
(1097, 'ФОРМИРОВАН'),
(761, 'ФУНКЦ'),
(998, 'ФУНКЦИОНАЛЬН'),
(486, 'ХАРАКТЕР'),
(724, 'ХАРАКТЕРИСТИК'),
(904, 'ХЛОПК'),
(52, 'ХОРОШ'),
(937, 'ХРАН'),
(920, 'ХРАНЕН'),
(656, 'ХРОМ'),
(663, 'ХРОМИРОВА'),
(1042, 'ХУДОЖЕСТВЕННО-КОНСТРУКТОРСК'),
(385, 'ЦВЕТ'),
(1010, 'ЦВЕТН'),
(741, 'ЦВЕТОВ'),
(223, 'ЦЕЛ'),
(877, 'ЦЕЛИК'),
(312, 'ЦЕН'),
(43, 'ЦЕХ'),
(1077, 'ЧАС'),
(29, 'ЧЕЛОВЕК'),
(1075, 'ЧЕР'),
(1120, 'ЧЕРЕЗ'),
(1031, 'ЧЕРЧЕН'),
(849, 'ЧЕСТ'),
(797, 'ЧИНОВНИК'),
(121, 'ЧИСЛ'),
(874, 'ЧИСТ'),
(654, 'ЧУВСТВУ'),
(71, 'ШАГ'),
(690, 'ШАРМ'),
(1105, 'ШАТУР'),
(990, 'ШИРОК'),
(773, 'ШКАФ'),
(13, 'ШКОЛ'),
(168, 'ШПОН'),
(873, 'ЭКОЛОГИЧЕСК'),
(1023, 'ЭКСКЛЮЗИВН'),
(1008, 'ЭКСПЕРИМЕНТИРОВА'),
(41, 'ЭКСПЛУАТАЦ'),
(817, 'ЭКСПЛУАТАЦИОН'),
(691, 'ЭЛЕГАНТН'),
(594, 'ЭЛЕКТРОН'),
(408, 'ЭЛЕМЕНТ'),
(736, 'ЭЛЕМЕНТОВ'),
(686, 'ЭЛИТН'),
(468, 'ЭНТУЗИАЗМ'),
(915, 'ЭР'),
(668, 'ЭРГОНОМИК'),
(770, 'ЭРГОНОМИЧН'),
(963, 'ЭСКИЗН'),
(432, 'ЭТАП'),
(1035, 'ЭТИК'),
(284, 'ЭФФЕКТИВН'),
(78, 'ЮГ'),
(726, 'ЯВЛЯ'),
(627, 'ЯРК'),
(221, 'ЯСН'),
(941, 'ЯЩИК');

-- --------------------------------------------------------

--
-- Table structure for table `b_search_suggest`
--

CREATE TABLE `b_search_suggest` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `FILTER_MD5` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `PHRASE` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `RATE` float NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `RESULT_COUNT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_search_tags`
--

CREATE TABLE `b_search_tags` (
  `SEARCH_CONTENT_ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci DELAY_KEY_WRITE=1;

-- --------------------------------------------------------

--
-- Table structure for table `b_search_user_right`
--

CREATE TABLE `b_search_user_right` (
  `USER_ID` int(11) NOT NULL,
  `GROUP_CODE` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_filter_mask`
--

CREATE TABLE `b_sec_filter_mask` (
  `ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '10',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FILTER_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_frame_mask`
--

CREATE TABLE `b_sec_frame_mask` (
  `ID` int(11) NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '10',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FRAME_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_iprule`
--

CREATE TABLE `b_sec_iprule` (
  `ID` int(11) NOT NULL,
  `RULE_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'M',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `ADMIN_SECTION` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `ACTIVE_FROM` datetime DEFAULT NULL,
  `ACTIVE_FROM_TIMESTAMP` int(11) DEFAULT NULL,
  `ACTIVE_TO` datetime DEFAULT NULL,
  `ACTIVE_TO_TIMESTAMP` int(11) DEFAULT NULL,
  `NAME` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_iprule_excl_ip`
--

CREATE TABLE `b_sec_iprule_excl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_iprule_excl_mask`
--

CREATE TABLE `b_sec_iprule_excl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_iprule_incl_ip`
--

CREATE TABLE `b_sec_iprule_incl_ip` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_IP` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `IP_START` bigint(18) DEFAULT NULL,
  `IP_END` bigint(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_iprule_incl_mask`
--

CREATE TABLE `b_sec_iprule_incl_mask` (
  `IPRULE_ID` int(11) NOT NULL,
  `RULE_MASK` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `LIKE_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PREG_MASK` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_recovery_codes`
--

CREATE TABLE `b_sec_recovery_codes` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CODE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `USED` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `USING_DATE` datetime DEFAULT NULL,
  `USING_IP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_redirect_url`
--

CREATE TABLE `b_sec_redirect_url` (
  `IS_SYSTEM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `URL` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETER_NAME` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_sec_redirect_url`
--

INSERT INTO `b_sec_redirect_url` (`IS_SYSTEM`, `SORT`, `URL`, `PARAMETER_NAME`) VALUES
('Y', 10, '/bitrix/redirect.php', 'goto'),
('Y', 20, '/bitrix/rk.php', 'goto'),
('Y', 30, '/bitrix/click.php', 'goto');

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_session`
--

CREATE TABLE `b_sec_session` (
  `SESSION_ID` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SESSION_DATA` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_user`
--

CREATE TABLE `b_sec_user` (
  `USER_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SECRET` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TYPE` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `ATTEMPTS` int(18) DEFAULT NULL,
  `INITIAL_DATE` datetime DEFAULT NULL,
  `SKIP_MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DEACTIVATE_UNTIL` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_virus`
--

CREATE TABLE `b_sec_virus` (
  `ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `INFO` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sec_white_list`
--

CREATE TABLE `b_sec_white_list` (
  `ID` int(11) NOT NULL,
  `WHITE_SUBSTR` varchar(250) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_security_sitecheck`
--

CREATE TABLE `b_security_sitecheck` (
  `ID` int(11) NOT NULL,
  `TEST_DATE` datetime DEFAULT NULL,
  `RESULTS` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_adv_autolog`
--

CREATE TABLE `b_seo_adv_autolog` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `CAMPAIGN_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `BANNER_XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CAUSE_CODE` int(11) DEFAULT '0',
  `SUCCESS` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_adv_banner`
--

CREATE TABLE `b_seo_adv_banner` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `GROUP_ID` int(11) DEFAULT NULL,
  `AUTO_QUANTITY_OFF` char(1) COLLATE utf8_unicode_ci DEFAULT 'N',
  `AUTO_QUANTITY_ON` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_adv_campaign`
--

CREATE TABLE `b_seo_adv_campaign` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_adv_group`
--

CREATE TABLE `b_seo_adv_group` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `CAMPAIGN_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_adv_link`
--

CREATE TABLE `b_seo_adv_link` (
  `LINK_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_ID` int(18) NOT NULL,
  `BANNER_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_adv_log`
--

CREATE TABLE `b_seo_adv_log` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `REQUEST_URI` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `REQUEST_DATA` text COLLATE utf8_unicode_ci,
  `RESPONSE_TIME` float NOT NULL,
  `RESPONSE_STATUS` int(5) DEFAULT NULL,
  `RESPONSE_DATA` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_adv_order`
--

CREATE TABLE `b_seo_adv_order` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `ORDER_ID` int(11) NOT NULL,
  `SUM` float DEFAULT '0',
  `PROCESSED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_adv_region`
--

CREATE TABLE `b_seo_adv_region` (
  `ID` int(11) NOT NULL,
  `ENGINE_ID` int(11) NOT NULL,
  `OWNER_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `OWNER_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `LAST_UPDATE` timestamp NULL DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci,
  `PARENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_keywords`
--

CREATE TABLE `b_seo_keywords` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `KEYWORDS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_search_engine`
--

CREATE TABLE `b_seo_search_engine` (
  `ID` int(11) NOT NULL,
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SORT` int(5) DEFAULT '100',
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CLIENT_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLIENT_SECRET` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REDIRECT_URI` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_seo_search_engine`
--

INSERT INTO `b_seo_search_engine` (`ID`, `CODE`, `ACTIVE`, `SORT`, `NAME`, `CLIENT_ID`, `CLIENT_SECRET`, `REDIRECT_URI`, `SETTINGS`) VALUES
(1, 'google', 'Y', 200, 'Google', '868942902147-qrrd6ce1ajfkpse8ieq4gkpdeanvtnno.apps.googleusercontent.com', 'EItMlJpZLC2WRPKB6QsA5bV9', 'urn:ietf:wg:oauth:2.0:oob', NULL),
(2, 'yandex', 'Y', 300, 'Yandex', 'f848c7bfc1d34a94ba6d05439f81bbd7', 'da0e73b2d9cc4e809f3170e49cb9df01', 'https://oauth.yandex.ru/verification_code', NULL),
(3, 'yandex_direct', 'Y', 400, 'Yandex.Direct', '', '', 'https://oauth.yandex.ru/verification_code', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_service_log`
--

CREATE TABLE `b_seo_service_log` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `CODE` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `GROUP_ID` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_service_rtg_queue`
--

CREATE TABLE `b_seo_service_rtg_queue` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ACCOUNT_ID` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `AUDIENCE_ID` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `CONTACT_TYPE` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ACTION` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_AUTO_REMOVE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_service_webhook`
--

CREATE TABLE `b_seo_service_webhook` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime DEFAULT NULL,
  `TYPE` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `EXTERNAL_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SECURITY_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_sitemap`
--

CREATE TABLE `b_seo_sitemap` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `DATE_RUN` datetime DEFAULT NULL,
  `SETTINGS` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_sitemap_entity`
--

CREATE TABLE `b_seo_sitemap_entity` (
  `ID` int(11) NOT NULL,
  `ENTITY_TYPE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_sitemap_iblock`
--

CREATE TABLE `b_seo_sitemap_iblock` (
  `ID` int(11) NOT NULL,
  `IBLOCK_ID` int(11) NOT NULL,
  `SITEMAP_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_sitemap_runtime`
--

CREATE TABLE `b_seo_sitemap_runtime` (
  `ID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `PROCESSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `ITEM_PATH` varchar(700) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'D',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `ACTIVE_ELEMENT` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_seo_yandex_direct_stat`
--

CREATE TABLE `b_seo_yandex_direct_stat` (
  `ID` int(18) NOT NULL,
  `CAMPAIGN_ID` int(11) NOT NULL,
  `BANNER_ID` int(11) NOT NULL,
  `DATE_DAY` date NOT NULL,
  `CURRENCY` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SUM` float DEFAULT '0',
  `SUM_SEARCH` float DEFAULT '0',
  `SUM_CONTEXT` float DEFAULT '0',
  `CLICKS` int(7) DEFAULT '0',
  `CLICKS_SEARCH` int(7) DEFAULT '0',
  `CLICKS_CONTEXT` int(7) DEFAULT '0',
  `SHOWS` int(7) DEFAULT '0',
  `SHOWS_SEARCH` int(7) DEFAULT '0',
  `SHOWS_CONTEXT` int(7) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_short_uri`
--

CREATE TABLE `b_short_uri` (
  `ID` int(18) NOT NULL,
  `URI` varchar(2000) COLLATE utf8_unicode_ci NOT NULL,
  `URI_CRC` int(18) NOT NULL,
  `SHORT_URI` varbinary(250) NOT NULL,
  `SHORT_URI_CRC` int(18) NOT NULL,
  `STATUS` int(18) NOT NULL DEFAULT '301',
  `MODIFIED` datetime NOT NULL,
  `LAST_USED` datetime DEFAULT NULL,
  `NUMBER_USED` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_site_template`
--

CREATE TABLE `b_site_template` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `CONDITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) NOT NULL DEFAULT '500',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_site_template`
--

INSERT INTO `b_site_template` (`ID`, `SITE_ID`, `CONDITION`, `SORT`, `TEMPLATE`) VALUES
(4, 's1', 'CSite::InDir(\'/services/\')', 150, 'furniture_pale-blue'),
(5, 's1', '', 151, 'exam1');

-- --------------------------------------------------------

--
-- Table structure for table `b_smile`
--

CREATE TABLE `b_smile` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SET_ID` int(18) NOT NULL DEFAULT '0',
  `SORT` int(10) NOT NULL DEFAULT '150',
  `TYPING` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CLICKABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IMAGE_DEFINITION` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'SD',
  `IMAGE_WIDTH` int(11) NOT NULL DEFAULT '0',
  `IMAGE_HEIGHT` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_smile`
--

INSERT INTO `b_smile` (`ID`, `TYPE`, `SET_ID`, `SORT`, `TYPING`, `CLICKABLE`, `HIDDEN`, `IMAGE`, `IMAGE_DEFINITION`, `IMAGE_WIDTH`, `IMAGE_HEIGHT`) VALUES
(1, 'S', 2, 100, ':) :-)', 'Y', 'N', 'bx_smile_smile.png', 'UHD', 20, 20),
(2, 'S', 2, 105, ';) ;-)', 'Y', 'N', 'bx_smile_wink.png', 'UHD', 20, 20),
(3, 'S', 2, 110, ':D :-D', 'Y', 'N', 'bx_smile_biggrin.png', 'UHD', 20, 20),
(4, 'S', 2, 115, '8) 8-)', 'Y', 'N', 'bx_smile_cool.png', 'UHD', 20, 20),
(5, 'S', 2, 120, ':facepalm:', 'Y', 'N', 'bx_smile_facepalm.png', 'UHD', 20, 20),
(6, 'S', 2, 125, ':{} :-{}', 'Y', 'N', 'bx_smile_kiss.png', 'UHD', 20, 20),
(7, 'S', 2, 130, ':( :-(', 'Y', 'N', 'bx_smile_sad.png', 'UHD', 20, 20),
(8, 'S', 2, 135, ':| :-|', 'Y', 'N', 'bx_smile_neutral.png', 'UHD', 20, 20),
(9, 'S', 2, 140, ':oops:', 'Y', 'N', 'bx_smile_redface.png', 'UHD', 20, 20),
(10, 'S', 2, 145, ':cry: :~(', 'Y', 'N', 'bx_smile_cry.png', 'UHD', 20, 20),
(11, 'S', 2, 150, ':evil: >:-<', 'Y', 'N', 'bx_smile_evil.png', 'UHD', 20, 20),
(12, 'S', 2, 155, ':o :-o :shock:', 'Y', 'N', 'bx_smile_eek.png', 'UHD', 20, 20),
(13, 'S', 2, 160, ':/ :-/', 'Y', 'N', 'bx_smile_confuse.png', 'UHD', 20, 20),
(14, 'S', 2, 165, ':idea:', 'Y', 'N', 'bx_smile_idea.png', 'UHD', 20, 20),
(15, 'S', 2, 170, ':?:', 'Y', 'N', 'bx_smile_question.png', 'UHD', 20, 20),
(16, 'S', 2, 175, ':!:', 'Y', 'N', 'bx_smile_exclaim.png', 'UHD', 20, 20),
(17, 'S', 2, 180, ':like:', 'Y', 'N', 'bx_smile_like.png', 'UHD', 20, 20),
(18, 'I', 2, 175, 'ICON_NOTE', 'Y', 'N', 'bx_icon_1.gif', 'SD', 15, 15),
(19, 'I', 2, 180, 'ICON_DIRRECTION', 'Y', 'N', 'bx_icon_2.gif', 'SD', 15, 15),
(20, 'I', 2, 185, 'ICON_IDEA', 'Y', 'N', 'bx_icon_3.gif', 'SD', 15, 15),
(21, 'I', 2, 190, 'ICON_ATTANSION', 'Y', 'N', 'bx_icon_4.gif', 'SD', 15, 15),
(22, 'I', 2, 195, 'ICON_QUESTION', 'Y', 'N', 'bx_icon_5.gif', 'SD', 15, 15),
(23, 'I', 2, 200, 'ICON_BAD', 'Y', 'N', 'bx_icon_6.gif', 'SD', 15, 15),
(24, 'I', 2, 205, 'ICON_GOOD', 'Y', 'N', 'bx_icon_7.gif', 'SD', 15, 15);

-- --------------------------------------------------------

--
-- Table structure for table `b_smile_lang`
--

CREATE TABLE `b_smile_lang` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `SID` int(11) NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_smile_lang`
--

INSERT INTO `b_smile_lang` (`ID`, `TYPE`, `SID`, `LID`, `NAME`) VALUES
(1, 'P', 1, 'ru', 'Стандартная галерея'),
(2, 'P', 1, 'en', 'Standard gallery'),
(3, 'G', 2, 'ru', 'Основной набор'),
(4, 'G', 2, 'en', 'Default pack'),
(5, 'S', 1, 'ru', 'С улыбкой'),
(6, 'S', 1, 'en', 'Smile'),
(7, 'S', 2, 'ru', 'Шутливо'),
(8, 'S', 2, 'en', 'Wink'),
(9, 'S', 3, 'ru', 'Широкая улыбка'),
(10, 'S', 3, 'en', 'Big grin'),
(11, 'S', 4, 'ru', 'Здорово'),
(12, 'S', 4, 'en', 'Cool'),
(13, 'S', 5, 'ru', 'Разочарование'),
(14, 'S', 5, 'en', 'Facepalm'),
(15, 'S', 6, 'ru', 'Поцелуй'),
(16, 'S', 6, 'en', 'Kiss'),
(17, 'S', 7, 'ru', 'Печально'),
(18, 'S', 7, 'en', 'Sad'),
(19, 'S', 8, 'ru', 'Скептически'),
(20, 'S', 8, 'en', 'Skeptic'),
(21, 'S', 9, 'ru', 'Смущенный'),
(22, 'S', 9, 'en', 'Embarrassed'),
(23, 'S', 10, 'ru', 'Очень грустно'),
(24, 'S', 10, 'en', 'Crying'),
(25, 'S', 11, 'ru', 'Со злостью'),
(26, 'S', 11, 'en', 'Angry'),
(27, 'S', 12, 'ru', 'Удивленно'),
(28, 'S', 12, 'en', 'Surprised'),
(29, 'S', 13, 'ru', 'Смущенно'),
(30, 'S', 13, 'en', 'Confused'),
(31, 'S', 14, 'ru', 'Идея'),
(32, 'S', 14, 'en', 'Idea'),
(33, 'S', 15, 'ru', 'Вопрос'),
(34, 'S', 15, 'en', 'Question'),
(35, 'S', 16, 'ru', 'Восклицание'),
(36, 'S', 16, 'en', 'Exclamation'),
(37, 'S', 17, 'ru', 'Нравится'),
(38, 'S', 17, 'en', 'Like');

-- --------------------------------------------------------

--
-- Table structure for table `b_smile_set`
--

CREATE TABLE `b_smile_set` (
  `ID` int(18) NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'G',
  `PARENT_ID` int(18) NOT NULL DEFAULT '0',
  `STRING_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(10) NOT NULL DEFAULT '150'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_smile_set`
--

INSERT INTO `b_smile_set` (`ID`, `TYPE`, `PARENT_ID`, `STRING_ID`, `SORT`) VALUES
(1, 'P', 0, 'bitrix', 150),
(2, 'G', 1, 'bitrix_main', 150);

-- --------------------------------------------------------

--
-- Table structure for table `b_socialservices_ap`
--

CREATE TABLE `b_socialservices_ap` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `DOMAIN` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ENDPOINT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `SETTINGS` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_socialservices_contact`
--

CREATE TABLE `b_socialservices_contact` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_ID` int(11) NOT NULL,
  `CONTACT_USER_ID` int(11) DEFAULT NULL,
  `CONTACT_XML_ID` int(11) DEFAULT NULL,
  `CONTACT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTACT_PHOTO` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_AUTHORIZE` datetime DEFAULT NULL,
  `NOTIFY` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_socialservices_contact_connect`
--

CREATE TABLE `b_socialservices_contact_connect` (
  `ID` int(11) NOT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `CONTACT_ID` int(11) DEFAULT NULL,
  `LINK_ID` int(11) DEFAULT NULL,
  `CONTACT_PROFILE_ID` int(11) NOT NULL,
  `CONTACT_PORTAL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONNECT_TYPE` char(1) COLLATE utf8_unicode_ci DEFAULT 'P',
  `LAST_AUTHORIZE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_socialservices_message`
--

CREATE TABLE `b_socialservices_message` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `PROVIDER` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MESSAGE` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INSERT_DATE` datetime DEFAULT NULL,
  `SUCCES_SENT` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_socialservices_user`
--

CREATE TABLE `b_socialservices_user` (
  `ID` int(11) NOT NULL,
  `LOGIN` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(11) DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `XML_ID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `CAN_DELETE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `PERSONAL_WWW` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERMISSIONS` varchar(555) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN` varchar(3000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `OATOKEN_EXPIRES` int(11) DEFAULT NULL,
  `OASECRET` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `REFRESH_TOKEN` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEND_ACTIVITY` char(1) COLLATE utf8_unicode_ci DEFAULT 'Y',
  `SITE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `INITIALIZED` char(1) COLLATE utf8_unicode_ci DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_socialservices_user_link`
--

CREATE TABLE `b_socialservices_user_link` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SOCSERV_USER_ID` int(11) NOT NULL,
  `LINK_USER_ID` int(11) DEFAULT NULL,
  `LINK_UID` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LINK_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_LAST_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_PICTURE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LINK_EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sticker`
--

CREATE TABLE `b_sticker` (
  `ID` int(11) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PAGE_URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `PAGE_TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DATE_CREATE` datetime NOT NULL,
  `DATE_UPDATE` datetime NOT NULL,
  `MODIFIED_BY` int(18) NOT NULL,
  `CREATED_BY` int(18) NOT NULL,
  `PERSONAL` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CONTENT` text COLLATE utf8_unicode_ci,
  `POS_TOP` int(11) DEFAULT NULL,
  `POS_LEFT` int(11) DEFAULT NULL,
  `WIDTH` int(11) DEFAULT NULL,
  `HEIGHT` int(11) DEFAULT NULL,
  `COLOR` int(11) DEFAULT NULL,
  `COLLAPSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `COMPLETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `CLOSED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DELETED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MARKER_TOP` int(11) DEFAULT NULL,
  `MARKER_LEFT` int(11) DEFAULT NULL,
  `MARKER_WIDTH` int(11) DEFAULT NULL,
  `MARKER_HEIGHT` int(11) DEFAULT NULL,
  `MARKER_ADJUST` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_sticker_group_task`
--

CREATE TABLE `b_sticker_group_task` (
  `GROUP_ID` int(11) NOT NULL,
  `TASK_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_sticker_group_task`
--

INSERT INTO `b_sticker_group_task` (`GROUP_ID`, `TASK_ID`) VALUES
(5, 29);

-- --------------------------------------------------------

--
-- Table structure for table `b_subscription`
--

CREATE TABLE `b_subscription` (
  `ID` int(11) NOT NULL,
  `DATE_INSERT` datetime NOT NULL,
  `DATE_UPDATE` datetime DEFAULT NULL,
  `USER_ID` int(11) DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FORMAT` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRMED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DATE_CONFIRM` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_subscription_rubric`
--

CREATE TABLE `b_subscription_rubric` (
  `SUBSCRIPTION_ID` int(11) NOT NULL,
  `LIST_RUBRIC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_task`
--

CREATE TABLE `b_task` (
  `ID` int(18) NOT NULL,
  `NAME` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LETTER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SYS` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `DESCRIPTION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BINDING` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'module'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_task`
--

INSERT INTO `b_task` (`ID`, `NAME`, `LETTER`, `MODULE_ID`, `SYS`, `DESCRIPTION`, `BINDING`) VALUES
(1, 'main_denied', 'D', 'main', 'Y', NULL, 'module'),
(2, 'main_change_profile', 'P', 'main', 'Y', NULL, 'module'),
(3, 'main_view_all_settings', 'R', 'main', 'Y', NULL, 'module'),
(4, 'main_view_all_settings_change_profile', 'T', 'main', 'Y', NULL, 'module'),
(5, 'main_edit_subordinate_users', 'V', 'main', 'Y', NULL, 'module'),
(6, 'main_full_access', 'W', 'main', 'Y', NULL, 'module'),
(7, 'fm_folder_access_denied', 'D', 'main', 'Y', NULL, 'file'),
(8, 'fm_folder_access_read', 'R', 'main', 'Y', NULL, 'file'),
(9, 'fm_folder_access_write', 'W', 'main', 'Y', NULL, 'file'),
(10, 'fm_folder_access_full', 'X', 'main', 'Y', NULL, 'file'),
(11, 'fm_folder_access_workflow', 'U', 'main', 'Y', NULL, 'file'),
(12, 'bitrixcloud_deny', 'D', 'bitrixcloud', 'Y', NULL, 'module'),
(13, 'bitrixcloud_control', 'W', 'bitrixcloud', 'Y', NULL, 'module'),
(14, 'clouds_denied', 'D', 'clouds', 'Y', NULL, 'module'),
(15, 'clouds_browse', 'F', 'clouds', 'Y', NULL, 'module'),
(16, 'clouds_upload', 'U', 'clouds', 'Y', NULL, 'module'),
(17, 'clouds_full_access', 'W', 'clouds', 'Y', NULL, 'module'),
(18, 'fileman_denied', 'D', 'fileman', 'Y', '', 'module'),
(19, 'fileman_allowed_folders', 'F', 'fileman', 'Y', '', 'module'),
(20, 'fileman_full_access', 'W', 'fileman', 'Y', '', 'module'),
(21, 'medialib_denied', 'D', 'fileman', 'Y', '', 'medialib'),
(22, 'medialib_view', 'F', 'fileman', 'Y', '', 'medialib'),
(23, 'medialib_only_new', 'R', 'fileman', 'Y', '', 'medialib'),
(24, 'medialib_edit_items', 'V', 'fileman', 'Y', '', 'medialib'),
(25, 'medialib_editor', 'W', 'fileman', 'Y', '', 'medialib'),
(26, 'medialib_full', 'X', 'fileman', 'Y', '', 'medialib'),
(27, 'stickers_denied', 'D', 'fileman', 'Y', '', 'stickers'),
(28, 'stickers_read', 'R', 'fileman', 'Y', '', 'stickers'),
(29, 'stickers_edit', 'W', 'fileman', 'Y', '', 'stickers'),
(30, 'hblock_denied', 'D', 'highloadblock', 'Y', NULL, 'module'),
(31, 'hblock_read', 'R', 'highloadblock', 'Y', NULL, 'module'),
(32, 'hblock_write', 'W', 'highloadblock', 'Y', NULL, 'module'),
(33, 'iblock_deny', 'D', 'iblock', 'Y', NULL, 'iblock'),
(34, 'iblock_read', 'R', 'iblock', 'Y', NULL, 'iblock'),
(35, 'iblock_element_add', 'E', 'iblock', 'Y', NULL, 'iblock'),
(36, 'iblock_admin_read', 'S', 'iblock', 'Y', NULL, 'iblock'),
(37, 'iblock_admin_add', 'T', 'iblock', 'Y', NULL, 'iblock'),
(38, 'iblock_limited_edit', 'U', 'iblock', 'Y', NULL, 'iblock'),
(39, 'iblock_full_edit', 'W', 'iblock', 'Y', NULL, 'iblock'),
(40, 'iblock_full', 'X', 'iblock', 'Y', NULL, 'iblock'),
(41, 'security_denied', 'D', 'security', 'Y', NULL, 'module'),
(42, 'security_filter', 'F', 'security', 'Y', NULL, 'module'),
(43, 'security_otp', 'S', 'security', 'Y', NULL, 'module'),
(44, 'security_view_all_settings', 'T', 'security', 'Y', NULL, 'module'),
(45, 'security_full_access', 'W', 'security', 'Y', NULL, 'module'),
(46, 'seo_denied', 'D', 'seo', 'Y', '', 'module'),
(47, 'seo_edit', 'F', 'seo', 'Y', '', 'module'),
(48, 'seo_full_access', 'W', 'seo', 'Y', '', 'module'),
(49, 'Контент-редакторы', 'Q', 'main', 'N', 'Разрешено изменять информацию в своем профайле. Управление кешем', 'module');

-- --------------------------------------------------------

--
-- Table structure for table `b_task_operation`
--

CREATE TABLE `b_task_operation` (
  `TASK_ID` int(18) NOT NULL,
  `OPERATION_ID` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_task_operation`
--

INSERT INTO `b_task_operation` (`TASK_ID`, `OPERATION_ID`) VALUES
(2, 2),
(2, 3),
(3, 2),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(5, 2),
(5, 3),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(6, 15),
(6, 16),
(6, 17),
(6, 18),
(8, 19),
(8, 20),
(8, 21),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(9, 27),
(9, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(10, 19),
(10, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(10, 25),
(10, 26),
(10, 27),
(10, 28),
(10, 29),
(10, 30),
(10, 31),
(10, 32),
(10, 33),
(10, 34),
(10, 35),
(11, 19),
(11, 20),
(11, 21),
(11, 24),
(11, 28),
(13, 36),
(13, 37),
(13, 38),
(15, 39),
(16, 39),
(16, 40),
(17, 39),
(17, 40),
(17, 41),
(19, 44),
(19, 45),
(19, 46),
(19, 47),
(19, 48),
(19, 49),
(19, 50),
(19, 52),
(19, 53),
(20, 42),
(20, 43),
(20, 44),
(20, 45),
(20, 46),
(20, 47),
(20, 48),
(20, 49),
(20, 50),
(20, 51),
(20, 52),
(20, 53),
(20, 54),
(22, 55),
(23, 55),
(23, 56),
(23, 60),
(24, 55),
(24, 60),
(24, 61),
(24, 62),
(25, 55),
(25, 56),
(25, 57),
(25, 58),
(25, 60),
(25, 61),
(25, 62),
(26, 55),
(26, 56),
(26, 57),
(26, 58),
(26, 59),
(26, 60),
(26, 61),
(26, 62),
(28, 63),
(29, 63),
(29, 64),
(29, 65),
(29, 66),
(31, 67),
(32, 68),
(32, 69),
(34, 70),
(34, 71),
(35, 72),
(36, 70),
(36, 71),
(36, 73),
(37, 70),
(37, 71),
(37, 72),
(37, 73),
(38, 70),
(38, 71),
(38, 72),
(38, 73),
(38, 74),
(38, 75),
(38, 76),
(38, 77),
(39, 70),
(39, 71),
(39, 72),
(39, 73),
(39, 74),
(39, 75),
(39, 76),
(39, 77),
(39, 78),
(39, 79),
(39, 80),
(39, 81),
(40, 70),
(40, 71),
(40, 72),
(40, 73),
(40, 74),
(40, 75),
(40, 76),
(40, 77),
(40, 78),
(40, 79),
(40, 80),
(40, 81),
(40, 82),
(40, 83),
(40, 84),
(40, 85),
(40, 86),
(40, 87),
(42, 88),
(43, 89),
(44, 90),
(44, 91),
(44, 92),
(44, 93),
(44, 94),
(44, 95),
(44, 96),
(44, 97),
(44, 98),
(44, 99),
(44, 100),
(45, 88),
(45, 89),
(45, 90),
(45, 91),
(45, 92),
(45, 93),
(45, 94),
(45, 95),
(45, 96),
(45, 97),
(45, 98),
(45, 99),
(45, 100),
(45, 101),
(45, 102),
(45, 103),
(45, 104),
(45, 105),
(45, 106),
(45, 107),
(45, 108),
(45, 109),
(45, 110),
(45, 111),
(45, 112),
(45, 113),
(47, 115),
(48, 114),
(48, 115),
(49, 2),
(49, 3),
(49, 14);

-- --------------------------------------------------------

--
-- Table structure for table `b_undo`
--

CREATE TABLE `b_undo` (
  `ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_TYPE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNDO_HANDLER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONTENT` mediumtext COLLATE utf8_unicode_ci,
  `USER_ID` int(11) DEFAULT NULL,
  `TIMESTAMP_X` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_undo`
--

INSERT INTO `b_undo` (`ID`, `MODULE_ID`, `UNDO_TYPE`, `UNDO_HANDLER`, `CONTENT`, `USER_ID`, `TIMESTAMP_X`) VALUES
('101a35d3d46ee959ed0e1eb6f3092de59', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2727:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "NAME",\n			1 => "DETAIL_TEXT",\n			2 => "DETAIL_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "[DOCS] Документы",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "NAME",\n			1 => "PREVIEW_TEXT",\n			2 => "PREVIEW_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Озывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519653527),
('118fbfa4991e62ff2c7c3330a0f1486d5', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:46:"/var/www/html/local/templates/exam1/header.php";s:7:"content";s:15125:"<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();\nIncludeTemplateLangFile(__FILE__);\n?>\n<!DOCTYPE html>\n<html lang="<?= LANGUAGE_ID ?>">\n\n<head>\n    <title><? $APPLICATION->ShowTitle() ?></title>\n    <? $APPLICATION->ShowHead(); ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/reset.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/style.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/owl.carousel.css\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/jquery.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/owl.carousel.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/scripts.js\') ?>\n    <link rel="icon" type="image/vnd.microsoft.icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n    <link rel="shortcut icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n</head>\n\n<body>\n<? $APPLICATION->ShowPanel() ?>\n<!-- wrap -->\n<div class="wrap">\n    <!-- header -->\n    <header class="header">\n        <div class="inner-wrap">\n            <div class="logo-block"><a href="" class="logo">Мебельный магазин</a>\n            </div>\n            <div class="main-phone-block">\n                <? if (localtime()[2] > 8 and localtime()[2] < 18): ?>\n                    <a href="tel:84952128506" class="phone">8 (495) 212-85-06</a>\n                <? else: ?>\n                    <a href="mailto:store@store.ru" class="phone">store@store.ru</a>\n                <? endif ?>\n                <div class="shedule">время работы с 9-00 до 18-00</div>\n            </div>\n            <div class="actions-block">\n                <form action="/" class="main-frm-search">\n                    <input type="text" placeholder="Поиск">\n                    <button type="submit"></button>\n                </form>\n                <?$APPLICATION->IncludeComponent(\n                    "bitrix:system.auth.form",\n                    "",\n                    Array(),\n                    false\n                );?>\n            </div>\n        </div>\n    </header>\n    <!-- /header -->\n    <? $APPLICATION->IncludeComponent(\n        "bitrix:menu",\n        "top_horizontal_multilevel",\n        Array(\n            "ALLOW_MULTI_SELECT" => "N",\n            "CHILD_MENU_TYPE" => "left",\n            "DELAY" => "N",\n            "MAX_LEVEL" => "3",\n            "MENU_CACHE_GET_VARS" => array(0 => "",),\n            "MENU_CACHE_TIME" => "3600000",\n            "MENU_CACHE_TYPE" => "A",\n            "MENU_CACHE_USE_GROUPS" => "Y",\n            "ROOT_MENU_TYPE" => "top",\n            "USE_EXT" => "Y"\n        )\n    ); ?>\n    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n        <!-- breadcrumbs -->\n        <div class="breadcrumbs-box">\n            <div class="inner-wrap">\n                <a href="">Главная</a>\n                <a href="">Мебель</a>\n                <span>Выставки и события</span>\n            </div>\n        </div>\n        <!-- /breadcrumbs -->\n    <? endif ?>\n    <!-- page -->\n    <div class="page">\n        <!-- content box -->\n        <div class="content-box">\n            <!-- content -->\n            <div class="content">\n                <div class="cnt">\n                    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n                        <header>\n                            <h1><? $APPLICATION->ShowTitle(false) ?></h1>\n                        </header>\n                    <? endif ?>\n                    <? if ($APPLICATION->GetCurDir() == \'/\'): ?>\n\n                        <p>«Мебельная компания» осуществляет производство мебели на высококлассном оборудовании с\n                            применением минимальной доли ручного труда, что позволяет обеспечить высокое качество нашей\n                            продукции. Налажен производственный процесс как массового и индивидуального характера, что с\n                            одной стороны позволяет обеспечить постоянную номенклатуру изделий и индивидуальный подход –\n                            с другой.\n                        </p>\n\n\n                        <!-- index column -->\n                        <div class="cnt-section index-column">\n                            <div class="col-wrap">\n\n                                <!-- main actions box -->\n                                <div class="column main-actions-box">\n                                    <div class="title-block">\n                                        <h2>Новинки</h2>\n                                        <hr>\n                                    </div>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new01.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new02.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new03.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новинки</a>\n                                </div>\n                                <!-- /main actions box -->\n                                <!-- main news box -->\n                                <div class="column main-news-box">\n                                    <div class="title-block">\n                                        <h2>Новости</h2>\n                                    </div>\n                                    <hr>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Мастер-класс дизайнеров из Италии для\n                                                        производителей мебели </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Наша дилерская сеть расширилась теперь\n                                                        ассортимент наших товаров доступен в Казани </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новости</a>\n                                </div>\n                                <!-- /main news box -->\n\n                            </div>\n                        </div>\n                        <!-- /index column -->\n\n                        <!-- afisha box -->\n                        <div class="cnt-section afisha-box">\n                            <div class="section-title-block">\n                                <h2 class="second-ttile">Ближайшие мероприятия</h2>\n                                <a href="" class="btn-next">все мероприятия</a>\n                            </div>\n                            <hr>\n                            <div class="items-wrap">\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Семинар производителей мебели России и СНГ,\n                                                Обсуждение тенденций.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие шоу-рума на Невском проспекте. Последние\n                                                модели в большом ассортименте.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие нового магазина в нашей дилерской\n                                                сети.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                        <!-- /afisha box -->\n                    <? endif ?>\n\n";}', 1, 1519732565),
('11c43173be4aef523caea0c0ba3e07127', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2702:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "NAME",\n			1 => "DETAIL_TEXT",\n			2 => "DETAIL_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "NAME",\n			1 => "PREVIEW_TEXT",\n			2 => "PREVIEW_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Озывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519653288),
('12ce5670f3fa5edf1a39a5e714eda0b79', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2515:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Озывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519717187),
('1409334bef47847b5c9b756a5e43d1b48', 'fileman', 'edit_menu', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:35:"/var/www/html/search/.left.menu.php";s:7:"content";s:179:"<?\n$aMenuLinks = Array(\n	Array(\n		"Поиск", \n		"/", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Карта сайта", \n		"map.php", \n		Array(), \n		Array(), \n		"" \n	)\n);\n?>";}', 1, 1519727662),
('144765ca698baa167eab66e62463e14ce', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:23:"/var/www/html/index.php";s:7:"content";s:1850:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Мебельная компания");\n?><p>\nНаша компания существует на Российском рынке с 1992 года. За это время «Мебельная компания» прошла большой путь от маленькой торговой фирмы до одного из крупнейших производителей корпусной мебели в России.\n</p><p>\n«Мебельная компания» осуществляет производство мебели на высококлассном оборудовании с применением минимальной доли ручного труда, что позволяет обеспечить высокое качество нашей продукции. Налажен производственный процесс как массового и индивидуального характера, что с одной стороны позволяет обеспечить постоянную номенклатуру изделий и индивидуальный подход – с другой.\n<h3>Наша продукция</h3>\n<?$APPLICATION->IncludeComponent("bitrix:furniture.catalog.index", "", array(\n	"IBLOCK_TYPE" => "products",\n	"IBLOCK_ID" => "2",\n	"IBLOCK_BINDING" => "section",\n	"CACHE_TYPE" => "A",\n	"CACHE_TIME" => "36000000",\n	"CACHE_GROUPS" => "N"\n	),\n	false\n);?>\n<h3>Наши услуги</h3>\n<?$APPLICATION->IncludeComponent("bitrix:furniture.catalog.index", "", array(\n	"IBLOCK_TYPE" => "products",\n	"IBLOCK_ID" => "3",\n	"IBLOCK_BINDING" => "element",\n	"CACHE_TYPE" => "A",\n	"CACHE_TIME" => "36000000",\n	"CACHE_GROUPS" => "N"\n	),\n	false\n);?>\n</p><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519641210),
('146f15ff82844d292b6d9b958b89e98e9', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:171:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?>\n\nText here....\n\n<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519647314),
('1552c7cd9cb510f2615abefa0701eba0e', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/rew/index.php";s:7:"content";s:2598:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Отзывы");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "N",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "Y",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"SEF_FOLDER" => "/rew/",\n		"SEF_URL_TEMPLATES" => array(\n			"news" => "",\n			"section" => "",\n			"detail" => "#ELEMENT_ID#.php",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519726936),
('160b0bb8280cdf51b06f487cc8a06f7ea', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:22:"/var/www/html/test.php";s:7:"content";s:1159:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent("bitrix:menu", "top_horizontal_multilevel", Array(\n	"ALLOW_MULTI_SELECT" => "N",	// Разрешить несколько активных пунктов одновременно\n		"CHILD_MENU_TYPE" => "left",	// Тип меню для остальных уровней\n		"DELAY" => "N",	// Откладывать выполнение шаблона меню\n		"MAX_LEVEL" => "3",	// Уровень вложенности меню\n		"MENU_CACHE_GET_VARS" => array(	// Значимые переменные запроса\n			0 => "",\n		),\n		"MENU_CACHE_TIME" => "3600000",	// Время кеширования (сек.)\n		"MENU_CACHE_TYPE" => "A",	// Тип кеширования\n		"MENU_CACHE_USE_GROUPS" => "Y",	// Учитывать права доступа\n		"ROOT_MENU_TYPE" => "top",	// Тип меню для первого уровня\n		"USE_EXT" => "Y",	// Подключать файлы с именами вида .тип_меню.menu_ext.php\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519642211),
('16818ec823e1257abb85e3306321d435b', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/rew/index.php";s:7:"content";s:175:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Отзывы");\n?>Text here....<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519725718),
('16bda637b918d6dc4c8172e5b507eb62e', 'fileman', 'new_file', 'CFileman::UndoNewFile', 'a:4:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:4:"path";s:17:"/company/test.php";s:4:"site";s:2:"s1";s:6:"public";s:1:"Y";}', 1, 1519642973),
('16bdf8e581801c1a1285fbb12ff629d05', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/rew/index.php";s:7:"content";s:2591:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Отзывы");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "N",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"SEF_FOLDER" => "/rew/",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519726884),
('16d2cc28bbe155d3b454f4d35a6218cb6', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:251:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent("bitrix:system.auth.form", "template1", Array(\n	\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519732576),
('16d456963a25b23c0e67d002f0e2b9693', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:46:"/var/www/html/local/templates/exam1/header.php";s:7:"content";s:15176:"<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();\nIncludeTemplateLangFile(__FILE__);\n?>\n<!DOCTYPE html>\n<html lang="<?= LANGUAGE_ID ?>">\n\n<head>\n    <title><? $APPLICATION->ShowTitle() ?></title>\n    <? $APPLICATION->ShowHead(); ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/reset.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/style.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/owl.carousel.css\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/jquery.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/owl.carousel.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/scripts.js\') ?>\n    <link rel="icon" type="image/vnd.microsoft.icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n    <link rel="shortcut icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n</head>\n\n<body>\n<? $APPLICATION->ShowPanel() ?>\n<!-- wrap -->\n<div class="wrap">\n    <!-- header -->\n    <header class="header">\n        <div class="inner-wrap">\n            <div class="logo-block"><a href="" class="logo">Мебельный магазин</a>\n            </div>\n            <div class="main-phone-block">\n                <? if (localtime()[2] > 8 and localtime()[2] < 18): ?>\n                    <a href="tel:84952128506" class="phone">8 (495) 212-85-06</a>\n                <? else: ?>\n                    <a href="mailto:store@store.ru" class="phone">store@store.ru</a>\n                <? endif ?>\n                <div class="shedule">время работы с 9-00 до 18-00</div>\n            </div>\n            <div class="actions-block">\n                <form action="/" class="main-frm-search">\n                    <input type="text" placeholder="Поиск">\n                    <button type="submit"></button>\n                </form>\n                <?$APPLICATION->IncludeComponent(\n	"bitrix:system.auth.form", \n	"demo", \n	array(\n		"COMPONENT_TEMPLATE" => "demo",\n		"REGISTER_URL" => "",\n		"FORGOT_PASSWORD_URL" => "",\n		"PROFILE_URL" => "",\n		"SHOW_ERRORS" => "N"\n	),\n	false\n);?>\n            </div>\n        </div>\n    </header>\n    <!-- /header -->\n    <? $APPLICATION->IncludeComponent(\n        "bitrix:menu",\n        "top_horizontal_multilevel",\n        Array(\n            "ALLOW_MULTI_SELECT" => "N",\n            "CHILD_MENU_TYPE" => "left",\n            "DELAY" => "N",\n            "MAX_LEVEL" => "3",\n            "MENU_CACHE_GET_VARS" => array(0 => "",),\n            "MENU_CACHE_TIME" => "3600000",\n            "MENU_CACHE_TYPE" => "A",\n            "MENU_CACHE_USE_GROUPS" => "Y",\n            "ROOT_MENU_TYPE" => "top",\n            "USE_EXT" => "Y"\n        )\n    ); ?>\n    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n        <!-- breadcrumbs -->\n        <div class="breadcrumbs-box">\n            <div class="inner-wrap">\n                <a href="">Главная</a>\n                <a href="">Мебель</a>\n                <span>Выставки и события</span>\n            </div>\n        </div>\n        <!-- /breadcrumbs -->\n    <? endif ?>\n    <!-- page -->\n    <div class="page">\n        <!-- content box -->\n        <div class="content-box">\n            <!-- content -->\n            <div class="content">\n                <div class="cnt">\n                    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n                        <header>\n                            <h1><? $APPLICATION->ShowTitle(false) ?></h1>\n                        </header>\n                    <? endif ?>\n                    <? if ($APPLICATION->GetCurDir() == \'/\'): ?>\n\n                        <p>«Мебельная компания» осуществляет производство мебели на высококлассном оборудовании с\n                            применением минимальной доли ручного труда, что позволяет обеспечить высокое качество нашей\n                            продукции. Налажен производственный процесс как массового и индивидуального характера, что с\n                            одной стороны позволяет обеспечить постоянную номенклатуру изделий и индивидуальный подход –\n                            с другой.\n                        </p>\n\n\n                        <!-- index column -->\n                        <div class="cnt-section index-column">\n                            <div class="col-wrap">\n\n                                <!-- main actions box -->\n                                <div class="column main-actions-box">\n                                    <div class="title-block">\n                                        <h2>Новинки</h2>\n                                        <hr>\n                                    </div>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new01.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new02.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new03.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новинки</a>\n                                </div>\n                                <!-- /main actions box -->\n                                <!-- main news box -->\n                                <div class="column main-news-box">\n                                    <div class="title-block">\n                                        <h2>Новости</h2>\n                                    </div>\n                                    <hr>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Мастер-класс дизайнеров из Италии для\n                                                        производителей мебели </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Наша дилерская сеть расширилась теперь\n                                                        ассортимент наших товаров доступен в Казани </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новости</a>\n                                </div>\n                                <!-- /main news box -->\n\n                            </div>\n                        </div>\n                        <!-- /index column -->\n\n                        <!-- afisha box -->\n                        <div class="cnt-section afisha-box">\n                            <div class="section-title-block">\n                                <h2 class="second-ttile">Ближайшие мероприятия</h2>\n                                <a href="" class="btn-next">все мероприятия</a>\n                            </div>\n                            <hr>\n                            <div class="items-wrap">\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Семинар производителей мебели России и СНГ,\n                                                Обсуждение тенденций.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие шоу-рума на Невском проспекте. Последние\n                                                модели в большом ассортименте.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие нового магазина в нашей дилерской\n                                                сети.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                        <!-- /afisha box -->\n                    <? endif ?>\n\n";}', 1, 1519732609);
INSERT INTO `b_undo` (`ID`, `MODULE_ID`, `UNDO_TYPE`, `UNDO_HANDLER`, `CONTENT`, `USER_ID`, `TIMESTAMP_X`) VALUES
('172695542542d90ade0438eb5207ea3db', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:6256:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent("bitrix:news", "reviews", Array(\n	"ADD_ELEMENT_CHAIN" => "N",	// Включать название элемента в цепочку навигации\n		"ADD_SECTIONS_CHAIN" => "N",	// Включать раздел в цепочку навигации\n		"AJAX_MODE" => "N",	// Включить режим AJAX\n		"AJAX_OPTION_ADDITIONAL" => "",	// Дополнительный идентификатор\n		"AJAX_OPTION_HISTORY" => "N",	// Включить эмуляцию навигации браузера\n		"AJAX_OPTION_JUMP" => "N",	// Включить прокрутку к началу компонента\n		"AJAX_OPTION_STYLE" => "Y",	// Включить подгрузку стилей\n		"BROWSER_TITLE" => "-",	// Установить заголовок окна браузера из свойства\n		"CACHE_FILTER" => "N",	// Кешировать при установленном фильтре\n		"CACHE_GROUPS" => "Y",	// Учитывать права доступа\n		"CACHE_TIME" => "36000000",	// Время кеширования (сек.)\n		"CACHE_TYPE" => "A",	// Тип кеширования\n		"CHECK_DATES" => "Y",	// Показывать только активные на данный момент элементы\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",	// Формат показа даты\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",	// Выводить под списком\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",	// Выводить над списком\n		"DETAIL_FIELD_CODE" => array(	// Поля\n			0 => "NAME",\n			1 => "DETAIL_TEXT",\n			2 => "DETAIL_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",	// Показывать ссылку "Все"\n		"DETAIL_PAGER_TEMPLATE" => "",	// Название шаблона\n		"DETAIL_PAGER_TITLE" => "Страница",	// Название категорий\n		"DETAIL_PROPERTY_CODE" => array(	// Свойства\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",	// Устанавливать канонический URL\n		"DISPLAY_BOTTOM_PAGER" => "Y",	// Выводить под списком\n		"DISPLAY_DATE" => "Y",	// Выводить дату элемента\n		"DISPLAY_NAME" => "Y",	// Выводить название элемента\n		"DISPLAY_PICTURE" => "Y",	// Выводить изображение для анонса\n		"DISPLAY_PREVIEW_TEXT" => "Y",	// Выводить текст анонса\n		"DISPLAY_TOP_PAGER" => "N",	// Выводить над списком\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",	// Скрывать ссылку, если нет детального описания\n		"IBLOCK_ID" => "5",	// Инфоблок\n		"IBLOCK_TYPE" => "reviews",	// Тип инфоблока\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",	// Включать инфоблок в цепочку навигации\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",	// Формат показа даты\n		"LIST_FIELD_CODE" => array(	// Поля\n			0 => "NAME",\n			1 => "PREVIEW_TEXT",\n			2 => "PREVIEW_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(	// Свойства\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",	// Сообщение для показа (по умолчанию из компонента)\n		"META_DESCRIPTION" => "-",	// Установить описание страницы из свойства\n		"META_KEYWORDS" => "-",	// Установить ключевые слова страницы из свойства\n		"NEWS_COUNT" => "2",	// Количество новостей на странице\n		"PAGER_BASE_LINK_ENABLE" => "N",	// Включить обработку ссылок\n		"PAGER_DESC_NUMBERING" => "N",	// Использовать обратную навигацию\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",	// Время кеширования страниц для обратной навигации\n		"PAGER_SHOW_ALL" => "N",	// Показывать ссылку "Все"\n		"PAGER_SHOW_ALWAYS" => "N",	// Выводить всегда\n		"PAGER_TEMPLATE" => ".default",	// Шаблон постраничной навигации\n		"PAGER_TITLE" => "Озывы",	// Название категорий\n		"PREVIEW_TRUNCATE_LEN" => "",	// Максимальная длина анонса для вывода (только для типа текст)\n		"SEF_MODE" => "N",	// Включить поддержку ЧПУ\n		"SET_LAST_MODIFIED" => "N",	// Устанавливать в заголовках ответа время модификации страницы\n		"SET_STATUS_404" => "N",	// Устанавливать статус 404\n		"SET_TITLE" => "Y",	// Устанавливать заголовок страницы\n		"SHOW_404" => "N",	// Показ специальной страницы\n		"SORT_BY1" => "ACTIVE_FROM",	// Поле для первой сортировки новостей\n		"SORT_BY2" => "SORT",	// Поле для второй сортировки новостей\n		"SORT_ORDER1" => "DESC",	// Направление для первой сортировки новостей\n		"SORT_ORDER2" => "ASC",	// Направление для второй сортировки новостей\n		"STRICT_SECTION_CHECK" => "N",	// Строгая проверка раздела\n		"USE_CATEGORIES" => "N",	// Выводить материалы по теме\n		"USE_FILTER" => "N",	// Показывать фильтр\n		"USE_PERMISSIONS" => "N",	// Использовать дополнительное ограничение доступа\n		"USE_RATING" => "N",	// Разрешить голосование\n		"USE_REVIEW" => "N",	// Разрешить отзывы\n		"USE_RSS" => "N",	// Разрешить RSS\n		"USE_SEARCH" => "N",	// Разрешить поиск\n		"USE_SHARE" => "N",	// Отображать панель соц. закладок\n		"VARIABLE_ALIASES" => array(\n			"ELEMENT_ID" => "ELEMENT_ID",\n			"SECTION_ID" => "SECTION_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519648173),
('1765554ad3926c0640fbe88b67739e20f', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/search/index.php";s:7:"content";s:989:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Поиск");\n?>\n\n<?$APPLICATION->IncludeComponent("bitrix:search.page", "clear", array(\n	"RESTART" => "N",\n	"CHECK_DATES" => "N",\n	"USE_TITLE_RANK" => "N",\n	"DEFAULT_SORT" => "rank",\n	"arrFILTER" => array(\n		0 => "no",\n	),\n	"SHOW_WHERE" => "N",\n	"SHOW_WHEN" => "N",\n	"PAGE_RESULT_COUNT" => "5",\n	"AJAX_MODE" => "N",\n	"AJAX_OPTION_SHADOW" => "Y",\n	"AJAX_OPTION_JUMP" => "N",\n	"AJAX_OPTION_STYLE" => "Y",\n	"AJAX_OPTION_HISTORY" => "N",\n	"CACHE_TYPE" => "A",\n	"CACHE_TIME" => "36000000",\n	"DISPLAY_TOP_PAGER" => "N",\n	"DISPLAY_BOTTOM_PAGER" => "Y",\n	"PAGER_TITLE" => "Результаты поиска",\n	"PAGER_SHOW_ALWAYS" => "N",\n	"PAGER_TEMPLATE" => "arrows",\n	"USE_SUGGEST" => "N",\n	"SHOW_ITEM_TAGS" => "N",\n	"SHOW_ITEM_DATE_CHANGE" => "N",\n	"SHOW_ORDER_BY" => "N",\n	"SHOW_TAGS_CLOUD" => "N",\n	"AJAX_OPTION_ADDITIONAL" => ""\n	),\n	false\n);?>\n\n<?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519727738),
('1774c65a232c1528e73c13cf670042ae5', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:46:"/var/www/html/local/templates/exam1/header.php";s:7:"content";s:15205:"<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();\nIncludeTemplateLangFile(__FILE__);\n?>\n<!DOCTYPE html>\n<html lang="<?= LANGUAGE_ID ?>">\n\n<head>\n    <title><? $APPLICATION->ShowTitle() ?></title>\n    <? $APPLICATION->ShowHead(); ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/reset.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/style.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/owl.carousel.css\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/jquery.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/owl.carousel.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/scripts.js\') ?>\n    <link rel="icon" type="image/vnd.microsoft.icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n    <link rel="shortcut icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n</head>\n\n<body>\n<? $APPLICATION->ShowPanel() ?>\n<!-- wrap -->\n<div class="wrap">\n    <!-- header -->\n    <header class="header">\n        <div class="inner-wrap">\n            <div class="logo-block"><a href="" class="logo">Мебельный магазин</a>\n            </div>\n            <div class="main-phone-block">\n                <? if (localtime()[2] > 8 and localtime()[2] < 18): ?>\n                    <a href="tel:84952128506" class="phone">8 (495) 212-85-06</a>\n                <? else: ?>\n                    <a href="mailto:store@store.ru" class="phone">store@store.ru</a>\n                <? endif ?>\n                <div class="shedule">время работы с 9-00 до 18-00</div>\n            </div>\n            <div class="actions-block">\n                <form action="/" class="main-frm-search">\n                    <input type="text" placeholder="Поиск">\n                    <button type="submit"></button>\n                </form>\n                <?$APPLICATION->IncludeComponent(\n	"bitrix:system.auth.form", \n	"demo", \n	array(\n		"COMPONENT_TEMPLATE" => "demo",\n		"REGISTER_URL" => "/login/",\n		"FORGOT_PASSWORD_URL" => "/login/",\n		"PROFILE_URL" => "/login/user.php",\n		"SHOW_ERRORS" => "N"\n	),\n	false\n);?>\n            </div>\n        </div>\n    </header>\n    <!-- /header -->\n    <? $APPLICATION->IncludeComponent(\n        "bitrix:menu",\n        "top_horizontal_multilevel",\n        Array(\n            "ALLOW_MULTI_SELECT" => "N",\n            "CHILD_MENU_TYPE" => "left",\n            "DELAY" => "N",\n            "MAX_LEVEL" => "3",\n            "MENU_CACHE_GET_VARS" => array(0 => "",),\n            "MENU_CACHE_TIME" => "3600000",\n            "MENU_CACHE_TYPE" => "A",\n            "MENU_CACHE_USE_GROUPS" => "Y",\n            "ROOT_MENU_TYPE" => "top",\n            "USE_EXT" => "Y"\n        )\n    ); ?>\n    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n        <!-- breadcrumbs -->\n        <div class="breadcrumbs-box">\n            <div class="inner-wrap">\n                <a href="">Главная</a>\n                <a href="">Мебель</a>\n                <span>Выставки и события</span>\n            </div>\n        </div>\n        <!-- /breadcrumbs -->\n    <? endif ?>\n    <!-- page -->\n    <div class="page">\n        <!-- content box -->\n        <div class="content-box">\n            <!-- content -->\n            <div class="content">\n                <div class="cnt">\n                    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n                        <header>\n                            <h1><? $APPLICATION->ShowTitle(false) ?></h1>\n                        </header>\n                    <? endif ?>\n                    <? if ($APPLICATION->GetCurDir() == \'/\'): ?>\n\n                        <p>«Мебельная компания» осуществляет производство мебели на высококлассном оборудовании с\n                            применением минимальной доли ручного труда, что позволяет обеспечить высокое качество нашей\n                            продукции. Налажен производственный процесс как массового и индивидуального характера, что с\n                            одной стороны позволяет обеспечить постоянную номенклатуру изделий и индивидуальный подход –\n                            с другой.\n                        </p>\n\n\n                        <!-- index column -->\n                        <div class="cnt-section index-column">\n                            <div class="col-wrap">\n\n                                <!-- main actions box -->\n                                <div class="column main-actions-box">\n                                    <div class="title-block">\n                                        <h2>Новинки</h2>\n                                        <hr>\n                                    </div>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new01.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new02.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new03.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новинки</a>\n                                </div>\n                                <!-- /main actions box -->\n                                <!-- main news box -->\n                                <div class="column main-news-box">\n                                    <div class="title-block">\n                                        <h2>Новости</h2>\n                                    </div>\n                                    <hr>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Мастер-класс дизайнеров из Италии для\n                                                        производителей мебели </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Наша дилерская сеть расширилась теперь\n                                                        ассортимент наших товаров доступен в Казани </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новости</a>\n                                </div>\n                                <!-- /main news box -->\n\n                            </div>\n                        </div>\n                        <!-- /index column -->\n\n                        <!-- afisha box -->\n                        <div class="cnt-section afisha-box">\n                            <div class="section-title-block">\n                                <h2 class="second-ttile">Ближайшие мероприятия</h2>\n                                <a href="" class="btn-next">все мероприятия</a>\n                            </div>\n                            <hr>\n                            <div class="items-wrap">\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Семинар производителей мебели России и СНГ,\n                                                Обсуждение тенденций.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие шоу-рума на Невском проспекте. Последние\n                                                модели в большом ассортименте.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие нового магазина в нашей дилерской\n                                                сети.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                        <!-- /afisha box -->\n                    <? endif ?>\n\n";}', 1, 1519735762),
('189192556ed0b33ffb294173ed1743537', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/rew/index.php";s:7:"content";s:2595:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Отзывы");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "N",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "Y",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"SEF_FOLDER" => "/rew/",\n		"SEF_URL_TEMPLATES" => array(\n			"news" => "",\n			"section" => "",\n			"detail" => "#ELEMENT_ID#/",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519726869),
('18d87f2e89f5ca2c18dc037df667502c1', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/rew/index.php";s:7:"content";s:2607:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Отзывы");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "N",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "Y",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"SEF_FOLDER" => "/rew/",\n		"SEF_URL_TEMPLATES" => array(\n			"news" => "index.php",\n			"section" => "",\n			"detail" => "#ELEMENT_ID#.php",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519727170),
('18ef9570a4797458f9213d430bb0abc9a', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:23:"/var/www/html/index.php";s:7:"content";s:185:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Мебельная компания");\n?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519641254),
('190ed8a6b3374f946b9c295081585851a', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/rew/index.php";s:7:"content";s:2461:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Отзывы");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news",\n	"reviews",\n	Array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(0=>"",1=>"",),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(0=>"POSITION",1=>"COMPANY",2=>"DOCS",3=>"",),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "N",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(0=>"",1=>"",),\n		"LIST_PROPERTY_CODE" => array(0=>"POSITION",1=>"COMPANY",2=>"",),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"VARIABLE_ALIASES" => array("SECTION_ID"=>"SECTION_ID","ELEMENT_ID"=>"ELEMENT_ID",)\n	)\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519726804),
('1971489748048fc21f97d67e642750e35', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:46:"/var/www/html/local/templates/exam1/header.php";s:7:"content";s:15198:"<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();\nIncludeTemplateLangFile(__FILE__);\n?>\n<!DOCTYPE html>\n<html lang="<?= LANGUAGE_ID ?>">\n\n<head>\n    <title><? $APPLICATION->ShowTitle() ?></title>\n    <? $APPLICATION->ShowHead(); ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/reset.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/style.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/owl.carousel.css\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/jquery.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/owl.carousel.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/scripts.js\') ?>\n    <link rel="icon" type="image/vnd.microsoft.icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n    <link rel="shortcut icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n</head>\n\n<body>\n<? $APPLICATION->ShowPanel() ?>\n<!-- wrap -->\n<div class="wrap">\n    <!-- header -->\n    <header class="header">\n        <div class="inner-wrap">\n            <div class="logo-block"><a href="" class="logo">Мебельный магазин</a>\n            </div>\n            <div class="main-phone-block">\n                <? if (localtime()[2] > 8 and localtime()[2] < 18): ?>\n                    <a href="tel:84952128506" class="phone">8 (495) 212-85-06</a>\n                <? else: ?>\n                    <a href="mailto:store@store.ru" class="phone">store@store.ru</a>\n                <? endif ?>\n                <div class="shedule">время работы с 9-00 до 18-00</div>\n            </div>\n            <div class="actions-block">\n                <form action="/" class="main-frm-search">\n                    <input type="text" placeholder="Поиск">\n                    <button type="submit"></button>\n                </form>\n                <?$APPLICATION->IncludeComponent(\n	"bitrix:system.auth.form", \n	"demo", \n	array(\n		"COMPONENT_TEMPLATE" => "demo",\n		"REGISTER_URL" => "/login/",\n		"FORGOT_PASSWORD_URL" => "",\n		"PROFILE_URL" => "/login/user.php",\n		"SHOW_ERRORS" => "N"\n	),\n	false\n);?>\n            </div>\n        </div>\n    </header>\n    <!-- /header -->\n    <? $APPLICATION->IncludeComponent(\n        "bitrix:menu",\n        "top_horizontal_multilevel",\n        Array(\n            "ALLOW_MULTI_SELECT" => "N",\n            "CHILD_MENU_TYPE" => "left",\n            "DELAY" => "N",\n            "MAX_LEVEL" => "3",\n            "MENU_CACHE_GET_VARS" => array(0 => "",),\n            "MENU_CACHE_TIME" => "3600000",\n            "MENU_CACHE_TYPE" => "A",\n            "MENU_CACHE_USE_GROUPS" => "Y",\n            "ROOT_MENU_TYPE" => "top",\n            "USE_EXT" => "Y"\n        )\n    ); ?>\n    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n        <!-- breadcrumbs -->\n        <div class="breadcrumbs-box">\n            <div class="inner-wrap">\n                <a href="">Главная</a>\n                <a href="">Мебель</a>\n                <span>Выставки и события</span>\n            </div>\n        </div>\n        <!-- /breadcrumbs -->\n    <? endif ?>\n    <!-- page -->\n    <div class="page">\n        <!-- content box -->\n        <div class="content-box">\n            <!-- content -->\n            <div class="content">\n                <div class="cnt">\n                    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n                        <header>\n                            <h1><? $APPLICATION->ShowTitle(false) ?></h1>\n                        </header>\n                    <? endif ?>\n                    <? if ($APPLICATION->GetCurDir() == \'/\'): ?>\n\n                        <p>«Мебельная компания» осуществляет производство мебели на высококлассном оборудовании с\n                            применением минимальной доли ручного труда, что позволяет обеспечить высокое качество нашей\n                            продукции. Налажен производственный процесс как массового и индивидуального характера, что с\n                            одной стороны позволяет обеспечить постоянную номенклатуру изделий и индивидуальный подход –\n                            с другой.\n                        </p>\n\n\n                        <!-- index column -->\n                        <div class="cnt-section index-column">\n                            <div class="col-wrap">\n\n                                <!-- main actions box -->\n                                <div class="column main-actions-box">\n                                    <div class="title-block">\n                                        <h2>Новинки</h2>\n                                        <hr>\n                                    </div>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new01.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new02.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new03.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новинки</a>\n                                </div>\n                                <!-- /main actions box -->\n                                <!-- main news box -->\n                                <div class="column main-news-box">\n                                    <div class="title-block">\n                                        <h2>Новости</h2>\n                                    </div>\n                                    <hr>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Мастер-класс дизайнеров из Италии для\n                                                        производителей мебели </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Наша дилерская сеть расширилась теперь\n                                                        ассортимент наших товаров доступен в Казани </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новости</a>\n                                </div>\n                                <!-- /main news box -->\n\n                            </div>\n                        </div>\n                        <!-- /index column -->\n\n                        <!-- afisha box -->\n                        <div class="cnt-section afisha-box">\n                            <div class="section-title-block">\n                                <h2 class="second-ttile">Ближайшие мероприятия</h2>\n                                <a href="" class="btn-next">все мероприятия</a>\n                            </div>\n                            <hr>\n                            <div class="items-wrap">\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Семинар производителей мебели России и СНГ,\n                                                Обсуждение тенденций.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие шоу-рума на Невском проспекте. Последние\n                                                модели в большом ассортименте.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие нового магазина в нашей дилерской\n                                                сети.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                        <!-- /afisha box -->\n                    <? endif ?>\n\n";}', 1, 1519732748),
('19b1cfb1806c4d26671ea524e4e4e107d', 'fileman', 'new_section', 'CFileman::UndoNewSection', 'a:4:{s:7:"absPath";s:17:"/var/www/html/rew";s:4:"path";s:4:"/rew";s:4:"site";s:2:"s1";s:4:"menu";a:3:{s:8:"menuFile";s:14:"/.top.menu.php";s:8:"menuName";s:12:"Отзывы";s:8:"menuPath";s:5:"/rew/";}}', 1, 1519725676),
('1a1910c8380457352bcddd7fb4524ec51', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2527:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "N",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Озывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519717223),
('1a7bf0cc7b9c4450fac7ba91ac16b6274', 'fileman', 'edit_menu', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:35:"/var/www/html/search/.left.menu.php";s:7:"content";s:252:"<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();?>\n<?\n$aMenuLinks = Array(\n	Array(\n		"Поиск", \n		"./", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Карта сайта", \n		"map.php", \n		Array(), \n		Array(), \n		"" \n	)\n);\n?>";}', 1, 1519727618),
('1ad826762ef1329668deede57195fe6f9', 'fileman', 'new_file', 'CFileman::UndoNewFile', 'a:4:{s:7:"absPath";s:22:"/var/www/html/test.php";s:4:"path";s:9:"/test.php";s:4:"site";s:2:"s1";s:6:"public";s:1:"Y";}', 1, 1519642044),
('1b3e6fe0c9525827726d088d7b1866130', 'fileman', 'edit_menu', 'CFileman::UndoNewFile', 'a:3:{s:7:"absPath";s:32:"/var/www/html/rew/.left.menu.php";s:4:"path";s:19:"/rew/.left.menu.php";s:4:"site";s:2:"s1";}', 1, 1519725745);
INSERT INTO `b_undo` (`ID`, `MODULE_ID`, `UNDO_TYPE`, `UNDO_HANDLER`, `CONTENT`, `USER_ID`, `TIMESTAMP_X`) VALUES
('1b5e7fc00664985861ce5dee36c8e2d2e', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/rew/index.php";s:7:"content";s:2607:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Отзывы");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "N",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "Y",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"SEF_FOLDER" => "/rew/",\n		"SEF_URL_TEMPLATES" => array(\n			"news" => "index.php",\n			"section" => "",\n			"detail" => "#ELEMENT_ID#.php",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519727011),
('1bd47cda73ed8d6ce0a4a6dca5bb00afc', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2739:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "NAME",\n			1 => "DETAIL_TEXT",\n			2 => "DETAIL_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "[DOCS] Документы",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "NAME",\n			1 => "PREVIEW_TEXT",\n			2 => "PREVIEW_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Озывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519716360),
('1c07aa5f24e19dd386379b892cc70d596', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2559:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "NAME",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519724526),
('1c126dbe62b320b5159d37a15612f2eb8', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2554:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "N",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Озывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519722653),
('1c4eae8a9e712808db6f9c0d98c2571f7', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2554:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Озывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519722722),
('1c70228aa36922b4f0f3d511be9005cd2', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2496:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "",\n			1 => "",\n			2 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Озывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519716559),
('1c89288800cd85253a2afc5fb47946240', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/rew/index.php";s:7:"content";s:2600:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Отзывы");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "N",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "Y",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"SEF_FOLDER" => "/rew/",\n		"SEF_URL_TEMPLATES" => array(\n			"news" => "/rew/",\n			"section" => "",\n			"detail" => "#ELEMENT_ID#/",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519726830),
('1cab77b2ebd69d8c7e2583f2285606bb3', 'fileman', 'edit_menu', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/.top.menu.php";s:7:"content";s:500:"<?\n$aMenuLinks = Array(\n	Array(\n		"Компания", \n		"company/", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Новости", \n		"news/", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Продукция", \n		"products/", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Услуги", \n		"services/", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Партнерам", \n		"partneram/", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Отзывы", \n		"/rew/", \n		Array(), \n		Array(), \n		"" \n	)\n);\n?>";}', 1, 1519727603),
('1cac3d34784a0183cbbfc4311119b1521', 'fileman', 'new_file', 'CFileman::UndoNewFile', 'a:4:{s:7:"absPath";s:28:"/var/www/html/login/user.php";s:4:"path";s:15:"/login/user.php";s:4:"site";s:2:"s1";s:6:"public";s:1:"Y";}', 1, 1519731550),
('1cc716ad9a905a98f0edcbd0b20432860', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2712:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "NAME",\n			1 => "DETAIL_TEXT",\n			2 => "DETAIL_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "",\n			1 => "[DOCS] Документы",\n			2 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "NAME",\n			1 => "PREVIEW_TEXT",\n			2 => "PREVIEW_PICTURE",\n			3 => "DATE_ACTIVE_FROM",\n			4 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Озывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519653668),
('1d8d0defff14b4d41e9927b821c520e15', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:46:"/var/www/html/local/templates/exam1/header.php";s:7:"content";s:15198:"<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();\nIncludeTemplateLangFile(__FILE__);\n?>\n<!DOCTYPE html>\n<html lang="<?= LANGUAGE_ID ?>">\n\n<head>\n    <title><? $APPLICATION->ShowTitle() ?></title>\n    <? $APPLICATION->ShowHead(); ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/reset.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/style.css\') ?>\n    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . \'/css/owl.carousel.css\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/jquery.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/owl.carousel.min.js\') ?>\n    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . \'/js/scripts.js\') ?>\n    <link rel="icon" type="image/vnd.microsoft.icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n    <link rel="shortcut icon" href="<?= SITE_TEMPLATE_PATH . \'/img/\' ?>favicon.ico">\n</head>\n\n<body>\n<? $APPLICATION->ShowPanel() ?>\n<!-- wrap -->\n<div class="wrap">\n    <!-- header -->\n    <header class="header">\n        <div class="inner-wrap">\n            <div class="logo-block"><a href="" class="logo">Мебельный магазин</a>\n            </div>\n            <div class="main-phone-block">\n                <? if (localtime()[2] > 8 and localtime()[2] < 18): ?>\n                    <a href="tel:84952128506" class="phone">8 (495) 212-85-06</a>\n                <? else: ?>\n                    <a href="mailto:store@store.ru" class="phone">store@store.ru</a>\n                <? endif ?>\n                <div class="shedule">время работы с 9-00 до 18-00</div>\n            </div>\n            <div class="actions-block">\n                <form action="/" class="main-frm-search">\n                    <input type="text" placeholder="Поиск">\n                    <button type="submit"></button>\n                </form>\n                <?$APPLICATION->IncludeComponent(\n	"bitrix:system.auth.form", \n	"demo", \n	array(\n		"COMPONENT_TEMPLATE" => "demo",\n		"REGISTER_URL" => "/login/",\n		"FORGOT_PASSWORD_URL" => "",\n		"PROFILE_URL" => "/login/user.php",\n		"SHOW_ERRORS" => "Y"\n	),\n	false\n);?>\n            </div>\n        </div>\n    </header>\n    <!-- /header -->\n    <? $APPLICATION->IncludeComponent(\n        "bitrix:menu",\n        "top_horizontal_multilevel",\n        Array(\n            "ALLOW_MULTI_SELECT" => "N",\n            "CHILD_MENU_TYPE" => "left",\n            "DELAY" => "N",\n            "MAX_LEVEL" => "3",\n            "MENU_CACHE_GET_VARS" => array(0 => "",),\n            "MENU_CACHE_TIME" => "3600000",\n            "MENU_CACHE_TYPE" => "A",\n            "MENU_CACHE_USE_GROUPS" => "Y",\n            "ROOT_MENU_TYPE" => "top",\n            "USE_EXT" => "Y"\n        )\n    ); ?>\n    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n        <!-- breadcrumbs -->\n        <div class="breadcrumbs-box">\n            <div class="inner-wrap">\n                <a href="">Главная</a>\n                <a href="">Мебель</a>\n                <span>Выставки и события</span>\n            </div>\n        </div>\n        <!-- /breadcrumbs -->\n    <? endif ?>\n    <!-- page -->\n    <div class="page">\n        <!-- content box -->\n        <div class="content-box">\n            <!-- content -->\n            <div class="content">\n                <div class="cnt">\n                    <? if ($APPLICATION->GetCurDir() != \'/\'): ?>\n                        <header>\n                            <h1><? $APPLICATION->ShowTitle(false) ?></h1>\n                        </header>\n                    <? endif ?>\n                    <? if ($APPLICATION->GetCurDir() == \'/\'): ?>\n\n                        <p>«Мебельная компания» осуществляет производство мебели на высококлассном оборудовании с\n                            применением минимальной доли ручного труда, что позволяет обеспечить высокое качество нашей\n                            продукции. Налажен производственный процесс как массового и индивидуального характера, что с\n                            одной стороны позволяет обеспечить постоянную номенклатуру изделий и индивидуальный подход –\n                            с другой.\n                        </p>\n\n\n                        <!-- index column -->\n                        <div class="cnt-section index-column">\n                            <div class="col-wrap">\n\n                                <!-- main actions box -->\n                                <div class="column main-actions-box">\n                                    <div class="title-block">\n                                        <h2>Новинки</h2>\n                                        <hr>\n                                    </div>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new01.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new02.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title-block att">\n                                                    Угловой диван!\n                                                </div>\n                                                <br>\n                                                <div class="inner-block">\n                                                    <a href="" class="photo-block">\n                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new03.jpg" alt="">\n                                                    </a>\n                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим\n                                                            выбором расцветок и фактур.</a>\n                                                        <a href="" class="btn-arr"></a>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новинки</a>\n                                </div>\n                                <!-- /main actions box -->\n                                <!-- main news box -->\n                                <div class="column main-news-box">\n                                    <div class="title-block">\n                                        <h2>Новости</h2>\n                                    </div>\n                                    <hr>\n                                    <div class="items-wrap">\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Мастер-класс дизайнеров из Италии для\n                                                        производителей мебели </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Поступление лучших офисных кресел из\n                                                        Германии </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                        <div class="item-wrap">\n                                            <div class="item">\n                                                <div class="title"><a href="">29 августа 2012</a>\n                                                </div>\n                                                <div class="text"><a href="">Наша дилерская сеть расширилась теперь\n                                                        ассортимент наших товаров доступен в Казани </a>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                    <a href="" class="btn-next">Все новости</a>\n                                </div>\n                                <!-- /main news box -->\n\n                            </div>\n                        </div>\n                        <!-- /index column -->\n\n                        <!-- afisha box -->\n                        <div class="cnt-section afisha-box">\n                            <div class="section-title-block">\n                                <h2 class="second-ttile">Ближайшие мероприятия</h2>\n                                <a href="" class="btn-next">все мероприятия</a>\n                            </div>\n                            <hr>\n                            <div class="items-wrap">\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Семинар производителей мебели России и СНГ,\n                                                Обсуждение тенденций.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие шоу-рума на Невском проспекте. Последние\n                                                модели в большом ассортименте.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                                <div class="item-wrap">\n                                    <div class="item">\n                                        <div class="title"><a href="">29 августа 2012, Москва</a>\n                                        </div>\n                                        <div class="text"><a href="">Открытие нового магазина в нашей дилерской\n                                                сети.</a>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                        <!-- /afisha box -->\n                    <? endif ?>\n\n";}', 1, 1519732644),
('1dc0cf858eec601867987643206e8feb7', 'fileman', 'edit_menu', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:36:"/var/www/html/company/.left.menu.php";s:7:"content";s:536:"<?if(!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED!==true)die();?>\n<?\n$aMenuLinks = Array(\n	Array(\n		"О компании", \n		"./", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Руководство", \n		"management.php", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Миссия и стратегия", \n		"mission.php", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"История", \n		"history.php", \n		Array(), \n		Array(), \n		"" \n	),\n	Array(\n		"Вакансии", \n		"vacancies.php", \n		Array(), \n		Array(), \n		"" \n	)\n);\n?>";}', 1, 1519642924),
('1ec54a7ffff7a44b37c0951651c656eee', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2556:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "Y",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519724508),
('1edd7730ef7dda7325bfd1b754915e3eb', 'fileman', 'edit_component_props', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:27:"/var/www/html/rew/index.php";s:7:"content";s:2616:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("Отзывы");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "N",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "Y",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"SEF_FOLDER" => "/rew/",\n		"SEF_URL_TEMPLATES" => array(\n			"news" => "index.php",\n			"section" => "/reviews/",\n			"detail" => "#ELEMENT_ID#.php",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519727036),
('1f11150a60abb6286767e15bed931bad0', 'fileman', 'edit_file', 'CFileman::UndoEditFile', 'a:2:{s:7:"absPath";s:30:"/var/www/html/company/test.php";s:7:"content";s:2556:"<?\nrequire($_SERVER["DOCUMENT_ROOT"]."/bitrix/header.php");\n$APPLICATION->SetTitle("test");\n?><?$APPLICATION->IncludeComponent(\n	"bitrix:news", \n	"reviews", \n	array(\n		"ADD_ELEMENT_CHAIN" => "N",\n		"ADD_SECTIONS_CHAIN" => "N",\n		"AJAX_MODE" => "N",\n		"AJAX_OPTION_ADDITIONAL" => "",\n		"AJAX_OPTION_HISTORY" => "N",\n		"AJAX_OPTION_JUMP" => "N",\n		"AJAX_OPTION_STYLE" => "Y",\n		"BROWSER_TITLE" => "-",\n		"CACHE_FILTER" => "N",\n		"CACHE_GROUPS" => "Y",\n		"CACHE_TIME" => "36000000",\n		"CACHE_TYPE" => "A",\n		"CHECK_DATES" => "Y",\n		"DETAIL_ACTIVE_DATE_FORMAT" => "j F Y",\n		"DETAIL_DISPLAY_BOTTOM_PAGER" => "N",\n		"DETAIL_DISPLAY_TOP_PAGER" => "N",\n		"DETAIL_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"DETAIL_PAGER_SHOW_ALL" => "Y",\n		"DETAIL_PAGER_TEMPLATE" => "",\n		"DETAIL_PAGER_TITLE" => "Страница",\n		"DETAIL_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "DOCS",\n			3 => "",\n		),\n		"DETAIL_SET_CANONICAL_URL" => "N",\n		"DISPLAY_BOTTOM_PAGER" => "Y",\n		"DISPLAY_DATE" => "Y",\n		"DISPLAY_NAME" => "N",\n		"DISPLAY_PICTURE" => "Y",\n		"DISPLAY_PREVIEW_TEXT" => "Y",\n		"DISPLAY_TOP_PAGER" => "N",\n		"HIDE_LINK_WHEN_NO_DETAIL" => "N",\n		"IBLOCK_ID" => "5",\n		"IBLOCK_TYPE" => "reviews",\n		"INCLUDE_IBLOCK_INTO_CHAIN" => "Y",\n		"LIST_ACTIVE_DATE_FORMAT" => "j F Y",\n		"LIST_FIELD_CODE" => array(\n			0 => "",\n			1 => "",\n		),\n		"LIST_PROPERTY_CODE" => array(\n			0 => "POSITION",\n			1 => "COMPANY",\n			2 => "",\n		),\n		"MESSAGE_404" => "",\n		"META_DESCRIPTION" => "-",\n		"META_KEYWORDS" => "-",\n		"NEWS_COUNT" => "2",\n		"PAGER_BASE_LINK_ENABLE" => "Y",\n		"PAGER_DESC_NUMBERING" => "N",\n		"PAGER_DESC_NUMBERING_CACHE_TIME" => "36000",\n		"PAGER_SHOW_ALL" => "N",\n		"PAGER_SHOW_ALWAYS" => "N",\n		"PAGER_TEMPLATE" => ".default",\n		"PAGER_TITLE" => "Отзывы",\n		"PREVIEW_TRUNCATE_LEN" => "",\n		"SEF_MODE" => "N",\n		"SET_LAST_MODIFIED" => "N",\n		"SET_STATUS_404" => "N",\n		"SET_TITLE" => "Y",\n		"SHOW_404" => "N",\n		"SORT_BY1" => "ACTIVE_FROM",\n		"SORT_BY2" => "SORT",\n		"SORT_ORDER1" => "DESC",\n		"SORT_ORDER2" => "ASC",\n		"STRICT_SECTION_CHECK" => "N",\n		"USE_CATEGORIES" => "N",\n		"USE_FILTER" => "N",\n		"USE_PERMISSIONS" => "N",\n		"USE_RATING" => "N",\n		"USE_REVIEW" => "N",\n		"USE_RSS" => "N",\n		"USE_SEARCH" => "N",\n		"USE_SHARE" => "N",\n		"COMPONENT_TEMPLATE" => "reviews",\n		"PAGER_BASE_LINK" => "",\n		"PAGER_PARAMS_NAME" => "arrPager",\n		"VARIABLE_ALIASES" => array(\n			"SECTION_ID" => "SECTION_ID",\n			"ELEMENT_ID" => "ELEMENT_ID",\n		)\n	),\n	false\n);?><?require($_SERVER["DOCUMENT_ROOT"]."/bitrix/footer.php");?>";}', 1, 1519732498),
('206b885c3758d69f854edd264f744d3ff', 'main', 'autosave', 'CAutoSave::_Restore', 'a:16:{s:6:"filter";s:1:"Y";s:10:"set_filter";s:1:"Y";s:4:"site";s:2:"s1";s:7:"logical";s:0:"";s:4:"path";s:8:"/company";s:8:"saveperm";s:1:"Y";s:21:"filesX000091XX000093X";a:1:{i:0;s:11:"mission.php";}s:3:"g_2";s:1:"7";s:3:"g_3";s:7:"NOT_REF";s:3:"g_4";s:7:"NOT_REF";s:3:"g_5";s:7:"NOT_REF";s:5:"g_ALL";s:7:"NOT_REF";s:4:"save";s:0:"";s:5:"apply";s:0:"";s:6:"cancel";s:0:"";s:21:"tabControl_active_tab";s:5:"edit1";}', 1, 1519643041),
('22d389468efd663ec468211c6edea8dc2', 'main', 'autosave', 'CAutoSave::_Restore', 'a:16:{s:6:"filter";s:1:"Y";s:10:"set_filter";s:1:"Y";s:4:"site";s:2:"s1";s:7:"logical";s:0:"";s:4:"path";s:1:"/";s:8:"saveperm";s:1:"Y";s:21:"filesX000091XX000093X";a:1:{i:0;s:5:".idea";}s:3:"g_2";s:1:"7";s:3:"g_3";s:7:"NOT_REF";s:3:"g_4";s:7:"NOT_REF";s:3:"g_5";s:7:"NOT_REF";s:5:"g_ALL";s:7:"NOT_REF";s:4:"save";s:0:"";s:5:"apply";s:0:"";s:6:"cancel";s:0:"";s:21:"tabControl_active_tab";s:5:"edit1";}', 1, 1519635227),
('2574bc5fdb00338d7974fb79682967dbe', 'main', 'autosave', 'CAutoSave::_Restore', 'a:11:{s:9:"submitbtn";s:0:"";s:4:"mode";s:6:"public";s:4:"save";s:1:"Y";s:4:"site";s:2:"s1";s:8:"template";s:0:"";s:10:"templateID";s:5:"exam1";s:9:"subdialog";s:0:"";s:8:"back_url";s:7:"/login/";s:5:"title";s:22:"Вход на сайт";s:4:"path";s:16:"/login/index.php";s:11:"filesrc_pub";s:195:"<p>\n	Вы зарегистрированы и успешно авторизовались.\n</p>\n<p>\n	<a href="<?=SITE_DIR?>">Вернуться на главную страницу</a>\n</p>\n <br>";}', 1, 1519731490),
('27dbf584aeaf9cd2e13760e230ae2fb29', 'main', 'autosave', 'CAutoSave::_Restore', 'a:13:{s:6:"filter";s:1:"Y";s:10:"set_filter";s:1:"Y";s:6:"Update";s:1:"Y";s:7:"site_id";s:2:"s1";s:13:"CONDITION_OLD";s:0:"";s:9:"CONDITION";s:8:"#^/rew/#";s:2:"ID";s:11:"bitrix:news";s:9:"FILE_PATH";s:0:"";s:4:"RULE";s:0:"";s:4:"save";s:0:"";s:5:"apply";s:0:"";s:6:"cancel";s:0:"";s:21:"tabControl_active_tab";s:5:"edit1";}', 1, 1519726342);
INSERT INTO `b_undo` (`ID`, `MODULE_ID`, `UNDO_TYPE`, `UNDO_HANDLER`, `CONTENT`, `USER_ID`, `TIMESTAMP_X`) VALUES
('2b5153ee5d5181b7f2cc01c4fbd8e250d', 'main', 'autosave', 'CAutoSave::_Restore', 'a:11:{s:9:"submitbtn";s:0:"";s:4:"mode";s:6:"public";s:4:"save";s:1:"Y";s:4:"site";s:2:"s1";s:8:"template";s:0:"";s:10:"templateID";s:5:"exam1";s:9:"subdialog";s:0:"";s:8:"back_url";s:17:"/company/test.php";s:5:"title";s:4:"test";s:4:"path";s:17:"/company/test.php";s:11:"filesrc_pub";s:0:"";}', 1, 1519735823),
('2c43d071c468f08d6a3b69a1b552fe200', 'main', 'autosave', 'CAutoSave::_Restore', 'a:13:{s:6:"filter";s:1:"Y";s:10:"set_filter";s:1:"Y";s:6:"Update";s:1:"Y";s:7:"site_id";s:2:"s1";s:13:"CONDITION_OLD";s:8:"#^/rew/#";s:9:"CONDITION";s:16:"#^/rew/[/n].php#";s:2:"ID";s:11:"bitrix:news";s:9:"FILE_PATH";s:14:"/rew/index.php";s:4:"RULE";s:13:"ELEMENT_ID=$1";s:4:"save";s:0:"";s:5:"apply";s:0:"";s:6:"cancel";s:0:"";s:21:"tabControl_active_tab";s:5:"edit1";}', 1, 1519726544);

-- --------------------------------------------------------

--
-- Table structure for table `b_urlpreview_metadata`
--

CREATE TABLE `b_urlpreview_metadata` (
  `ID` int(11) NOT NULL,
  `URL` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TYPE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `DATE_INSERT` datetime NOT NULL,
  `DATE_EXPIRE` datetime DEFAULT NULL,
  `TITLE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `IMAGE_ID` int(11) DEFAULT NULL,
  `IMAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMBED` mediumtext COLLATE utf8_unicode_ci,
  `EXTRA` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_urlpreview_route`
--

CREATE TABLE `b_urlpreview_route` (
  `ID` int(11) NOT NULL,
  `ROUTE` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MODULE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CLASS` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `PARAMETERS` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_user`
--

CREATE TABLE `b_user` (
  `ID` int(18) NOT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `LOGIN` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CHECKWORD` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_LOGIN` datetime DEFAULT NULL,
  `DATE_REGISTER` datetime NOT NULL,
  `LID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PROFESSION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ICQ` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_GENDER` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDATE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PHOTO` int(18) DEFAULT NULL,
  `PERSONAL_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_MOBILE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STREET` text COLLATE utf8_unicode_ci,
  `PERSONAL_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_NOTES` text COLLATE utf8_unicode_ci,
  `WORK_COMPANY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_DEPARTMENT` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_WWW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PHONE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_FAX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PAGER` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STREET` text COLLATE utf8_unicode_ci,
  `WORK_MAILBOX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_CITY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_STATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_ZIP` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_COUNTRY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_PROFILE` text COLLATE utf8_unicode_ci,
  `WORK_LOGO` int(18) DEFAULT NULL,
  `WORK_NOTES` text COLLATE utf8_unicode_ci,
  `ADMIN_NOTES` text COLLATE utf8_unicode_ci,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PERSONAL_BIRTHDAY` date DEFAULT NULL,
  `EXTERNAL_AUTH_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CHECKWORD_TIME` datetime DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CONFIRM_CODE` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOGIN_ATTEMPTS` int(18) DEFAULT NULL,
  `LAST_ACTIVITY_DATE` datetime DEFAULT NULL,
  `AUTO_TIME_ZONE` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIME_ZONE_OFFSET` int(18) DEFAULT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BX_USER_ID` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_user`
--

INSERT INTO `b_user` (`ID`, `TIMESTAMP_X`, `LOGIN`, `PASSWORD`, `CHECKWORD`, `ACTIVE`, `NAME`, `LAST_NAME`, `EMAIL`, `LAST_LOGIN`, `DATE_REGISTER`, `LID`, `PERSONAL_PROFESSION`, `PERSONAL_WWW`, `PERSONAL_ICQ`, `PERSONAL_GENDER`, `PERSONAL_BIRTHDATE`, `PERSONAL_PHOTO`, `PERSONAL_PHONE`, `PERSONAL_FAX`, `PERSONAL_MOBILE`, `PERSONAL_PAGER`, `PERSONAL_STREET`, `PERSONAL_MAILBOX`, `PERSONAL_CITY`, `PERSONAL_STATE`, `PERSONAL_ZIP`, `PERSONAL_COUNTRY`, `PERSONAL_NOTES`, `WORK_COMPANY`, `WORK_DEPARTMENT`, `WORK_POSITION`, `WORK_WWW`, `WORK_PHONE`, `WORK_FAX`, `WORK_PAGER`, `WORK_STREET`, `WORK_MAILBOX`, `WORK_CITY`, `WORK_STATE`, `WORK_ZIP`, `WORK_COUNTRY`, `WORK_PROFILE`, `WORK_LOGO`, `WORK_NOTES`, `ADMIN_NOTES`, `STORED_HASH`, `XML_ID`, `PERSONAL_BIRTHDAY`, `EXTERNAL_AUTH_ID`, `CHECKWORD_TIME`, `SECOND_NAME`, `CONFIRM_CODE`, `LOGIN_ATTEMPTS`, `LAST_ACTIVITY_DATE`, `AUTO_TIME_ZONE`, `TIME_ZONE`, `TIME_ZONE_OFFSET`, `TITLE`, `BX_USER_ID`, `LANGUAGE_ID`) VALUES
(1, '2018-02-26 08:41:14', 'admin', '9KzCnoW82e932e6a3043f5386ca543699242c8bf', 'eSutm0Ti9092f896808e09dc83ff44f8410cdf64', 'Y', '', '', 'admin@ad.min', '2018-02-27 16:35:34', '2018-02-26 11:41:14', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-02-26 11:41:14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_user_access`
--

CREATE TABLE `b_user_access` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACCESS_CODE` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_user_access`
--

INSERT INTO `b_user_access` (`USER_ID`, `PROVIDER_ID`, `ACCESS_CODE`) VALUES
(0, 'group', 'G2'),
(1, 'user', 'U1'),
(1, 'group', 'G1'),
(1, 'group', 'G3'),
(1, 'group', 'G4'),
(1, 'group', 'G2');

-- --------------------------------------------------------

--
-- Table structure for table `b_user_access_check`
--

CREATE TABLE `b_user_access_check` (
  `USER_ID` int(11) DEFAULT NULL,
  `PROVIDER_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_user_access_check`
--

INSERT INTO `b_user_access_check` (`USER_ID`, `PROVIDER_ID`) VALUES
(1, 'group'),
(1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `b_user_auth_action`
--

CREATE TABLE `b_user_auth_action` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PRIORITY` int(11) NOT NULL DEFAULT '100',
  `ACTION` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTION_DATE` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_user_counter`
--

CREATE TABLE `b_user_counter` (
  `USER_ID` int(18) NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '**',
  `CODE` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CNT` int(18) NOT NULL DEFAULT '0',
  `LAST_DATE` datetime DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL DEFAULT '3000-01-01 00:00:00',
  `TAG` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PARAMS` text COLLATE utf8_unicode_ci,
  `SENT` char(1) COLLATE utf8_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_user_digest`
--

CREATE TABLE `b_user_digest` (
  `USER_ID` int(11) NOT NULL,
  `DIGEST_HA1` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_user_field`
--

CREATE TABLE `b_user_field` (
  `ID` int(11) NOT NULL,
  `ENTITY_ID` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FIELD_NAME` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `USER_TYPE_ID` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MULTIPLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `MANDATORY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_FILTER` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SHOW_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `EDIT_IN_LIST` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `IS_SEARCHABLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SETTINGS` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_user_field`
--

INSERT INTO `b_user_field` (`ID`, `ENTITY_ID`, `FIELD_NAME`, `USER_TYPE_ID`, `XML_ID`, `SORT`, `MULTIPLE`, `MANDATORY`, `SHOW_FILTER`, `SHOW_IN_LIST`, `EDIT_IN_LIST`, `IS_SEARCHABLE`, `SETTINGS`) VALUES
(1, 'BLOG_POST', 'UF_BLOG_POST_DOC', 'file', 'UF_BLOG_POST_DOC', 100, 'Y', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(2, 'BLOG_COMMENT', 'UF_BLOG_COMMENT_DOC', 'file', 'UF_BLOG_COMMENT_DOC', 100, 'Y', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(3, 'BLOG_POST', 'UF_BLOG_POST_URL_PRV', 'url_preview', 'UF_BLOG_POST_URL_PRV', 100, 'N', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(4, 'BLOG_COMMENT', 'UF_BLOG_COMM_URL_PRV', 'url_preview', 'UF_BLOG_COMM_URL_PRV', 100, 'N', 'N', 'N', 'N', 'Y', 'Y', 'a:0:{}'),
(5, 'BLOG_POST', 'UF_GRATITUDE', 'integer', 'UF_GRATITUDE', 100, 'N', 'N', 'N', 'N', 'Y', 'N', 'a:0:{}'),
(6, 'FORUM_MESSAGE', 'UF_FORUM_MES_URL_PRV', 'url_preview', 'UF_FORUM_MES_URL_PRV', 100, 'N', 'N', 'N', 'N', 'Y', 'N', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `b_user_field_confirm`
--

CREATE TABLE `b_user_field_confirm` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `DATE_CHANGE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `FIELD` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FIELD_VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CONFIRM_CODE` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_user_field_enum`
--

CREATE TABLE `b_user_field_enum` (
  `ID` int(11) NOT NULL,
  `USER_FIELD_ID` int(11) DEFAULT NULL,
  `VALUE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `DEF` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `SORT` int(11) NOT NULL DEFAULT '500',
  `XML_ID` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_user_field_lang`
--

CREATE TABLE `b_user_field_lang` (
  `USER_FIELD_ID` int(11) NOT NULL,
  `LANGUAGE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `EDIT_FORM_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_COLUMN_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LIST_FILTER_LABEL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ERROR_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HELP_MESSAGE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_user_group`
--

CREATE TABLE `b_user_group` (
  `USER_ID` int(18) NOT NULL,
  `GROUP_ID` int(18) NOT NULL,
  `DATE_ACTIVE_FROM` datetime DEFAULT NULL,
  `DATE_ACTIVE_TO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_user_group`
--

INSERT INTO `b_user_group` (`USER_ID`, `GROUP_ID`, `DATE_ACTIVE_FROM`, `DATE_ACTIVE_TO`) VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL),
(1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b_user_hit_auth`
--

CREATE TABLE `b_user_hit_auth` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TIMESTAMP_X` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_user_index`
--

CREATE TABLE `b_user_index` (
  `USER_ID` int(11) NOT NULL,
  `SEARCH_USER_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_DEPARTMENT_CONTENT` text COLLATE utf8_unicode_ci,
  `SEARCH_ADMIN_CONTENT` text COLLATE utf8_unicode_ci,
  `NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LAST_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SECOND_NAME` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WORK_POSITION` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UF_DEPARTMENT_NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_user_index`
--

INSERT INTO `b_user_index` (`USER_ID`, `SEARCH_USER_CONTENT`, `SEARCH_DEPARTMENT_CONTENT`, `SEARCH_ADMIN_CONTENT`, `NAME`, `LAST_NAME`, `SECOND_NAME`, `WORK_POSITION`, `UF_DEPARTMENT_NAME`) VALUES
(1, '001', '', '001 nqzva zva nqzva@nq.zva', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `b_user_option`
--

CREATE TABLE `b_user_option` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VALUE` mediumtext COLLATE utf8_unicode_ci,
  `COMMON` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_user_option`
--

INSERT INTO `b_user_option` (`ID`, `USER_ID`, `CATEGORY`, `NAME`, `VALUE`, `COMMON`) VALUES
(1, 0, 'intranet', '~gadgets_admin_index', 'a:1:{i:0;a:1:{s:7:"GADGETS";a:8:{s:20:"ADMIN_INFO@333333333";a:3:{s:6:"COLUMN";i:0;s:3:"ROW";i:0;s:4:"HIDE";s:1:"N";}s:19:"HTML_AREA@444444444";a:5:{s:6:"COLUMN";i:0;s:3:"ROW";i:1;s:4:"HIDE";s:1:"N";s:8:"USERDATA";a:1:{s:7:"content";s:797:"<table class="bx-gadgets-info-site-table" cellspacing="0"><tr>	<td class="bx-gadget-gray">Создатель сайта:</td>	<td>Группа компаний &laquo;1С-Битрикс&raquo;.</td>	<td class="bx-gadgets-info-site-logo" rowspan="5"><img src="/bitrix/components/bitrix/desktop/templates/admin/images/site_logo.png"></td></tr><tr>	<td class="bx-gadget-gray">Адрес сайта:</td>	<td><a href="http://www.1c-bitrix.ru">www.1c-bitrix.ru</a></td></tr><tr>	<td class="bx-gadget-gray">Сайт сдан:</td>	<td>12 декабря 2010 г.</td></tr><tr>	<td class="bx-gadget-gray">Ответственное лицо:</td>	<td>Иван Иванов</td></tr><tr>	<td class="bx-gadget-gray">E-mail:</td>	<td><a href="mailto:info@1c-bitrix.ru">info@1c-bitrix.ru</a></td></tr></table>";}s:8:"SETTINGS";a:1:{s:9:"TITLE_STD";s:34:"Информация о сайте";}}s:25:"ADMIN_CHECKLIST@777888999";a:3:{s:6:"COLUMN";i:0;s:3:"ROW";i:2;s:4:"HIDE";s:1:"N";}s:19:"RSSREADER@777777777";a:4:{s:6:"COLUMN";i:1;s:3:"ROW";i:3;s:4:"HIDE";s:1:"N";s:8:"SETTINGS";a:3:{s:9:"TITLE_STD";s:33:"Новости 1С-Битрикс";s:3:"CNT";i:10;s:7:"RSS_URL";s:45:"https://www.1c-bitrix.ru/about/life/news/rss/";}}s:24:"ADMIN_SECURITY@555555555";a:3:{s:6:"COLUMN";i:1;s:3:"ROW";i:0;s:4:"HIDE";s:1:"N";}s:25:"ADMIN_SITESPEED@666666777";a:3:{s:6:"COLUMN";i:1;s:3:"ROW";i:1;s:4:"HIDE";s:1:"N";}s:23:"ADMIN_PERFMON@666666666";a:3:{s:6:"COLUMN";i:1;s:3:"ROW";i:2;s:4:"HIDE";s:1:"N";}s:23:"ADMIN_MARKETPALCE@22549";a:3:{s:6:"COLUMN";i:1;s:3:"ROW";i:3;s:4:"HIDE";s:1:"N";}}}}', 'Y'),
(2, 0, 'main.interface', 'global', 'a:1:{s:5:"theme";s:9:"pale-blue";}', 'Y'),
(3, 1, 'admin_panel', 'settings', 'a:1:{s:4:"edit";s:3:"off";}', 'N'),
(4, 1, 'hot_keys', 'user_defined', 'b:1;', 'N'),
(5, 1, 'favorite', 'favorite_menu', 'a:1:{s:5:"stick";s:1:"N";}', 'N'),
(6, 1, 'main', 'helper_hero_admin', 'a:1:{s:4:"time";s:10:"1519738566";}', 'N'),
(9, 1, 'admin_menu', 'pos', 'a:1:{s:8:"sections";s:166:"menu_util,menu_fileman,backup,menu_system,menu_iblock,iblock_redirect,menu_iblock_/reviews,menu_lang,urlrewrite,iblock_admin,interface,menu_module_settings,menu_users";}', 'N'),
(20, 1, 'html_editor', 'user_settings_', 'a:2:{s:4:"view";s:7:"wysiwyg";s:13:"taskbar_shown";s:1:"1";}', 'N'),
(28, 1, 'fileman', 'last_pathes', 's:43:"a:2:{i:0;s:8:"/company";i:1;s:7:"/bitrix";}";', 'N'),
(32, 1, 'access_dialog_recent', 'other', 'a:2:{i:0;s:2:"AU";i:1;s:2:"G2";}', 'N'),
(38, 1, 'fileman', 'file_dialog_config', 's:26:"s1;/services;list;type;asc";', 'N'),
(42, 1, 'main.interface.grid', 'tbl_iblock_admin_74dcb1cec50854d2f880279f3dd19da9', 'a:3:{s:5:"views";a:1:{s:7:"default";a:2:{s:7:"columns";s:0:"";s:13:"columns_sizes";a:2:{s:6:"expand";i:1;s:7:"columns";a:0:{}}}}s:7:"filters";a:0:{}s:12:"current_view";s:7:"default";}', 'N'),
(49, 1, 'list', 'tbl_iblock_element_881cf6fa4474b7416b1203428b3ee67e', 'a:4:{s:7:"columns";s:54:"ID,ACTIVE,DATE_ACTIVE_FROM,NAME,PROPERTY_9,PROPERTY_10";s:2:"by";s:11:"timestamp_x";s:5:"order";s:4:"desc";s:9:"page_size";s:2:"20";}', 'N'),
(50, 0, 'list', 'tbl_iblock_element_881cf6fa4474b7416b1203428b3ee67e', 'a:4:{s:7:"columns";s:54:"ID,ACTIVE,DATE_ACTIVE_FROM,NAME,PROPERTY_9,PROPERTY_10";s:2:"by";s:11:"timestamp_x";s:5:"order";s:4:"desc";s:9:"page_size";s:2:"20";}', 'Y'),
(51, 1, 'form', 'form_element_5', 'a:1:{s:4:"tabs";s:1767:"cedit1--#--Основное--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--Начало активности--,--NAME--#--*Название--,--CODE--#--Символьный код--;--cedit2--#--Дополнительно--,--PROPERTY_9--#--Должность--,--PROPERTY_10--#--Компания--,--PREVIEW_PICTURE--#--Картинка для анонса--,--PREVIEW_TEXT--#--Описание для анонса--,--DETAIL_PICTURE--#--Детальная картинка--,--DETAIL_TEXT--#--Детальное описание--,--PROPERTY_11--#--Документы--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--";}', 'N'),
(59, 0, 'form', 'form_element_5', 'a:1:{s:4:"tabs";s:1767:"cedit1--#--Основное--,--ACTIVE--#--Активность--,--ACTIVE_FROM--#--Начало активности--,--NAME--#--*Название--,--CODE--#--Символьный код--;--cedit2--#--Дополнительно--,--PROPERTY_9--#--Должность--,--PROPERTY_10--#--Компания--,--PREVIEW_PICTURE--#--Картинка для анонса--,--PREVIEW_TEXT--#--Описание для анонса--,--DETAIL_PICTURE--#--Детальная картинка--,--DETAIL_TEXT--#--Детальное описание--,--PROPERTY_11--#--Документы--;--edit14--#--SEO--,--IPROPERTY_TEMPLATES_ELEMENT_META_TITLE--#--Шаблон META TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_META_KEYWORDS--#--Шаблон META KEYWORDS--,--IPROPERTY_TEMPLATES_ELEMENT_META_DESCRIPTION--#--Шаблон META DESCRIPTION--,--IPROPERTY_TEMPLATES_ELEMENT_PAGE_TITLE--#--Заголовок элемента--,--IPROPERTY_TEMPLATES_ELEMENTS_PREVIEW_PICTURE--#----Настройки для картинок анонса элементов--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_PREVIEW_PICTURE_FILE_NAME--#--Шаблон имени файла--,--IPROPERTY_TEMPLATES_ELEMENTS_DETAIL_PICTURE--#----Настройки для детальных картинок элементов--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_ALT--#--Шаблон ALT--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_TITLE--#--Шаблон TITLE--,--IPROPERTY_TEMPLATES_ELEMENT_DETAIL_PICTURE_FILE_NAME--#--Шаблон имени файла--,--SEO_ADDITIONAL--#----Дополнительно--,--TAGS--#--Теги--;--";}', 'Y'),
(87, 1, 'main.interface.grid', 'tbl_iblock_admin_508c75c8507a2ae5223dfd2faeb98122', 'a:3:{s:5:"views";a:1:{s:7:"default";a:2:{s:7:"columns";s:0:"";s:13:"columns_sizes";a:2:{s:6:"expand";i:1;s:7:"columns";a:0:{}}}}s:7:"filters";a:0:{}s:12:"current_view";s:7:"default";}', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `b_user_stored_auth`
--

CREATE TABLE `b_user_stored_auth` (
  `ID` int(18) NOT NULL,
  `USER_ID` int(18) NOT NULL,
  `DATE_REG` datetime NOT NULL,
  `LAST_AUTH` datetime NOT NULL,
  `STORED_HASH` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `TEMP_HASH` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `IP_ADDR` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_utm_blog_comment`
--

CREATE TABLE `b_utm_blog_comment` (
  `ID` int(11) NOT NULL,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_utm_blog_post`
--

CREATE TABLE `b_utm_blog_post` (
  `ID` int(11) NOT NULL,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_utm_forum_message`
--

CREATE TABLE `b_utm_forum_message` (
  `ID` int(11) NOT NULL,
  `VALUE_ID` int(11) NOT NULL,
  `FIELD_ID` int(11) NOT NULL,
  `VALUE` text COLLATE utf8_unicode_ci,
  `VALUE_INT` int(11) DEFAULT NULL,
  `VALUE_DOUBLE` float DEFAULT NULL,
  `VALUE_DATE` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_uts_blog_comment`
--

CREATE TABLE `b_uts_blog_comment` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_COMMENT_DOC` text COLLATE utf8_unicode_ci,
  `UF_BLOG_COMM_URL_PRV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_uts_blog_post`
--

CREATE TABLE `b_uts_blog_post` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_BLOG_POST_DOC` text COLLATE utf8_unicode_ci,
  `UF_BLOG_POST_URL_PRV` int(11) DEFAULT NULL,
  `UF_GRATITUDE` int(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_uts_forum_message`
--

CREATE TABLE `b_uts_forum_message` (
  `VALUE_ID` int(11) NOT NULL,
  `UF_FORUM_MES_URL_PRV` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote`
--

CREATE TABLE `b_vote` (
  `ID` int(18) NOT NULL,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `NOTIFY` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `AUTHOR_ID` int(18) DEFAULT NULL,
  `TIMESTAMP_X` datetime NOT NULL,
  `DATE_START` datetime NOT NULL,
  `DATE_END` datetime NOT NULL,
  `URL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `TITLE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DESCRIPTION` text COLLATE utf8_unicode_ci,
  `DESCRIPTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `EVENT1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EVENT3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UNIQUE_TYPE` int(18) NOT NULL DEFAULT '2',
  `KEEP_IP_SEC` int(18) DEFAULT NULL,
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `RESULT_TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_answer`
--

CREATE TABLE `b_vote_answer` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `QUESTION_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `MESSAGE` text COLLATE utf8_unicode_ci,
  `MESSAGE_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `COUNTER` int(18) NOT NULL DEFAULT '0',
  `FIELD_TYPE` int(5) NOT NULL DEFAULT '0',
  `FIELD_WIDTH` int(18) DEFAULT NULL,
  `FIELD_HEIGHT` int(18) DEFAULT NULL,
  `FIELD_PARAM` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `COLOR` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_attached_object`
--

CREATE TABLE `b_vote_attached_object` (
  `ID` int(11) NOT NULL,
  `OBJECT_ID` int(11) NOT NULL,
  `MODULE_ID` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_TYPE` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ENTITY_ID` int(11) NOT NULL,
  `CREATE_TIME` datetime NOT NULL,
  `CREATED_BY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_channel`
--

CREATE TABLE `b_vote_channel` (
  `ID` int(18) NOT NULL,
  `SYMBOLIC_NAME` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `C_SORT` int(18) DEFAULT '100',
  `FIRST_SITE_ID` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `HIDDEN` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `TIMESTAMP_X` datetime NOT NULL,
  `TITLE` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `VOTE_SINGLE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `USE_CAPTCHA` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_channel_2_group`
--

CREATE TABLE `b_vote_channel_2_group` (
  `ID` int(18) NOT NULL,
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `GROUP_ID` int(18) NOT NULL DEFAULT '0',
  `PERMISSION` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_channel_2_site`
--

CREATE TABLE `b_vote_channel_2_site` (
  `CHANNEL_ID` int(18) NOT NULL DEFAULT '0',
  `SITE_ID` char(2) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_event`
--

CREATE TABLE `b_vote_event` (
  `ID` int(18) NOT NULL,
  `VOTE_ID` int(18) NOT NULL DEFAULT '0',
  `VOTE_USER_ID` int(18) NOT NULL DEFAULT '0',
  `DATE_VOTE` datetime NOT NULL,
  `STAT_SESSION_ID` int(18) DEFAULT NULL,
  `IP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALID` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_event_answer`
--

CREATE TABLE `b_vote_event_answer` (
  `ID` int(18) NOT NULL,
  `EVENT_QUESTION_ID` int(18) NOT NULL DEFAULT '0',
  `ANSWER_ID` int(18) NOT NULL DEFAULT '0',
  `MESSAGE` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_event_question`
--

CREATE TABLE `b_vote_event_question` (
  `ID` int(18) NOT NULL,
  `EVENT_ID` int(18) NOT NULL DEFAULT '0',
  `QUESTION_ID` int(18) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_question`
--

CREATE TABLE `b_vote_question` (
  `ID` int(18) NOT NULL,
  `ACTIVE` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `TIMESTAMP_X` datetime NOT NULL,
  `VOTE_ID` int(18) NOT NULL DEFAULT '0',
  `C_SORT` int(18) DEFAULT '100',
  `COUNTER` int(11) NOT NULL DEFAULT '0',
  `QUESTION` text COLLATE utf8_unicode_ci NOT NULL,
  `QUESTION_TYPE` varchar(4) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'html',
  `IMAGE_ID` int(18) DEFAULT NULL,
  `DIAGRAM` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `REQUIRED` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N',
  `DIAGRAM_TYPE` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'histogram',
  `TEMPLATE` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TEMPLATE_NEW` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_vote_user`
--

CREATE TABLE `b_vote_user` (
  `ID` int(18) NOT NULL,
  `STAT_GUEST_ID` int(18) DEFAULT NULL,
  `AUTH_USER_ID` int(18) DEFAULT NULL,
  `COUNTER` int(18) NOT NULL DEFAULT '0',
  `DATE_FIRST` datetime NOT NULL,
  `DATE_LAST` datetime NOT NULL,
  `LAST_IP` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `b_xml_tree`
--

CREATE TABLE `b_xml_tree` (
  `ID` int(11) NOT NULL,
  `PARENT_ID` int(11) DEFAULT NULL,
  `LEFT_MARGIN` int(11) DEFAULT NULL,
  `RIGHT_MARGIN` int(11) DEFAULT NULL,
  `DEPTH_LEVEL` int(11) DEFAULT NULL,
  `NAME` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `VALUE` longtext COLLATE utf8_unicode_ci,
  `ATTRIBUTES` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `b_xml_tree`
--

INSERT INTO `b_xml_tree` (`ID`, `PARENT_ID`, `LEFT_MARGIN`, `RIGHT_MARGIN`, `DEPTH_LEVEL`, `NAME`, `VALUE`, `ATTRIBUTES`) VALUES
(1, 0, 1, 544, 0, 'КоммерческаяИнформация', NULL, 'a:2:{s:22:"ВерсияСхемы";s:5:"2.021";s:32:"ДатаФормирования";s:19:"2017-04-25T15:19:28";}'),
(2, 1, 2, 181, 1, 'Классификатор', NULL, NULL),
(3, 2, 3, 4, 2, 'Ид', '5', NULL),
(4, 2, 5, 6, 2, 'Наименование', 'Отзывы', NULL),
(5, 2, 7, 152, 2, 'Свойства', NULL, NULL),
(6, 5, 8, 15, 3, 'Свойство', NULL, NULL),
(7, 6, 9, 10, 4, 'Ид', 'CML2_ACTIVE', NULL),
(8, 6, 11, 12, 4, 'Наименование', 'БитриксАктивность', NULL),
(9, 6, 13, 14, 4, 'Множественное', 'false', NULL),
(10, 5, 16, 23, 3, 'Свойство', NULL, NULL),
(11, 10, 17, 18, 4, 'Ид', 'CML2_CODE', NULL),
(12, 10, 19, 20, 4, 'Наименование', 'Символьный код', NULL),
(13, 10, 21, 22, 4, 'Множественное', 'false', NULL),
(14, 5, 24, 31, 3, 'Свойство', NULL, NULL),
(15, 14, 25, 26, 4, 'Ид', 'CML2_SORT', NULL),
(16, 14, 27, 28, 4, 'Наименование', 'Сортировка', NULL),
(17, 14, 29, 30, 4, 'Множественное', 'false', NULL),
(18, 5, 32, 39, 3, 'Свойство', NULL, NULL),
(19, 18, 33, 34, 4, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(20, 18, 35, 36, 4, 'Наименование', 'Начало активности', NULL),
(21, 18, 37, 38, 4, 'Множественное', 'false', NULL),
(22, 5, 40, 47, 3, 'Свойство', NULL, NULL),
(23, 22, 41, 42, 4, 'Ид', 'CML2_ACTIVE_TO', NULL),
(24, 22, 43, 44, 4, 'Наименование', 'Окончание активности', NULL),
(25, 22, 45, 46, 4, 'Множественное', 'false', NULL),
(26, 5, 48, 55, 3, 'Свойство', NULL, NULL),
(27, 26, 49, 50, 4, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(28, 26, 51, 52, 4, 'Наименование', 'Анонс', NULL),
(29, 26, 53, 54, 4, 'Множественное', 'false', NULL),
(30, 5, 56, 63, 3, 'Свойство', NULL, NULL),
(31, 30, 57, 58, 4, 'Ид', 'CML2_DETAIL_TEXT', NULL),
(32, 30, 59, 60, 4, 'Наименование', 'Описание', NULL),
(33, 30, 61, 62, 4, 'Множественное', 'false', NULL),
(34, 5, 64, 71, 3, 'Свойство', NULL, NULL),
(35, 34, 65, 66, 4, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(36, 34, 67, 68, 4, 'Наименование', 'Картинка анонса', NULL),
(37, 34, 69, 70, 4, 'Множественное', 'false', NULL),
(38, 5, 72, 111, 3, 'Свойство', NULL, NULL),
(39, 38, 73, 74, 4, 'Ид', '9', NULL),
(40, 38, 75, 76, 4, 'Наименование', 'Должность', NULL),
(41, 38, 77, 78, 4, 'Множественное', 'false', NULL),
(42, 38, 79, 80, 4, 'БитриксСортировка', '500', NULL),
(43, 38, 81, 82, 4, 'БитриксКод', 'POSITION', NULL),
(44, 38, 83, 84, 4, 'БитриксТипСвойства', 'S', NULL),
(45, 38, 85, 86, 4, 'БитриксСтрок', '1', NULL),
(46, 38, 87, 88, 4, 'БитриксКолонок', '30', NULL),
(47, 38, 89, 90, 4, 'БитриксТипСписка', 'L', NULL),
(48, 38, 91, 92, 4, 'БитриксТипыФайлов', NULL, NULL),
(49, 38, 93, 94, 4, 'БитриксКоличествоПолей', '5', NULL),
(50, 38, 95, 96, 4, 'БитриксСвязанныйИнфоблок', NULL, NULL),
(51, 38, 97, 98, 4, 'БитриксОписаниеРазрешено', 'false', NULL),
(52, 38, 99, 100, 4, 'БитриксПоискРазрешен', 'false', NULL),
(53, 38, 101, 102, 4, 'БитриксФильтрРазрешен', 'false', NULL),
(54, 38, 103, 104, 4, 'БитриксРасширениеТипа', NULL, NULL),
(55, 38, 105, 106, 4, 'БитриксОбязательное', 'false', NULL),
(56, 38, 107, 108, 4, 'БитриксЗначениеПоУмолчанию', 's:0:"";', NULL),
(57, 38, 109, 110, 4, 'Сериализовано', '1', NULL),
(58, 5, 112, 151, 3, 'Свойство', NULL, NULL),
(59, 58, 113, 114, 4, 'Ид', '10', NULL),
(60, 58, 115, 116, 4, 'Наименование', 'Компания', NULL),
(61, 58, 117, 118, 4, 'Множественное', 'false', NULL),
(62, 58, 119, 120, 4, 'БитриксСортировка', '500', NULL),
(63, 58, 121, 122, 4, 'БитриксКод', 'COMPANY', NULL),
(64, 58, 123, 124, 4, 'БитриксТипСвойства', 'S', NULL),
(65, 58, 125, 126, 4, 'БитриксСтрок', '1', NULL),
(66, 58, 127, 128, 4, 'БитриксКолонок', '30', NULL),
(67, 58, 129, 130, 4, 'БитриксТипСписка', 'L', NULL),
(68, 58, 131, 132, 4, 'БитриксТипыФайлов', NULL, NULL),
(69, 58, 133, 134, 4, 'БитриксКоличествоПолей', '5', NULL),
(70, 58, 135, 136, 4, 'БитриксСвязанныйИнфоблок', NULL, NULL),
(71, 58, 137, 138, 4, 'БитриксОписаниеРазрешено', 'false', NULL),
(72, 58, 139, 140, 4, 'БитриксПоискРазрешен', 'false', NULL),
(73, 58, 141, 142, 4, 'БитриксФильтрРазрешен', 'false', NULL),
(74, 58, 143, 144, 4, 'БитриксРасширениеТипа', NULL, NULL),
(75, 58, 145, 146, 4, 'БитриксОбязательное', 'false', NULL),
(76, 58, 147, 148, 4, 'БитриксЗначениеПоУмолчанию', 's:0:"";', NULL),
(77, 58, 149, 150, 4, 'Сериализовано', '1', NULL),
(78, 2, 153, 178, 2, 'СвойстваЭлементов', NULL, NULL),
(79, 78, 154, 165, 3, 'Свойство', NULL, NULL),
(80, 79, 155, 156, 4, 'Ид', '9', NULL),
(81, 79, 157, 158, 4, 'УмныйФильтр', 'false', NULL),
(82, 79, 159, 160, 4, 'ТипОтображения', 'F', NULL),
(83, 79, 161, 162, 4, 'ПоказатьРазвёрнутым', 'false', NULL),
(84, 79, 163, 164, 4, 'Подсказка', NULL, NULL),
(85, 78, 166, 177, 3, 'Свойство', NULL, NULL),
(86, 85, 167, 168, 4, 'Ид', '10', NULL),
(87, 85, 169, 170, 4, 'УмныйФильтр', 'false', NULL),
(88, 85, 171, 172, 4, 'ТипОтображения', 'F', NULL),
(89, 85, 173, 174, 4, 'ПоказатьРазвёрнутым', 'false', NULL),
(90, 85, 175, 176, 4, 'Подсказка', NULL, NULL),
(91, 2, 179, 180, 2, 'Группы', NULL, NULL),
(92, 1, 182, 543, 1, 'Каталог', NULL, NULL),
(93, 92, 183, 184, 2, 'Ид', '5', NULL),
(94, 92, 185, 186, 2, 'ИдКлассификатора', '5', NULL),
(95, 92, 187, 188, 2, 'Наименование', 'Отзывы', NULL),
(96, 92, 189, 190, 2, 'БитриксКод', 'rew', NULL),
(97, 92, 191, 192, 2, 'БитриксСортировка', '500', NULL),
(98, 92, 193, 194, 2, 'БитриксURLСписок', '#SITE_DIR#/demo/index.php?ID=#IBLOCK_ID#', NULL),
(99, 92, 195, 196, 2, 'БитриксURLДеталь', '#SITE_DIR#/demo/detail.php?ID=#ELEMENT_ID#', NULL),
(100, 92, 197, 198, 2, 'БитриксURLРаздел', '#SITE_DIR#/demo/list.php?SECTION_ID=#SECTION_ID#', NULL),
(101, 92, 199, 200, 2, 'БитриксURLКанонический', NULL, NULL),
(102, 92, 201, 202, 2, 'БитриксКартинка', NULL, NULL),
(103, 92, 203, 204, 2, 'БитриксИндексироватьЭлементы', 'true', NULL),
(104, 92, 205, 206, 2, 'БитриксИндексироватьРазделы', 'true', NULL),
(105, 92, 207, 208, 2, 'БитриксДокументооборот', 'false', NULL),
(106, 92, 209, 270, 2, 'БитриксПодписи', NULL, NULL),
(107, 106, 210, 215, 3, 'БитриксПодпись', NULL, NULL),
(108, 107, 211, 212, 4, 'Ид', 'ELEMENT_NAME', NULL),
(109, 107, 213, 214, 4, 'Значение', 'Элемент', NULL),
(110, 106, 216, 221, 3, 'БитриксПодпись', NULL, NULL),
(111, 110, 217, 218, 4, 'Ид', 'ELEMENTS_NAME', NULL),
(112, 110, 219, 220, 4, 'Значение', 'Элементы', NULL),
(113, 106, 222, 227, 3, 'БитриксПодпись', NULL, NULL),
(114, 113, 223, 224, 4, 'Ид', 'ELEMENT_ADD', NULL),
(115, 113, 225, 226, 4, 'Значение', 'Добавить элемент', NULL),
(116, 106, 228, 233, 3, 'БитриксПодпись', NULL, NULL),
(117, 116, 229, 230, 4, 'Ид', 'ELEMENT_EDIT', NULL),
(118, 116, 231, 232, 4, 'Значение', 'Изменить элемент', NULL),
(119, 106, 234, 239, 3, 'БитриксПодпись', NULL, NULL),
(120, 119, 235, 236, 4, 'Ид', 'ELEMENT_DELETE', NULL),
(121, 119, 237, 238, 4, 'Значение', 'Удалить элемент', NULL),
(122, 106, 240, 245, 3, 'БитриксПодпись', NULL, NULL),
(123, 122, 241, 242, 4, 'Ид', 'SECTION_NAME', NULL),
(124, 122, 243, 244, 4, 'Значение', 'Раздел', NULL),
(125, 106, 246, 251, 3, 'БитриксПодпись', NULL, NULL),
(126, 125, 247, 248, 4, 'Ид', 'SECTIONS_NAME', NULL),
(127, 125, 249, 250, 4, 'Значение', 'Разделы', NULL),
(128, 106, 252, 257, 3, 'БитриксПодпись', NULL, NULL),
(129, 128, 253, 254, 4, 'Ид', 'SECTION_ADD', NULL),
(130, 128, 255, 256, 4, 'Значение', 'Добавить раздел', NULL),
(131, 106, 258, 263, 3, 'БитриксПодпись', NULL, NULL),
(132, 131, 259, 260, 4, 'Ид', 'SECTION_EDIT', NULL),
(133, 131, 261, 262, 4, 'Значение', 'Изменить раздел', NULL),
(134, 106, 264, 269, 3, 'БитриксПодпись', NULL, NULL),
(135, 134, 265, 266, 4, 'Ид', 'SECTION_DELETE', NULL),
(136, 134, 267, 268, 4, 'Значение', 'Удалить раздел', NULL),
(137, 92, 271, 542, 2, 'Товары', NULL, NULL),
(138, 137, 272, 361, 3, 'Товар', NULL, NULL),
(139, 138, 273, 274, 4, 'Ид', '33', NULL),
(140, 138, 275, 276, 4, 'Наименование', 'Cергей Родионов', NULL),
(141, 138, 277, 278, 4, 'БитриксТеги', NULL, NULL),
(142, 138, 279, 280, 4, 'Группы', NULL, NULL),
(143, 138, 281, 282, 4, 'Картинка', 'rew_files/iblock/ca0/ca077a2b25a7018337efd6b66bc08738.jpg', NULL),
(144, 138, 283, 360, 4, 'ЗначенияСвойств', NULL, NULL),
(145, 144, 284, 289, 5, 'ЗначенияСвойства', NULL, NULL),
(146, 145, 285, 286, 6, 'Ид', 'CML2_ACTIVE', NULL),
(147, 145, 287, 288, 6, 'Значение', 'true', NULL),
(148, 144, 290, 295, 5, 'ЗначенияСвойства', NULL, NULL),
(149, 148, 291, 292, 6, 'Ид', 'CML2_CODE', NULL),
(150, 148, 293, 294, 6, 'Значение', 'cergey-rodionov', NULL),
(151, 144, 296, 301, 5, 'ЗначенияСвойства', NULL, NULL),
(152, 151, 297, 298, 6, 'Ид', 'CML2_SORT', NULL),
(153, 151, 299, 300, 6, 'Значение', '500', NULL),
(154, 144, 302, 307, 5, 'ЗначенияСвойства', NULL, NULL),
(155, 154, 303, 304, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(156, 154, 305, 306, 6, 'Значение', '2017-04-17 14:21:00', NULL),
(157, 144, 308, 313, 5, 'ЗначенияСвойства', NULL, NULL),
(158, 157, 309, 310, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(159, 157, 311, 312, 6, 'Значение', NULL, NULL),
(160, 144, 314, 321, 5, 'ЗначенияСвойства', NULL, NULL),
(161, 160, 315, 316, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(162, 160, 317, 318, 6, 'Значение', 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.', NULL),
(163, 160, 319, 320, 6, 'Тип', 'text', NULL),
(164, 144, 322, 329, 5, 'ЗначенияСвойства', NULL, NULL),
(165, 164, 323, 324, 6, 'Ид', 'CML2_DETAIL_TEXT', NULL),
(166, 164, 325, 326, 6, 'Значение', 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.', NULL),
(167, 164, 327, 328, 6, 'Тип', 'text', NULL),
(168, 144, 330, 335, 5, 'ЗначенияСвойства', NULL, NULL),
(169, 168, 331, 332, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(170, 168, 333, 334, 6, 'Значение', 'rew_files/iblock/91d/91df8ed14b6a59b55ed4fcffc3785617.jpg', NULL),
(171, 144, 336, 347, 5, 'ЗначенияСвойства', NULL, NULL),
(172, 171, 337, 338, 6, 'Ид', '9', NULL),
(173, 171, 339, 340, 6, 'Значение', 'Генеральный директор', NULL),
(174, 171, 341, 346, 6, 'ЗначениеСвойства', NULL, NULL),
(175, 174, 342, 343, 7, 'Значение', 'Генеральный директор', NULL),
(176, 174, 344, 345, 7, 'Описание', NULL, NULL),
(177, 144, 348, 359, 5, 'ЗначенияСвойства', NULL, NULL),
(178, 177, 349, 350, 6, 'Ид', '10', NULL),
(179, 177, 351, 352, 6, 'Значение', 'CTC-Медиа', NULL),
(180, 177, 353, 358, 6, 'ЗначениеСвойства', NULL, NULL),
(181, 180, 354, 355, 7, 'Значение', 'CTC-Медиа', NULL),
(182, 180, 356, 357, 7, 'Описание', NULL, NULL),
(183, 137, 362, 451, 3, 'Товар', NULL, NULL),
(184, 183, 363, 364, 4, 'Ид', '34', NULL),
(185, 183, 365, 366, 4, 'Наименование', 'Анна Андреева', NULL),
(186, 183, 367, 368, 4, 'БитриксТеги', NULL, NULL),
(187, 183, 369, 370, 4, 'Группы', NULL, NULL),
(188, 183, 371, 372, 4, 'Картинка', 'rew_files/iblock/238/238f151e99ef1afafb7d41fa08d1660b.jpg', NULL),
(189, 183, 373, 450, 4, 'ЗначенияСвойств', NULL, NULL),
(190, 189, 374, 379, 5, 'ЗначенияСвойства', NULL, NULL),
(191, 190, 375, 376, 6, 'Ид', 'CML2_ACTIVE', NULL),
(192, 190, 377, 378, 6, 'Значение', 'true', NULL),
(193, 189, 380, 385, 5, 'ЗначенияСвойства', NULL, NULL),
(194, 193, 381, 382, 6, 'Ид', 'CML2_CODE', NULL),
(195, 193, 383, 384, 6, 'Значение', 'anna-andreeva', NULL),
(196, 189, 386, 391, 5, 'ЗначенияСвойства', NULL, NULL),
(197, 196, 387, 388, 6, 'Ид', 'CML2_SORT', NULL),
(198, 196, 389, 390, 6, 'Значение', '500', NULL),
(199, 189, 392, 397, 5, 'ЗначенияСвойства', NULL, NULL),
(200, 199, 393, 394, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(201, 199, 395, 396, 6, 'Значение', '2017-04-10 14:21:00', NULL),
(202, 189, 398, 403, 5, 'ЗначенияСвойства', NULL, NULL),
(203, 202, 399, 400, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(204, 202, 401, 402, 6, 'Значение', NULL, NULL),
(205, 189, 404, 411, 5, 'ЗначенияСвойства', NULL, NULL),
(206, 205, 405, 406, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(207, 205, 407, 408, 6, 'Значение', 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.', NULL),
(208, 205, 409, 410, 6, 'Тип', 'text', NULL),
(209, 189, 412, 419, 5, 'ЗначенияСвойства', NULL, NULL),
(210, 209, 413, 414, 6, 'Ид', 'CML2_DETAIL_TEXT', NULL),
(211, 209, 415, 416, 6, 'Значение', 'Вы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.\r\nВы сможете организовать внутри компании коллективную работу над проектами в рабочих группах, вести учет и планирование времени и событий, обмениваться сообщениями и почтой через портал, проводить внутри компании видеоконференции и делать многое другое.', NULL),
(212, 209, 417, 418, 6, 'Тип', 'text', NULL),
(213, 189, 420, 425, 5, 'ЗначенияСвойства', NULL, NULL),
(214, 213, 421, 422, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(215, 213, 423, 424, 6, 'Значение', 'rew_files/iblock/a1b/a1ba9e841dfec3556477afc50b324cf8.jpg', NULL),
(216, 189, 426, 437, 5, 'ЗначенияСвойства', NULL, NULL),
(217, 216, 427, 428, 6, 'Ид', '9', NULL),
(218, 216, 429, 430, 6, 'Значение', 'Маркетолог', NULL),
(219, 216, 431, 436, 6, 'ЗначениеСвойства', NULL, NULL),
(220, 219, 432, 433, 7, 'Значение', 'Маркетолог', NULL),
(221, 219, 434, 435, 7, 'Описание', NULL, NULL),
(222, 189, 438, 449, 5, 'ЗначенияСвойства', NULL, NULL),
(223, 222, 439, 440, 6, 'Ид', '10', NULL),
(224, 222, 441, 442, 6, 'Значение', 'RK-Telecom', NULL),
(225, 222, 443, 448, 6, 'ЗначениеСвойства', NULL, NULL),
(226, 225, 444, 445, 7, 'Значение', 'RK-Telecom', NULL),
(227, 225, 446, 447, 7, 'Описание', NULL, NULL),
(228, 137, 452, 541, 3, 'Товар', NULL, NULL),
(229, 228, 453, 454, 4, 'Ид', '35', NULL),
(230, 228, 455, 456, 4, 'Наименование', 'Дмитрия Пялов', NULL),
(231, 228, 457, 458, 4, 'БитриксТеги', NULL, NULL),
(232, 228, 459, 460, 4, 'Группы', NULL, NULL),
(233, 228, 461, 462, 4, 'Картинка', 'rew_files/iblock/6c9/6c964a9a002c13ab8da7b43d47db996e.jpg', NULL),
(234, 228, 463, 540, 4, 'ЗначенияСвойств', NULL, NULL),
(235, 234, 464, 469, 5, 'ЗначенияСвойства', NULL, NULL),
(236, 235, 465, 466, 6, 'Ид', 'CML2_ACTIVE', NULL),
(237, 235, 467, 468, 6, 'Значение', 'true', NULL),
(238, 234, 470, 475, 5, 'ЗначенияСвойства', NULL, NULL),
(239, 238, 471, 472, 6, 'Ид', 'CML2_CODE', NULL),
(240, 238, 473, 474, 6, 'Значение', 'dmitriya-pyalov', NULL),
(241, 234, 476, 481, 5, 'ЗначенияСвойства', NULL, NULL),
(242, 241, 477, 478, 6, 'Ид', 'CML2_SORT', NULL),
(243, 241, 479, 480, 6, 'Значение', '500', NULL),
(244, 234, 482, 487, 5, 'ЗначенияСвойства', NULL, NULL),
(245, 244, 483, 484, 6, 'Ид', 'CML2_ACTIVE_FROM', NULL),
(246, 244, 485, 486, 6, 'Значение', '2017-04-24 14:21:00', NULL),
(247, 234, 488, 493, 5, 'ЗначенияСвойства', NULL, NULL),
(248, 247, 489, 490, 6, 'Ид', 'CML2_ACTIVE_TO', NULL),
(249, 247, 491, 492, 6, 'Значение', NULL, NULL),
(250, 234, 494, 501, 5, 'ЗначенияСвойства', NULL, NULL),
(251, 250, 495, 496, 6, 'Ид', 'CML2_PREVIEW_TEXT', NULL),
(252, 250, 497, 498, 6, 'Значение', 'Можете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала', NULL),
(253, 250, 499, 500, 6, 'Тип', 'text', NULL),
(254, 234, 502, 509, 5, 'ЗначенияСвойства', NULL, NULL),
(255, 254, 503, 504, 6, 'Ид', 'CML2_DETAIL_TEXT', NULL),
(256, 254, 505, 506, 6, 'Значение', 'Можете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала.\r\nМожете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала.\r\nМожете сразу перейти с «младшей», базовой редакции на «Бизнес-процессы». После такого перехода ваш портал можно будет интегрировать с внешним сайтом, на портале добавятся возможности визуального проектирования бизнес-процессов и управления списками, включая списки в рабочих группах. Кроме того, вы сможете анализировать посещаемость своего портала.\r\n', NULL),
(257, 254, 507, 508, 6, 'Тип', 'text', NULL),
(258, 234, 510, 515, 5, 'ЗначенияСвойства', NULL, NULL),
(259, 258, 511, 512, 6, 'Ид', 'CML2_PREVIEW_PICTURE', NULL),
(260, 258, 513, 514, 6, 'Значение', 'rew_files/iblock/ddb/ddb10f62a8ef9260fef9242d792c0111.jpg', NULL),
(261, 234, 516, 527, 5, 'ЗначенияСвойства', NULL, NULL),
(262, 261, 517, 518, 6, 'Ид', '9', NULL),
(263, 261, 519, 520, 6, 'Значение', 'программист ', NULL),
(264, 261, 521, 526, 6, 'ЗначениеСвойства', NULL, NULL),
(265, 264, 522, 523, 7, 'Значение', 'программист ', NULL),
(266, 264, 524, 525, 7, 'Описание', NULL, NULL),
(267, 234, 528, 539, 5, 'ЗначенияСвойства', NULL, NULL),
(268, 267, 529, 530, 6, 'Ид', '10', NULL),
(269, 267, 531, 532, 6, 'Значение', '.NET-девелопмент', NULL),
(270, 267, 533, 538, 6, 'ЗначениеСвойства', NULL, NULL),
(271, 270, 534, 535, 7, 'Значение', '.NET-девелопмент', NULL),
(272, 270, 536, 537, 7, 'Описание', NULL, NULL),
(273, 0, 33, 0, 0, '', NULL, NULL),
(274, 0, 34, 0, 0, '', NULL, NULL),
(275, 0, 35, 0, 0, '', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b_admin_notify`
--
ALTER TABLE `b_admin_notify`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_AD_TAG` (`TAG`);

--
-- Indexes for table `b_admin_notify_lang`
--
ALTER TABLE `b_admin_notify_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_ADM_NTFY_LANG` (`NOTIFY_ID`,`LID`),
  ADD KEY `IX_ADM_NTFY_LID` (`LID`);

--
-- Indexes for table `b_agent`
--
ALTER TABLE `b_agent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_act_next_exec` (`ACTIVE`,`NEXT_EXEC`),
  ADD KEY `ix_agent_user_id` (`USER_ID`),
  ADD KEY `ix_agent_name` (`NAME`(100));

--
-- Indexes for table `b_app_password`
--
ALTER TABLE `b_app_password`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_app_password_user` (`USER_ID`);

--
-- Indexes for table `b_b24connector_buttons`
--
ALTER TABLE `b_b24connector_buttons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_bitrixcloud_option`
--
ALTER TABLE `b_bitrixcloud_option`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_bitrixcloud_option_1` (`NAME`);

--
-- Indexes for table `b_blog`
--
ALTER TABLE `b_blog`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_BLOG_4` (`URL`),
  ADD KEY `IX_BLOG_BLOG_1` (`GROUP_ID`,`ACTIVE`),
  ADD KEY `IX_BLOG_BLOG_2` (`OWNER_ID`),
  ADD KEY `IX_BLOG_BLOG_5` (`LAST_POST_DATE`),
  ADD KEY `IX_BLOG_BLOG_6` (`SOCNET_GROUP_ID`);

--
-- Indexes for table `b_blog_category`
--
ALTER TABLE `b_blog_category`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_CAT_1` (`BLOG_ID`,`NAME`);

--
-- Indexes for table `b_blog_comment`
--
ALTER TABLE `b_blog_comment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_COMM_1` (`BLOG_ID`,`POST_ID`),
  ADD KEY `IX_BLOG_COMM_2` (`AUTHOR_ID`),
  ADD KEY `IX_BLOG_COMM_3` (`DATE_CREATE`,`AUTHOR_ID`),
  ADD KEY `IX_BLOG_COMM_4` (`POST_ID`);

--
-- Indexes for table `b_blog_group`
--
ALTER TABLE `b_blog_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_GROUP_1` (`SITE_ID`);

--
-- Indexes for table `b_blog_image`
--
ALTER TABLE `b_blog_image`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_IMAGE_1` (`POST_ID`,`BLOG_ID`);

--
-- Indexes for table `b_blog_post`
--
ALTER TABLE `b_blog_post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_POST_1` (`BLOG_ID`,`PUBLISH_STATUS`,`DATE_PUBLISH`),
  ADD KEY `IX_BLOG_POST_2` (`BLOG_ID`,`DATE_PUBLISH`,`PUBLISH_STATUS`),
  ADD KEY `IX_BLOG_POST_3` (`BLOG_ID`,`CATEGORY_ID`),
  ADD KEY `IX_BLOG_POST_4` (`PUBLISH_STATUS`,`DATE_PUBLISH`),
  ADD KEY `IX_BLOG_POST_5` (`DATE_PUBLISH`,`AUTHOR_ID`),
  ADD KEY `IX_BLOG_POST_CODE` (`BLOG_ID`,`CODE`),
  ADD KEY `IX_BLOG_POST_6` (`CODE`);

--
-- Indexes for table `b_blog_post_category`
--
ALTER TABLE `b_blog_post_category`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_POST_CATEGORY` (`POST_ID`,`CATEGORY_ID`),
  ADD KEY `IX_BLOG_POST_CATEGORY_CAT_ID` (`CATEGORY_ID`);

--
-- Indexes for table `b_blog_post_param`
--
ALTER TABLE `b_blog_post_param`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_PP_1` (`POST_ID`,`USER_ID`),
  ADD KEY `IX_BLOG_PP_2` (`USER_ID`);

--
-- Indexes for table `b_blog_site_path`
--
ALTER TABLE `b_blog_site_path`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_SITE_PATH_2` (`SITE_ID`,`TYPE`);

--
-- Indexes for table `b_blog_socnet`
--
ALTER TABLE `b_blog_socnet`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_SOCNET` (`BLOG_ID`);

--
-- Indexes for table `b_blog_socnet_rights`
--
ALTER TABLE `b_blog_socnet_rights`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_SR_1` (`POST_ID`);

--
-- Indexes for table `b_blog_trackback`
--
ALTER TABLE `b_blog_trackback`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_TRBK_1` (`BLOG_ID`,`POST_ID`),
  ADD KEY `IX_BLOG_TRBK_2` (`POST_ID`);

--
-- Indexes for table `b_blog_user`
--
ALTER TABLE `b_blog_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_USER_1` (`USER_ID`),
  ADD KEY `IX_BLOG_USER_2` (`ALIAS`);

--
-- Indexes for table `b_blog_user2blog`
--
ALTER TABLE `b_blog_user2blog`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`BLOG_ID`,`USER_ID`);

--
-- Indexes for table `b_blog_user2user_group`
--
ALTER TABLE `b_blog_user2user_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_USER2GROUP_1` (`USER_ID`,`BLOG_ID`,`USER_GROUP_ID`);

--
-- Indexes for table `b_blog_user_group`
--
ALTER TABLE `b_blog_user_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_BLOG_USER_GROUP_1` (`BLOG_ID`);

--
-- Indexes for table `b_blog_user_group_perms`
--
ALTER TABLE `b_blog_user_group_perms`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_BLOG_UG_PERMS_1` (`BLOG_ID`,`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  ADD KEY `IX_BLOG_UG_PERMS_2` (`USER_GROUP_ID`,`PERMS_TYPE`,`POST_ID`),
  ADD KEY `IX_BLOG_UG_PERMS_3` (`POST_ID`,`USER_GROUP_ID`,`PERMS_TYPE`);

--
-- Indexes for table `b_cache_tag`
--
ALTER TABLE `b_cache_tag`
  ADD KEY `ix_b_cache_tag_0` (`SITE_ID`,`CACHE_SALT`,`RELATIVE_PATH`(50)),
  ADD KEY `ix_b_cache_tag_1` (`TAG`);

--
-- Indexes for table `b_captcha`
--
ALTER TABLE `b_captcha`
  ADD UNIQUE KEY `UX_B_CAPTCHA` (`ID`);

--
-- Indexes for table `b_checklist`
--
ALTER TABLE `b_checklist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_clouds_file_bucket`
--
ALTER TABLE `b_clouds_file_bucket`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_clouds_file_resize`
--
ALTER TABLE `b_clouds_file_resize`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_file_resize_ts` (`TIMESTAMP_X`),
  ADD KEY `ix_b_file_resize_path` (`TO_PATH`(100)),
  ADD KEY `ix_b_file_resize_file` (`FILE_ID`);

--
-- Indexes for table `b_clouds_file_upload`
--
ALTER TABLE `b_clouds_file_upload`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_component_params`
--
ALTER TABLE `b_component_params`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_comp_params_name` (`COMPONENT_NAME`),
  ADD KEY `ix_comp_params_path` (`SITE_ID`,`REAL_PATH`),
  ADD KEY `ix_comp_params_sname` (`SITE_ID`,`COMPONENT_NAME`);

--
-- Indexes for table `b_composite_log`
--
ALTER TABLE `b_composite_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_COMPOSITE_LOG_PAGE_ID` (`PAGE_ID`),
  ADD KEY `IX_B_COMPOSITE_LOG_HOST` (`HOST`),
  ADD KEY `IX_B_COMPOSITE_LOG_TYPE` (`TYPE`);

--
-- Indexes for table `b_composite_page`
--
ALTER TABLE `b_composite_page`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_COMPOSITE_PAGE_CACHE_KEY` (`CACHE_KEY`(100)),
  ADD KEY `IX_B_COMPOSITE_PAGE_VIEWED` (`LAST_VIEWED`),
  ADD KEY `IX_B_COMPOSITE_PAGE_HOST` (`HOST`);

--
-- Indexes for table `b_consent_agreement`
--
ALTER TABLE `b_consent_agreement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_AGREEMENT_CODE` (`CODE`);

--
-- Indexes for table `b_consent_field`
--
ALTER TABLE `b_consent_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_FIELD_AG_ID` (`AGREEMENT_ID`);

--
-- Indexes for table `b_consent_user_consent`
--
ALTER TABLE `b_consent_user_consent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_CONSENT_USER_CONSENT` (`AGREEMENT_ID`);

--
-- Indexes for table `b_counter_data`
--
ALTER TABLE `b_counter_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_culture`
--
ALTER TABLE `b_culture`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_event`
--
ALTER TABLE `b_event`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_success` (`SUCCESS_EXEC`),
  ADD KEY `ix_b_event_date_exec` (`DATE_EXEC`);

--
-- Indexes for table `b_event_attachment`
--
ALTER TABLE `b_event_attachment`
  ADD PRIMARY KEY (`EVENT_ID`,`FILE_ID`);

--
-- Indexes for table `b_event_log`
--
ALTER TABLE `b_event_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_event_log_time` (`TIMESTAMP_X`),
  ADD KEY `ix_b_event_log_audit_type` (`AUDIT_TYPE_ID`);

--
-- Indexes for table `b_event_message`
--
ALTER TABLE `b_event_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_event_message_name` (`EVENT_NAME`(50));

--
-- Indexes for table `b_event_message_attachment`
--
ALTER TABLE `b_event_message_attachment`
  ADD PRIMARY KEY (`EVENT_MESSAGE_ID`,`FILE_ID`);

--
-- Indexes for table `b_event_message_site`
--
ALTER TABLE `b_event_message_site`
  ADD PRIMARY KEY (`EVENT_MESSAGE_ID`,`SITE_ID`);

--
-- Indexes for table `b_event_type`
--
ALTER TABLE `b_event_type`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_1` (`EVENT_NAME`,`LID`);

--
-- Indexes for table `b_favorite`
--
ALTER TABLE `b_favorite`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_file`
--
ALTER TABLE `b_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FILE_EXTERNAL_ID` (`EXTERNAL_ID`);

--
-- Indexes for table `b_file_search`
--
ALTER TABLE `b_file_search`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_filters`
--
ALTER TABLE `b_filters`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_finder_dest`
--
ALTER TABLE `b_finder_dest`
  ADD PRIMARY KEY (`USER_ID`,`CODE`,`CONTEXT`),
  ADD KEY `IX_FINDER_DEST` (`CODE_TYPE`);

--
-- Indexes for table `b_form`
--
ALTER TABLE `b_form`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_SID` (`SID`);

--
-- Indexes for table `b_form_2_group`
--
ALTER TABLE `b_form_2_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`);

--
-- Indexes for table `b_form_2_mail_template`
--
ALTER TABLE `b_form_2_mail_template`
  ADD PRIMARY KEY (`FORM_ID`,`MAIL_TEMPLATE_ID`);

--
-- Indexes for table `b_form_2_site`
--
ALTER TABLE `b_form_2_site`
  ADD PRIMARY KEY (`FORM_ID`,`SITE_ID`);

--
-- Indexes for table `b_form_answer`
--
ALTER TABLE `b_form_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`);

--
-- Indexes for table `b_form_crm`
--
ALTER TABLE `b_form_crm`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_form_crm_field`
--
ALTER TABLE `b_form_crm_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_form_crm_field_1` (`LINK_ID`);

--
-- Indexes for table `b_form_crm_link`
--
ALTER TABLE `b_form_crm_link`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_form_crm_link_1` (`FORM_ID`,`CRM_ID`);

--
-- Indexes for table `b_form_field`
--
ALTER TABLE `b_form_field`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`),
  ADD KEY `IX_SID` (`SID`);

--
-- Indexes for table `b_form_field_filter`
--
ALTER TABLE `b_form_field_filter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`);

--
-- Indexes for table `b_form_field_validator`
--
ALTER TABLE `b_form_field_validator`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`);

--
-- Indexes for table `b_form_menu`
--
ALTER TABLE `b_form_menu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`);

--
-- Indexes for table `b_form_result`
--
ALTER TABLE `b_form_result`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`),
  ADD KEY `IX_STATUS_ID` (`STATUS_ID`),
  ADD KEY `IX_SENT_TO_CRM` (`SENT_TO_CRM`);

--
-- Indexes for table `b_form_result_answer`
--
ALTER TABLE `b_form_result_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RESULT_ID` (`RESULT_ID`),
  ADD KEY `IX_FIELD_ID` (`FIELD_ID`),
  ADD KEY `IX_ANSWER_ID` (`ANSWER_ID`);

--
-- Indexes for table `b_form_status`
--
ALTER TABLE `b_form_status`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_ID` (`FORM_ID`);

--
-- Indexes for table `b_form_status_2_group`
--
ALTER TABLE `b_form_status_2_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORM_STATUS_GROUP` (`STATUS_ID`,`GROUP_ID`);

--
-- Indexes for table `b_form_status_2_mail_template`
--
ALTER TABLE `b_form_status_2_mail_template`
  ADD PRIMARY KEY (`STATUS_ID`,`MAIL_TEMPLATE_ID`);

--
-- Indexes for table `b_forum`
--
ALTER TABLE `b_forum`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_SORT` (`SORT`),
  ADD KEY `IX_FORUM_ACTIVE` (`ACTIVE`),
  ADD KEY `IX_FORUM_GROUP_ID` (`FORUM_GROUP_ID`);

--
-- Indexes for table `b_forum2site`
--
ALTER TABLE `b_forum2site`
  ADD PRIMARY KEY (`FORUM_ID`,`SITE_ID`);

--
-- Indexes for table `b_forum_dictionary`
--
ALTER TABLE `b_forum_dictionary`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_forum_email`
--
ALTER TABLE `b_forum_email`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_EMAIL_FORUM_SOC` (`FORUM_ID`,`SOCNET_GROUP_ID`),
  ADD KEY `IX_B_FORUM_EMAIL_FILTER_ID` (`MAIL_FILTER_ID`);

--
-- Indexes for table `b_forum_file`
--
ALTER TABLE `b_forum_file`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_FILE_FILE` (`FILE_ID`),
  ADD KEY `IX_FORUM_FILE_FORUM` (`FORUM_ID`),
  ADD KEY `IX_FORUM_FILE_TOPIC` (`TOPIC_ID`),
  ADD KEY `IX_FORUM_FILE_MESSAGE` (`MESSAGE_ID`);

--
-- Indexes for table `b_forum_filter`
--
ALTER TABLE `b_forum_filter`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_FILTER_2` (`USE_IT`),
  ADD KEY `IX_B_FORUM_FILTER_3` (`PATTERN_CREATE`);

--
-- Indexes for table `b_forum_group`
--
ALTER TABLE `b_forum_group`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_forum_group_lang`
--
ALTER TABLE `b_forum_group_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_GROUP` (`FORUM_GROUP_ID`,`LID`);

--
-- Indexes for table `b_forum_letter`
--
ALTER TABLE `b_forum_letter`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_forum_message`
--
ALTER TABLE `b_forum_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_MESSAGE_FORUM` (`FORUM_ID`,`APPROVED`),
  ADD KEY `IX_FORUM_MESSAGE_TOPIC` (`TOPIC_ID`,`APPROVED`,`ID`),
  ADD KEY `IX_FORUM_MESSAGE_AUTHOR` (`AUTHOR_ID`,`APPROVED`,`FORUM_ID`,`ID`),
  ADD KEY `IX_FORUM_MESSAGE_APPROVED` (`APPROVED`),
  ADD KEY `IX_FORUM_MESSAGE_PARAM2` (`PARAM2`),
  ADD KEY `IX_FORUM_MESSAGE_XML_ID` (`XML_ID`),
  ADD KEY `IX_FORUM_MESSAGE_DATE_AUTHOR_ID` (`POST_DATE`,`AUTHOR_ID`),
  ADD KEY `IX_FORUM_MESSAGE_AUTHOR_TOPIC_ID` (`AUTHOR_ID`,`TOPIC_ID`,`ID`),
  ADD KEY `IX_FORUM_MESSAGE_AUTHOR_FORUM_ID` (`AUTHOR_ID`,`FORUM_ID`,`ID`,`APPROVED`,`TOPIC_ID`);

--
-- Indexes for table `b_forum_perms`
--
ALTER TABLE `b_forum_perms`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_PERMS_FORUM` (`FORUM_ID`,`GROUP_ID`),
  ADD KEY `IX_FORUM_PERMS_GROUP` (`GROUP_ID`);

--
-- Indexes for table `b_forum_pm_folder`
--
ALTER TABLE `b_forum_pm_folder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_PM_FOLDER_USER_IST` (`USER_ID`,`ID`,`SORT`,`TITLE`);

--
-- Indexes for table `b_forum_points`
--
ALTER TABLE `b_forum_points`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_P_MP` (`MIN_POINTS`);

--
-- Indexes for table `b_forum_points2post`
--
ALTER TABLE `b_forum_points2post`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_P2P_MNP` (`MIN_NUM_POSTS`);

--
-- Indexes for table `b_forum_points_lang`
--
ALTER TABLE `b_forum_points_lang`
  ADD PRIMARY KEY (`POINTS_ID`,`LID`);

--
-- Indexes for table `b_forum_private_message`
--
ALTER TABLE `b_forum_private_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_PM_USER` (`USER_ID`),
  ADD KEY `IX_B_FORUM_PM_AFR` (`AUTHOR_ID`,`FOLDER_ID`,`IS_READ`),
  ADD KEY `IX_B_FORUM_PM_UFP` (`USER_ID`,`FOLDER_ID`,`POST_DATE`),
  ADD KEY `IX_B_FORUM_PM_POST_DATE` (`POST_DATE`);

--
-- Indexes for table `b_forum_rank`
--
ALTER TABLE `b_forum_rank`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_forum_rank_lang`
--
ALTER TABLE `b_forum_rank_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_RANK` (`RANK_ID`,`LID`);

--
-- Indexes for table `b_forum_stat`
--
ALTER TABLE `b_forum_stat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_STAT_SITE_ID` (`SITE_ID`,`LAST_VISIT`),
  ADD KEY `IX_B_FORUM_STAT_TOPIC_ID` (`TOPIC_ID`,`LAST_VISIT`),
  ADD KEY `IX_B_FORUM_STAT_FORUM_ID` (`FORUM_ID`,`LAST_VISIT`),
  ADD KEY `IX_B_FORUM_STAT_PHPSESSID` (`PHPSESSID`);

--
-- Indexes for table `b_forum_subscribe`
--
ALTER TABLE `b_forum_subscribe`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_FORUM_SUBSCRIBE_USER` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`,`SOCNET_GROUP_ID`);

--
-- Indexes for table `b_forum_topic`
--
ALTER TABLE `b_forum_topic`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_FORUM_TOPIC_FORUM` (`FORUM_ID`,`APPROVED`),
  ADD KEY `IX_FORUM_TOPIC_APPROVED` (`APPROVED`),
  ADD KEY `IX_FORUM_TOPIC_ABS_L_POST_DATE` (`ABS_LAST_POST_DATE`),
  ADD KEY `IX_FORUM_TOPIC_LAST_POST_DATE` (`LAST_POST_DATE`),
  ADD KEY `IX_FORUM_TOPIC_USER_START_ID` (`USER_START_ID`),
  ADD KEY `IX_FORUM_TOPIC_DATE_USER_START_ID` (`START_DATE`,`USER_START_ID`),
  ADD KEY `IX_FORUM_TOPIC_XML_ID` (`XML_ID`),
  ADD KEY `IX_FORUM_TOPIC_TITLE_SEO` (`FORUM_ID`,`TITLE_SEO`),
  ADD KEY `IX_FORUM_TOPIC_TITLE_SEO2` (`TITLE_SEO`);

--
-- Indexes for table `b_forum_user`
--
ALTER TABLE `b_forum_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_FORUM_USER_USER6` (`USER_ID`);

--
-- Indexes for table `b_forum_user_forum`
--
ALTER TABLE `b_forum_user_forum`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_FORUM_USER_FORUM_ID1` (`USER_ID`,`FORUM_ID`);

--
-- Indexes for table `b_forum_user_points`
--
ALTER TABLE `b_forum_user_points`
  ADD PRIMARY KEY (`FROM_USER_ID`,`TO_USER_ID`),
  ADD KEY `IX_B_FORUM_USER_POINTS_TO_USER` (`TO_USER_ID`);

--
-- Indexes for table `b_forum_user_topic`
--
ALTER TABLE `b_forum_user_topic`
  ADD PRIMARY KEY (`TOPIC_ID`,`USER_ID`),
  ADD KEY `ID` (`ID`),
  ADD KEY `IX_B_FORUM_USER_FORUM_ID2` (`USER_ID`,`FORUM_ID`,`TOPIC_ID`);

--
-- Indexes for table `b_geoip_handlers`
--
ALTER TABLE `b_geoip_handlers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_group`
--
ALTER TABLE `b_group`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_group_collection_task`
--
ALTER TABLE `b_group_collection_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`,`COLLECTION_ID`);

--
-- Indexes for table `b_group_subordinate`
--
ALTER TABLE `b_group_subordinate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_group_task`
--
ALTER TABLE `b_group_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`);

--
-- Indexes for table `b_hlblock_entity`
--
ALTER TABLE `b_hlblock_entity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_hlblock_entity_rights`
--
ALTER TABLE `b_hlblock_entity_rights`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_hot_keys`
--
ALTER TABLE `b_hot_keys`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_b_hot_keys_co_u` (`CODE_ID`,`USER_ID`),
  ADD KEY `ix_hot_keys_code` (`CODE_ID`),
  ADD KEY `ix_hot_keys_user` (`USER_ID`);

--
-- Indexes for table `b_hot_keys_code`
--
ALTER TABLE `b_hot_keys_code`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_hot_keys_code_cn` (`CLASS_NAME`),
  ADD KEY `ix_hot_keys_code_url` (`URL`);

--
-- Indexes for table `b_iblock`
--
ALTER TABLE `b_iblock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock` (`IBLOCK_TYPE_ID`,`LID`,`ACTIVE`);

--
-- Indexes for table `b_iblock_cache`
--
ALTER TABLE `b_iblock_cache`
  ADD PRIMARY KEY (`CACHE_KEY`);

--
-- Indexes for table `b_iblock_element`
--
ALTER TABLE `b_iblock_element`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_element_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  ADD KEY `ix_iblock_element_4` (`IBLOCK_ID`,`XML_ID`,`WF_PARENT_ELEMENT_ID`),
  ADD KEY `ix_iblock_element_3` (`WF_PARENT_ELEMENT_ID`),
  ADD KEY `ix_iblock_element_code` (`IBLOCK_ID`,`CODE`);

--
-- Indexes for table `b_iblock_element_iprop`
--
ALTER TABLE `b_iblock_element_iprop`
  ADD PRIMARY KEY (`ELEMENT_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_element_iprop_0` (`IPROP_ID`),
  ADD KEY `ix_b_iblock_element_iprop_1` (`IBLOCK_ID`);

--
-- Indexes for table `b_iblock_element_lock`
--
ALTER TABLE `b_iblock_element_lock`
  ADD PRIMARY KEY (`IBLOCK_ELEMENT_ID`);

--
-- Indexes for table `b_iblock_element_property`
--
ALTER TABLE `b_iblock_element_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_element_property_1` (`IBLOCK_ELEMENT_ID`,`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_property_2` (`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_prop_enum` (`VALUE_ENUM`,`IBLOCK_PROPERTY_ID`),
  ADD KEY `ix_iblock_element_prop_num` (`VALUE_NUM`,`IBLOCK_PROPERTY_ID`);

--
-- Indexes for table `b_iblock_element_right`
--
ALTER TABLE `b_iblock_element_right`
  ADD PRIMARY KEY (`RIGHT_ID`,`ELEMENT_ID`,`SECTION_ID`),
  ADD KEY `ix_b_iblock_element_right_1` (`ELEMENT_ID`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_element_right_2` (`IBLOCK_ID`,`RIGHT_ID`);

--
-- Indexes for table `b_iblock_fields`
--
ALTER TABLE `b_iblock_fields`
  ADD PRIMARY KEY (`IBLOCK_ID`,`FIELD_ID`);

--
-- Indexes for table `b_iblock_group`
--
ALTER TABLE `b_iblock_group`
  ADD UNIQUE KEY `ux_iblock_group_1` (`IBLOCK_ID`,`GROUP_ID`);

--
-- Indexes for table `b_iblock_iblock_iprop`
--
ALTER TABLE `b_iblock_iblock_iprop`
  ADD PRIMARY KEY (`IBLOCK_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_iblock_iprop_0` (`IPROP_ID`);

--
-- Indexes for table `b_iblock_iproperty`
--
ALTER TABLE `b_iblock_iproperty`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_iblock_iprop_0` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`);

--
-- Indexes for table `b_iblock_messages`
--
ALTER TABLE `b_iblock_messages`
  ADD PRIMARY KEY (`IBLOCK_ID`,`MESSAGE_ID`);

--
-- Indexes for table `b_iblock_offers_tmp`
--
ALTER TABLE `b_iblock_offers_tmp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_iblock_property`
--
ALTER TABLE `b_iblock_property`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_property_1` (`IBLOCK_ID`),
  ADD KEY `ix_iblock_property_3` (`LINK_IBLOCK_ID`),
  ADD KEY `ix_iblock_property_2` (`CODE`);

--
-- Indexes for table `b_iblock_property_enum`
--
ALTER TABLE `b_iblock_property_enum`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_iblock_property_enum` (`PROPERTY_ID`,`XML_ID`);

--
-- Indexes for table `b_iblock_right`
--
ALTER TABLE `b_iblock_right`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_iblock_right_iblock_id` (`IBLOCK_ID`,`ENTITY_TYPE`,`ENTITY_ID`),
  ADD KEY `ix_b_iblock_right_group_code` (`GROUP_CODE`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_right_entity` (`ENTITY_ID`,`ENTITY_TYPE`),
  ADD KEY `ix_b_iblock_right_op_eread` (`ID`,`OP_EREAD`,`GROUP_CODE`),
  ADD KEY `ix_b_iblock_right_op_sread` (`ID`,`OP_SREAD`,`GROUP_CODE`),
  ADD KEY `ix_b_iblock_right_task_id` (`TASK_ID`);

--
-- Indexes for table `b_iblock_rss`
--
ALTER TABLE `b_iblock_rss`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_iblock_section`
--
ALTER TABLE `b_iblock_section`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_iblock_section_1` (`IBLOCK_ID`,`IBLOCK_SECTION_ID`),
  ADD KEY `ix_iblock_section_depth_level` (`IBLOCK_ID`,`DEPTH_LEVEL`),
  ADD KEY `ix_iblock_section_left_margin` (`IBLOCK_ID`,`LEFT_MARGIN`,`RIGHT_MARGIN`),
  ADD KEY `ix_iblock_section_right_margin` (`IBLOCK_ID`,`RIGHT_MARGIN`,`LEFT_MARGIN`),
  ADD KEY `ix_iblock_section_code` (`IBLOCK_ID`,`CODE`);

--
-- Indexes for table `b_iblock_section_element`
--
ALTER TABLE `b_iblock_section_element`
  ADD UNIQUE KEY `ux_iblock_section_element` (`IBLOCK_SECTION_ID`,`IBLOCK_ELEMENT_ID`,`ADDITIONAL_PROPERTY_ID`),
  ADD KEY `UX_IBLOCK_SECTION_ELEMENT2` (`IBLOCK_ELEMENT_ID`);

--
-- Indexes for table `b_iblock_section_iprop`
--
ALTER TABLE `b_iblock_section_iprop`
  ADD PRIMARY KEY (`SECTION_ID`,`IPROP_ID`),
  ADD KEY `ix_b_iblock_section_iprop_0` (`IPROP_ID`),
  ADD KEY `ix_b_iblock_section_iprop_1` (`IBLOCK_ID`);

--
-- Indexes for table `b_iblock_section_property`
--
ALTER TABLE `b_iblock_section_property`
  ADD PRIMARY KEY (`IBLOCK_ID`,`SECTION_ID`,`PROPERTY_ID`),
  ADD KEY `ix_b_iblock_section_property_1` (`PROPERTY_ID`),
  ADD KEY `ix_b_iblock_section_property_2` (`SECTION_ID`);

--
-- Indexes for table `b_iblock_section_right`
--
ALTER TABLE `b_iblock_section_right`
  ADD PRIMARY KEY (`RIGHT_ID`,`SECTION_ID`),
  ADD KEY `ix_b_iblock_section_right_1` (`SECTION_ID`,`IBLOCK_ID`),
  ADD KEY `ix_b_iblock_section_right_2` (`IBLOCK_ID`,`RIGHT_ID`);

--
-- Indexes for table `b_iblock_sequence`
--
ALTER TABLE `b_iblock_sequence`
  ADD PRIMARY KEY (`IBLOCK_ID`,`CODE`);

--
-- Indexes for table `b_iblock_site`
--
ALTER TABLE `b_iblock_site`
  ADD PRIMARY KEY (`IBLOCK_ID`,`SITE_ID`);

--
-- Indexes for table `b_iblock_type`
--
ALTER TABLE `b_iblock_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_lang`
--
ALTER TABLE `b_lang`
  ADD PRIMARY KEY (`LID`);

--
-- Indexes for table `b_lang_domain`
--
ALTER TABLE `b_lang_domain`
  ADD PRIMARY KEY (`LID`,`DOMAIN`);

--
-- Indexes for table `b_language`
--
ALTER TABLE `b_language`
  ADD PRIMARY KEY (`LID`);

--
-- Indexes for table `b_list_rubric`
--
ALTER TABLE `b_list_rubric`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_medialib_collection`
--
ALTER TABLE `b_medialib_collection`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_medialib_collection_item`
--
ALTER TABLE `b_medialib_collection_item`
  ADD PRIMARY KEY (`ITEM_ID`,`COLLECTION_ID`);

--
-- Indexes for table `b_medialib_item`
--
ALTER TABLE `b_medialib_item`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_medialib_type`
--
ALTER TABLE `b_medialib_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_mobileapp_app`
--
ALTER TABLE `b_mobileapp_app`
  ADD PRIMARY KEY (`CODE`);

--
-- Indexes for table `b_mobileapp_config`
--
ALTER TABLE `b_mobileapp_config`
  ADD PRIMARY KEY (`APP_CODE`,`PLATFORM`);

--
-- Indexes for table `b_module`
--
ALTER TABLE `b_module`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_module_group`
--
ALTER TABLE `b_module_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_GROUP_MODULE` (`MODULE_ID`,`GROUP_ID`,`SITE_ID`);

--
-- Indexes for table `b_module_to_module`
--
ALTER TABLE `b_module_to_module`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_module_to_module` (`FROM_MODULE_ID`(20),`MESSAGE_ID`(20),`TO_MODULE_ID`(20),`TO_CLASS`(20),`TO_METHOD`(20));

--
-- Indexes for table `b_operation`
--
ALTER TABLE `b_operation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_option`
--
ALTER TABLE `b_option`
  ADD UNIQUE KEY `ix_option` (`MODULE_ID`,`NAME`,`SITE_ID`),
  ADD KEY `ix_option_name` (`NAME`);

--
-- Indexes for table `b_perf_cache`
--
ALTER TABLE `b_perf_cache`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_CACHE_0` (`HIT_ID`,`NN`),
  ADD KEY `IX_B_PERF_CACHE_1` (`COMPONENT_ID`);

--
-- Indexes for table `b_perf_cluster`
--
ALTER TABLE `b_perf_cluster`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_perf_component`
--
ALTER TABLE `b_perf_component`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_COMPONENT_0` (`HIT_ID`,`NN`);

--
-- Indexes for table `b_perf_error`
--
ALTER TABLE `b_perf_error`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_ERROR_0` (`HIT_ID`);

--
-- Indexes for table `b_perf_history`
--
ALTER TABLE `b_perf_history`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_perf_hit`
--
ALTER TABLE `b_perf_hit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_HIT_0` (`DATE_HIT`);

--
-- Indexes for table `b_perf_index_ban`
--
ALTER TABLE `b_perf_index_ban`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_perf_index_complete`
--
ALTER TABLE `b_perf_index_complete`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_index_complete_0` (`TABLE_NAME`);

--
-- Indexes for table `b_perf_index_suggest`
--
ALTER TABLE `b_perf_index_suggest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_index_suggest_0` (`SQL_MD5`);

--
-- Indexes for table `b_perf_index_suggest_sql`
--
ALTER TABLE `b_perf_index_suggest_sql`
  ADD PRIMARY KEY (`SUGGEST_ID`,`SQL_ID`),
  ADD KEY `ix_b_perf_index_suggest_sql_0` (`SQL_ID`,`SUGGEST_ID`);

--
-- Indexes for table `b_perf_sql`
--
ALTER TABLE `b_perf_sql`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_PERF_SQL_0` (`HIT_ID`,`NN`),
  ADD KEY `IX_B_PERF_SQL_1` (`COMPONENT_ID`);

--
-- Indexes for table `b_perf_sql_backtrace`
--
ALTER TABLE `b_perf_sql_backtrace`
  ADD PRIMARY KEY (`SQL_ID`,`NN`);

--
-- Indexes for table `b_perf_tab_column_stat`
--
ALTER TABLE `b_perf_tab_column_stat`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_perf_tab_column_stat` (`TABLE_NAME`,`COLUMN_NAME`);

--
-- Indexes for table `b_perf_tab_stat`
--
ALTER TABLE `b_perf_tab_stat`
  ADD PRIMARY KEY (`TABLE_NAME`);

--
-- Indexes for table `b_perf_test`
--
ALTER TABLE `b_perf_test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_PERF_TEST_0` (`REFERENCE_ID`);

--
-- Indexes for table `b_posting`
--
ALTER TABLE `b_posting`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_posting_email`
--
ALTER TABLE `b_posting_email`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_posting_email_status` (`POSTING_ID`,`STATUS`),
  ADD KEY `ix_posting_email_email` (`POSTING_ID`,`EMAIL`);

--
-- Indexes for table `b_posting_file`
--
ALTER TABLE `b_posting_file`
  ADD UNIQUE KEY `UK_POSTING_POSTING_FILE` (`POSTING_ID`,`FILE_ID`);

--
-- Indexes for table `b_posting_group`
--
ALTER TABLE `b_posting_group`
  ADD UNIQUE KEY `UK_POSTING_POSTING_GROUP` (`POSTING_ID`,`GROUP_ID`);

--
-- Indexes for table `b_posting_rubric`
--
ALTER TABLE `b_posting_rubric`
  ADD UNIQUE KEY `UK_POSTING_POSTING_RUBRIC` (`POSTING_ID`,`LIST_RUBRIC_ID`);

--
-- Indexes for table `b_rating`
--
ALTER TABLE `b_rating`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_rating_component`
--
ALTER TABLE `b_rating_component`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_ID_1` (`RATING_ID`,`ACTIVE`,`NEXT_CALCULATION`);

--
-- Indexes for table `b_rating_component_results`
--
ALTER TABLE `b_rating_component_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY_TYPE_ID` (`ENTITY_TYPE_ID`),
  ADD KEY `IX_COMPLEX_NAME` (`COMPLEX_NAME`),
  ADD KEY `IX_RATING_ID_2` (`RATING_ID`,`COMPLEX_NAME`);

--
-- Indexes for table `b_rating_results`
--
ALTER TABLE `b_rating_results`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_3` (`RATING_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`),
  ADD KEY `IX_RATING_4` (`RATING_ID`,`ENTITY_ID`);

--
-- Indexes for table `b_rating_rule`
--
ALTER TABLE `b_rating_rule`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_rating_rule_vetting`
--
ALTER TABLE `b_rating_rule_vetting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RULE_ID` (`RULE_ID`,`ENTITY_TYPE_ID`,`ENTITY_ID`);

--
-- Indexes for table `b_rating_user`
--
ALTER TABLE `b_rating_user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RATING_ID` (`RATING_ID`,`ENTITY_ID`),
  ADD KEY `IX_B_RAT_USER_2` (`ENTITY_ID`);

--
-- Indexes for table `b_rating_vote`
--
ALTER TABLE `b_rating_vote`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RAT_VOTE_ID` (`RATING_VOTING_ID`,`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_3` (`OWNER_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_4` (`USER_ID`),
  ADD KEY `IX_RAT_VOTE_ID_5` (`CREATED`,`VALUE`),
  ADD KEY `IX_RAT_VOTE_ID_6` (`ACTIVE`),
  ADD KEY `IX_RAT_VOTE_ID_7` (`RATING_VOTING_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_8` (`ENTITY_TYPE_ID`,`CREATED`),
  ADD KEY `IX_RAT_VOTE_ID_9` (`CREATED`,`USER_ID`);

--
-- Indexes for table `b_rating_vote_group`
--
ALTER TABLE `b_rating_vote_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RATING_ID` (`GROUP_ID`,`TYPE`);

--
-- Indexes for table `b_rating_voting`
--
ALTER TABLE `b_rating_voting`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_ENTITY_TYPE_ID_2` (`ENTITY_TYPE_ID`,`ENTITY_ID`,`ACTIVE`),
  ADD KEY `IX_ENTITY_TYPE_ID_4` (`TOTAL_VALUE`);

--
-- Indexes for table `b_rating_voting_prepare`
--
ALTER TABLE `b_rating_voting_prepare`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_RATING_VOTING_ID` (`RATING_VOTING_ID`);

--
-- Indexes for table `b_rating_weight`
--
ALTER TABLE `b_rating_weight`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_search_content`
--
ALTER TABLE `b_search_content`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT` (`MODULE_ID`,`ITEM_ID`),
  ADD KEY `IX_B_SEARCH_CONTENT_1` (`MODULE_ID`,`PARAM1`(50),`PARAM2`(50)),
  ADD KEY `IX_B_SEARCH_CONTENT_2` (`ENTITY_ID`(50),`ENTITY_TYPE_ID`);

--
-- Indexes for table `b_search_content_freq`
--
ALTER TABLE `b_search_content_freq`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_FREQ` (`STEM`,`LANGUAGE_ID`,`SITE_ID`);

--
-- Indexes for table `b_search_content_param`
--
ALTER TABLE `b_search_content_param`
  ADD KEY `IX_B_SEARCH_CONTENT_PARAM` (`SEARCH_CONTENT_ID`,`PARAM_NAME`),
  ADD KEY `IX_B_SEARCH_CONTENT_PARAM_1` (`PARAM_NAME`,`PARAM_VALUE`(50),`SEARCH_CONTENT_ID`);

--
-- Indexes for table `b_search_content_right`
--
ALTER TABLE `b_search_content_right`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_RIGHT` (`SEARCH_CONTENT_ID`,`GROUP_CODE`);

--
-- Indexes for table `b_search_content_site`
--
ALTER TABLE `b_search_content_site`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`);

--
-- Indexes for table `b_search_content_stem`
--
ALTER TABLE `b_search_content_stem`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_STEM` (`STEM`,`LANGUAGE_ID`,`TF`,`PS`,`SEARCH_CONTENT_ID`),
  ADD KEY `IND_B_SEARCH_CONTENT_STEM` (`SEARCH_CONTENT_ID`);

--
-- Indexes for table `b_search_content_text`
--
ALTER TABLE `b_search_content_text`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`);

--
-- Indexes for table `b_search_content_title`
--
ALTER TABLE `b_search_content_title`
  ADD UNIQUE KEY `UX_B_SEARCH_CONTENT_TITLE` (`SITE_ID`,`WORD`,`SEARCH_CONTENT_ID`,`POS`),
  ADD KEY `IND_B_SEARCH_CONTENT_TITLE` (`SEARCH_CONTENT_ID`);

--
-- Indexes for table `b_search_custom_rank`
--
ALTER TABLE `b_search_custom_rank`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_B_SEARCH_CUSTOM_RANK` (`SITE_ID`,`MODULE_ID`);

--
-- Indexes for table `b_search_phrase`
--
ALTER TABLE `b_search_phrase`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_SESS_PH` (`SESSION_ID`,`PHRASE`(50)),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_SESS_TG` (`SESSION_ID`,`TAGS`(50)),
  ADD KEY `IND_PK_B_SEARCH_PHRASE_TIME` (`TIMESTAMP_X`);

--
-- Indexes for table `b_search_stem`
--
ALTER TABLE `b_search_stem`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_B_SEARCH_STEM` (`STEM`);

--
-- Indexes for table `b_search_suggest`
--
ALTER TABLE `b_search_suggest`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IND_B_SEARCH_SUGGEST` (`FILTER_MD5`,`PHRASE`(50),`RATE`),
  ADD KEY `IND_B_SEARCH_SUGGEST_PHRASE` (`PHRASE`(50),`RATE`),
  ADD KEY `IND_B_SEARCH_SUGGEST_TIME` (`TIMESTAMP_X`);

--
-- Indexes for table `b_search_tags`
--
ALTER TABLE `b_search_tags`
  ADD PRIMARY KEY (`SEARCH_CONTENT_ID`,`SITE_ID`,`NAME`),
  ADD KEY `IX_B_SEARCH_TAGS_0` (`NAME`);

--
-- Indexes for table `b_search_user_right`
--
ALTER TABLE `b_search_user_right`
  ADD UNIQUE KEY `UX_B_SEARCH_USER_RIGHT` (`USER_ID`,`GROUP_CODE`);

--
-- Indexes for table `b_sec_filter_mask`
--
ALTER TABLE `b_sec_filter_mask`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_sec_frame_mask`
--
ALTER TABLE `b_sec_frame_mask`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_sec_iprule`
--
ALTER TABLE `b_sec_iprule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_sec_iprule_active_to` (`ACTIVE_TO`);

--
-- Indexes for table `b_sec_iprule_excl_ip`
--
ALTER TABLE `b_sec_iprule_excl_ip`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_IP`);

--
-- Indexes for table `b_sec_iprule_excl_mask`
--
ALTER TABLE `b_sec_iprule_excl_mask`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`);

--
-- Indexes for table `b_sec_iprule_incl_ip`
--
ALTER TABLE `b_sec_iprule_incl_ip`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_IP`);

--
-- Indexes for table `b_sec_iprule_incl_mask`
--
ALTER TABLE `b_sec_iprule_incl_mask`
  ADD PRIMARY KEY (`IPRULE_ID`,`RULE_MASK`);

--
-- Indexes for table `b_sec_recovery_codes`
--
ALTER TABLE `b_sec_recovery_codes`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_sec_recovery_codes_user_id` (`USER_ID`);

--
-- Indexes for table `b_sec_session`
--
ALTER TABLE `b_sec_session`
  ADD PRIMARY KEY (`SESSION_ID`),
  ADD KEY `ix_b_sec_session_time` (`TIMESTAMP_X`);

--
-- Indexes for table `b_sec_user`
--
ALTER TABLE `b_sec_user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `b_sec_virus`
--
ALTER TABLE `b_sec_virus`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_sec_white_list`
--
ALTER TABLE `b_sec_white_list`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_security_sitecheck`
--
ALTER TABLE `b_security_sitecheck`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_seo_adv_autolog`
--
ALTER TABLE `b_seo_adv_autolog`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_adv_autolog1` (`ENGINE_ID`),
  ADD KEY `ix_b_seo_adv_autolog2` (`TIMESTAMP_X`);

--
-- Indexes for table `b_seo_adv_banner`
--
ALTER TABLE `b_seo_adv_banner`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_banner` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_banner1` (`CAMPAIGN_ID`),
  ADD KEY `ix_b_seo_adv_banner2` (`AUTO_QUANTITY_OFF`,`AUTO_QUANTITY_ON`);

--
-- Indexes for table `b_seo_adv_campaign`
--
ALTER TABLE `b_seo_adv_campaign`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_campaign` (`ENGINE_ID`,`XML_ID`);

--
-- Indexes for table `b_seo_adv_group`
--
ALTER TABLE `b_seo_adv_group`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_group` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_group1` (`CAMPAIGN_ID`);

--
-- Indexes for table `b_seo_adv_link`
--
ALTER TABLE `b_seo_adv_link`
  ADD PRIMARY KEY (`LINK_TYPE`,`LINK_ID`,`BANNER_ID`);

--
-- Indexes for table `b_seo_adv_log`
--
ALTER TABLE `b_seo_adv_log`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_adv_log1` (`ENGINE_ID`),
  ADD KEY `ix_b_seo_adv_log2` (`TIMESTAMP_X`);

--
-- Indexes for table `b_seo_adv_order`
--
ALTER TABLE `b_seo_adv_order`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_order` (`ENGINE_ID`,`CAMPAIGN_ID`,`BANNER_ID`,`ORDER_ID`),
  ADD KEY `ix_b_seo_adv_order1` (`ORDER_ID`,`PROCESSED`);

--
-- Indexes for table `b_seo_adv_region`
--
ALTER TABLE `b_seo_adv_region`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_adv_region` (`ENGINE_ID`,`XML_ID`),
  ADD KEY `ix_b_seo_adv_region1` (`PARENT_ID`);

--
-- Indexes for table `b_seo_keywords`
--
ALTER TABLE `b_seo_keywords`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_keywords_url` (`URL`,`SITE_ID`);

--
-- Indexes for table `b_seo_search_engine`
--
ALTER TABLE `b_seo_search_engine`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_b_seo_search_engine_code` (`CODE`);

--
-- Indexes for table `b_seo_service_log`
--
ALTER TABLE `b_seo_service_log`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_seo_service_rtg_queue`
--
ALTER TABLE `b_seo_service_rtg_queue`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SRV_RTG_QUEUE_1` (`ACTION`,`DATE_AUTO_REMOVE`),
  ADD KEY `IX_B_SEO_SRV_RTG_QUEUE_2` (`TYPE`,`ACTION`);

--
-- Indexes for table `b_seo_service_webhook`
--
ALTER TABLE `b_seo_service_webhook`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_B_SEO_SERVICE_WEBHOOK_1` (`TYPE`,`EXTERNAL_ID`);

--
-- Indexes for table `b_seo_sitemap`
--
ALTER TABLE `b_seo_sitemap`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_seo_sitemap_entity`
--
ALTER TABLE `b_seo_sitemap_entity`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_sitemap_entity_1` (`ENTITY_TYPE`,`ENTITY_ID`),
  ADD KEY `ix_b_seo_sitemap_entity_2` (`SITEMAP_ID`);

--
-- Indexes for table `b_seo_sitemap_iblock`
--
ALTER TABLE `b_seo_sitemap_iblock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_seo_sitemap_iblock_1` (`IBLOCK_ID`),
  ADD KEY `ix_b_seo_sitemap_iblock_2` (`SITEMAP_ID`);

--
-- Indexes for table `b_seo_sitemap_runtime`
--
ALTER TABLE `b_seo_sitemap_runtime`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_seo_sitemap_runtime1` (`PID`,`PROCESSED`,`ITEM_TYPE`,`ITEM_ID`);

--
-- Indexes for table `b_seo_yandex_direct_stat`
--
ALTER TABLE `b_seo_yandex_direct_stat`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_seo_yandex_direct_stat` (`BANNER_ID`,`DATE_DAY`),
  ADD KEY `ix_seo_yandex_direct_stat1` (`CAMPAIGN_ID`);

--
-- Indexes for table `b_short_uri`
--
ALTER TABLE `b_short_uri`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ux_b_short_uri_1` (`SHORT_URI_CRC`),
  ADD KEY `ux_b_short_uri_2` (`URI_CRC`);

--
-- Indexes for table `b_site_template`
--
ALTER TABLE `b_site_template`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_site_template_site` (`SITE_ID`);

--
-- Indexes for table `b_smile`
--
ALTER TABLE `b_smile`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_smile_lang`
--
ALTER TABLE `b_smile_lang`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_SMILE_SL` (`TYPE`,`SID`,`LID`);

--
-- Indexes for table `b_smile_set`
--
ALTER TABLE `b_smile_set`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_socialservices_ap`
--
ALTER TABLE `b_socialservices_ap`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_socialservices_ap1` (`USER_ID`,`DOMAIN`);

--
-- Indexes for table `b_socialservices_contact`
--
ALTER TABLE `b_socialservices_contact`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_contact1` (`USER_ID`),
  ADD KEY `ix_b_socialservices_contact2` (`CONTACT_USER_ID`),
  ADD KEY `ix_b_socialservices_contact3` (`TIMESTAMP_X`),
  ADD KEY `ix_b_socialservices_contact4` (`LAST_AUTHORIZE`);

--
-- Indexes for table `b_socialservices_contact_connect`
--
ALTER TABLE `b_socialservices_contact_connect`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_contact_connect1` (`CONTACT_ID`),
  ADD KEY `ix_b_socialservices_contact_connect2` (`LINK_ID`),
  ADD KEY `ix_b_socialservices_contact_connect3` (`LAST_AUTHORIZE`);

--
-- Indexes for table `b_socialservices_message`
--
ALTER TABLE `b_socialservices_message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_socialservices_user`
--
ALTER TABLE `b_socialservices_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `IX_B_SOCIALSERVICES_USER` (`XML_ID`,`EXTERNAL_AUTH_ID`),
  ADD KEY `IX_B_SOCIALSERVICES_US_1` (`USER_ID`),
  ADD KEY `IX_B_SOCIALSERVICES_US_3` (`LOGIN`);

--
-- Indexes for table `b_socialservices_user_link`
--
ALTER TABLE `b_socialservices_user_link`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_socialservices_user_link_5` (`SOCSERV_USER_ID`),
  ADD KEY `ix_b_socialservices_user_link_6` (`LINK_USER_ID`,`TIMESTAMP_X`),
  ADD KEY `ix_b_socialservices_user_link_7` (`LINK_UID`);

--
-- Indexes for table `b_sticker`
--
ALTER TABLE `b_sticker`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_sticker_group_task`
--
ALTER TABLE `b_sticker_group_task`
  ADD PRIMARY KEY (`GROUP_ID`,`TASK_ID`);

--
-- Indexes for table `b_subscription`
--
ALTER TABLE `b_subscription`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UK_SUBSCRIPTION_EMAIL` (`EMAIL`,`USER_ID`),
  ADD KEY `IX_DATE_CONFIRM` (`CONFIRMED`,`DATE_CONFIRM`);

--
-- Indexes for table `b_subscription_rubric`
--
ALTER TABLE `b_subscription_rubric`
  ADD UNIQUE KEY `UK_SUBSCRIPTION_RUBRIC` (`SUBSCRIPTION_ID`,`LIST_RUBRIC_ID`);

--
-- Indexes for table `b_task`
--
ALTER TABLE `b_task`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_task` (`MODULE_ID`,`BINDING`,`LETTER`,`SYS`);

--
-- Indexes for table `b_task_operation`
--
ALTER TABLE `b_task_operation`
  ADD PRIMARY KEY (`TASK_ID`,`OPERATION_ID`);

--
-- Indexes for table `b_undo`
--
ALTER TABLE `b_undo`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_urlpreview_metadata`
--
ALTER TABLE `b_urlpreview_metadata`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_URLPREVIEW_METADATA_URL` (`URL`);

--
-- Indexes for table `b_urlpreview_route`
--
ALTER TABLE `b_urlpreview_route`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `UX_URLPREVIEW_ROUTE_ROUTE` (`ROUTE`);

--
-- Indexes for table `b_user`
--
ALTER TABLE `b_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ix_login` (`LOGIN`,`EXTERNAL_AUTH_ID`),
  ADD KEY `ix_b_user_email` (`EMAIL`),
  ADD KEY `ix_b_user_activity_date` (`LAST_ACTIVITY_DATE`),
  ADD KEY `IX_B_USER_XML_ID` (`XML_ID`);

--
-- Indexes for table `b_user_access`
--
ALTER TABLE `b_user_access`
  ADD KEY `ix_ua_user_provider` (`USER_ID`,`PROVIDER_ID`),
  ADD KEY `ix_ua_user_access` (`USER_ID`,`ACCESS_CODE`),
  ADD KEY `ix_ua_access` (`ACCESS_CODE`);

--
-- Indexes for table `b_user_access_check`
--
ALTER TABLE `b_user_access_check`
  ADD KEY `ix_uac_user_provider` (`USER_ID`,`PROVIDER_ID`);

--
-- Indexes for table `b_user_auth_action`
--
ALTER TABLE `b_user_auth_action`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_auth_action_user` (`USER_ID`,`PRIORITY`),
  ADD KEY `ix_auth_action_date` (`ACTION_DATE`);

--
-- Indexes for table `b_user_counter`
--
ALTER TABLE `b_user_counter`
  ADD PRIMARY KEY (`USER_ID`,`SITE_ID`,`CODE`),
  ADD KEY `ix_buc_tag` (`TAG`),
  ADD KEY `ix_buc_code` (`CODE`),
  ADD KEY `ix_buc_ts` (`TIMESTAMP_X`),
  ADD KEY `ix_buc_sent_userid` (`SENT`,`USER_ID`);

--
-- Indexes for table `b_user_digest`
--
ALTER TABLE `b_user_digest`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `b_user_field`
--
ALTER TABLE `b_user_field`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_type_entity` (`ENTITY_ID`,`FIELD_NAME`);

--
-- Indexes for table `b_user_field_confirm`
--
ALTER TABLE `b_user_field_confirm`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_user_field_confirm1` (`USER_ID`,`CONFIRM_CODE`);

--
-- Indexes for table `b_user_field_enum`
--
ALTER TABLE `b_user_field_enum`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_field_enum` (`USER_FIELD_ID`,`XML_ID`);

--
-- Indexes for table `b_user_field_lang`
--
ALTER TABLE `b_user_field_lang`
  ADD PRIMARY KEY (`USER_FIELD_ID`,`LANGUAGE_ID`);

--
-- Indexes for table `b_user_group`
--
ALTER TABLE `b_user_group`
  ADD UNIQUE KEY `ix_user_group` (`USER_ID`,`GROUP_ID`),
  ADD KEY `ix_user_group_group` (`GROUP_ID`);

--
-- Indexes for table `b_user_hit_auth`
--
ALTER TABLE `b_user_hit_auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_USER_HIT_AUTH_1` (`HASH`),
  ADD KEY `IX_USER_HIT_AUTH_2` (`USER_ID`),
  ADD KEY `IX_USER_HIT_AUTH_3` (`TIMESTAMP_X`);

--
-- Indexes for table `b_user_index`
--
ALTER TABLE `b_user_index`
  ADD PRIMARY KEY (`USER_ID`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_1` (`SEARCH_USER_CONTENT`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_2` (`SEARCH_DEPARTMENT_CONTENT`);
ALTER TABLE `b_user_index` ADD FULLTEXT KEY `IXF_B_USER_INDEX_3` (`SEARCH_ADMIN_CONTENT`);

--
-- Indexes for table `b_user_option`
--
ALTER TABLE `b_user_option`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ux_user_category_name` (`USER_ID`,`CATEGORY`,`NAME`);

--
-- Indexes for table `b_user_stored_auth`
--
ALTER TABLE `b_user_stored_auth`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ux_user_hash` (`USER_ID`);

--
-- Indexes for table `b_utm_blog_comment`
--
ALTER TABLE `b_utm_blog_comment`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_utm_BLOG_COMMENT_1` (`FIELD_ID`),
  ADD KEY `ix_utm_BLOG_COMMENT_2` (`VALUE_ID`);

--
-- Indexes for table `b_utm_blog_post`
--
ALTER TABLE `b_utm_blog_post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_utm_BLOG_POST_1` (`FIELD_ID`),
  ADD KEY `ix_utm_BLOG_POST_2` (`VALUE_ID`);

--
-- Indexes for table `b_utm_forum_message`
--
ALTER TABLE `b_utm_forum_message`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_utm_FORUM_MESSAGE_1` (`FIELD_ID`),
  ADD KEY `ix_utm_FORUM_MESSAGE_2` (`VALUE_ID`);

--
-- Indexes for table `b_uts_blog_comment`
--
ALTER TABLE `b_uts_blog_comment`
  ADD PRIMARY KEY (`VALUE_ID`);

--
-- Indexes for table `b_uts_blog_post`
--
ALTER TABLE `b_uts_blog_post`
  ADD PRIMARY KEY (`VALUE_ID`);

--
-- Indexes for table `b_uts_forum_message`
--
ALTER TABLE `b_uts_forum_message`
  ADD PRIMARY KEY (`VALUE_ID`);

--
-- Indexes for table `b_vote`
--
ALTER TABLE `b_vote`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_CHANNEL_ID` (`CHANNEL_ID`);

--
-- Indexes for table `b_vote_answer`
--
ALTER TABLE `b_vote_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_QUESTION_ID` (`QUESTION_ID`);

--
-- Indexes for table `b_vote_attached_object`
--
ALTER TABLE `b_vote_attached_object`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_VOTE_AO_1` (`OBJECT_ID`),
  ADD KEY `IX_VOTE_AO_2` (`MODULE_ID`,`ENTITY_TYPE`,`ENTITY_ID`);

--
-- Indexes for table `b_vote_channel`
--
ALTER TABLE `b_vote_channel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_vote_channel_2_group`
--
ALTER TABLE `b_vote_channel_2_group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_VOTE_CHANNEL_ID_GROUP_ID` (`CHANNEL_ID`,`GROUP_ID`);

--
-- Indexes for table `b_vote_channel_2_site`
--
ALTER TABLE `b_vote_channel_2_site`
  ADD PRIMARY KEY (`CHANNEL_ID`,`SITE_ID`);

--
-- Indexes for table `b_vote_event`
--
ALTER TABLE `b_vote_event`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_USER_ID` (`VOTE_USER_ID`),
  ADD KEY `IX_B_VOTE_EVENT_2` (`VOTE_ID`,`IP`);

--
-- Indexes for table `b_vote_event_answer`
--
ALTER TABLE `b_vote_event_answer`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_EVENT_QUESTION_ID` (`EVENT_QUESTION_ID`);

--
-- Indexes for table `b_vote_event_question`
--
ALTER TABLE `b_vote_event_question`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_EVENT_ID` (`EVENT_ID`);

--
-- Indexes for table `b_vote_question`
--
ALTER TABLE `b_vote_question`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IX_VOTE_ID` (`VOTE_ID`);

--
-- Indexes for table `b_vote_user`
--
ALTER TABLE `b_vote_user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `b_xml_tree`
--
ALTER TABLE `b_xml_tree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ix_b_xml_tree_parent` (`PARENT_ID`),
  ADD KEY `ix_b_xml_tree_left` (`LEFT_MARGIN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `b_admin_notify`
--
ALTER TABLE `b_admin_notify`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_admin_notify_lang`
--
ALTER TABLE `b_admin_notify_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_agent`
--
ALTER TABLE `b_agent`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `b_app_password`
--
ALTER TABLE `b_app_password`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_bitrixcloud_option`
--
ALTER TABLE `b_bitrixcloud_option`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `b_blog`
--
ALTER TABLE `b_blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_category`
--
ALTER TABLE `b_blog_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_comment`
--
ALTER TABLE `b_blog_comment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_group`
--
ALTER TABLE `b_blog_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_image`
--
ALTER TABLE `b_blog_image`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_post`
--
ALTER TABLE `b_blog_post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_post_category`
--
ALTER TABLE `b_blog_post_category`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_post_param`
--
ALTER TABLE `b_blog_post_param`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_site_path`
--
ALTER TABLE `b_blog_site_path`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_socnet`
--
ALTER TABLE `b_blog_socnet`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_socnet_rights`
--
ALTER TABLE `b_blog_socnet_rights`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_trackback`
--
ALTER TABLE `b_blog_trackback`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_user`
--
ALTER TABLE `b_blog_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_user2blog`
--
ALTER TABLE `b_blog_user2blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_user2user_group`
--
ALTER TABLE `b_blog_user2user_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_blog_user_group`
--
ALTER TABLE `b_blog_user_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `b_blog_user_group_perms`
--
ALTER TABLE `b_blog_user_group_perms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_checklist`
--
ALTER TABLE `b_checklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_clouds_file_bucket`
--
ALTER TABLE `b_clouds_file_bucket`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_clouds_file_resize`
--
ALTER TABLE `b_clouds_file_resize`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_component_params`
--
ALTER TABLE `b_component_params`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `b_composite_log`
--
ALTER TABLE `b_composite_log`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_composite_page`
--
ALTER TABLE `b_composite_page`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_consent_agreement`
--
ALTER TABLE `b_consent_agreement`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_consent_field`
--
ALTER TABLE `b_consent_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_consent_user_consent`
--
ALTER TABLE `b_consent_user_consent`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_culture`
--
ALTER TABLE `b_culture`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `b_event`
--
ALTER TABLE `b_event`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_event_log`
--
ALTER TABLE `b_event_log`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `b_event_message`
--
ALTER TABLE `b_event_message`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `b_event_type`
--
ALTER TABLE `b_event_type`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `b_favorite`
--
ALTER TABLE `b_favorite`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_file`
--
ALTER TABLE `b_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `b_file_search`
--
ALTER TABLE `b_file_search`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_filters`
--
ALTER TABLE `b_filters`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form`
--
ALTER TABLE `b_form`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_2_group`
--
ALTER TABLE `b_form_2_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_answer`
--
ALTER TABLE `b_form_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_crm`
--
ALTER TABLE `b_form_crm`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_crm_field`
--
ALTER TABLE `b_form_crm_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_crm_link`
--
ALTER TABLE `b_form_crm_link`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_field`
--
ALTER TABLE `b_form_field`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_field_filter`
--
ALTER TABLE `b_form_field_filter`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_field_validator`
--
ALTER TABLE `b_form_field_validator`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_menu`
--
ALTER TABLE `b_form_menu`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_result`
--
ALTER TABLE `b_form_result`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_result_answer`
--
ALTER TABLE `b_form_result_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_status`
--
ALTER TABLE `b_form_status`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_form_status_2_group`
--
ALTER TABLE `b_form_status_2_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum`
--
ALTER TABLE `b_forum`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_dictionary`
--
ALTER TABLE `b_forum_dictionary`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `b_forum_email`
--
ALTER TABLE `b_forum_email`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_file`
--
ALTER TABLE `b_forum_file`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_filter`
--
ALTER TABLE `b_forum_filter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `b_forum_group`
--
ALTER TABLE `b_forum_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_group_lang`
--
ALTER TABLE `b_forum_group_lang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_letter`
--
ALTER TABLE `b_forum_letter`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `b_forum_message`
--
ALTER TABLE `b_forum_message`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_perms`
--
ALTER TABLE `b_forum_perms`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_pm_folder`
--
ALTER TABLE `b_forum_pm_folder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `b_forum_points`
--
ALTER TABLE `b_forum_points`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_points2post`
--
ALTER TABLE `b_forum_points2post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_private_message`
--
ALTER TABLE `b_forum_private_message`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_rank`
--
ALTER TABLE `b_forum_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_rank_lang`
--
ALTER TABLE `b_forum_rank_lang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_stat`
--
ALTER TABLE `b_forum_stat`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_subscribe`
--
ALTER TABLE `b_forum_subscribe`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_topic`
--
ALTER TABLE `b_forum_topic`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_user`
--
ALTER TABLE `b_forum_user`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_user_forum`
--
ALTER TABLE `b_forum_user_forum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_forum_user_topic`
--
ALTER TABLE `b_forum_user_topic`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_geoip_handlers`
--
ALTER TABLE `b_geoip_handlers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `b_group`
--
ALTER TABLE `b_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `b_hlblock_entity`
--
ALTER TABLE `b_hlblock_entity`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_hlblock_entity_rights`
--
ALTER TABLE `b_hlblock_entity_rights`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_hot_keys`
--
ALTER TABLE `b_hot_keys`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `b_hot_keys_code`
--
ALTER TABLE `b_hot_keys_code`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `b_iblock`
--
ALTER TABLE `b_iblock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `b_iblock_element`
--
ALTER TABLE `b_iblock_element`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `b_iblock_element_property`
--
ALTER TABLE `b_iblock_element_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `b_iblock_iproperty`
--
ALTER TABLE `b_iblock_iproperty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `b_iblock_offers_tmp`
--
ALTER TABLE `b_iblock_offers_tmp`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_iblock_property`
--
ALTER TABLE `b_iblock_property`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `b_iblock_property_enum`
--
ALTER TABLE `b_iblock_property_enum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `b_iblock_right`
--
ALTER TABLE `b_iblock_right`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_iblock_rss`
--
ALTER TABLE `b_iblock_rss`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_iblock_section`
--
ALTER TABLE `b_iblock_section`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `b_list_rubric`
--
ALTER TABLE `b_list_rubric`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_medialib_collection`
--
ALTER TABLE `b_medialib_collection`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_medialib_item`
--
ALTER TABLE `b_medialib_item`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_medialib_type`
--
ALTER TABLE `b_medialib_type`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `b_module_group`
--
ALTER TABLE `b_module_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `b_module_to_module`
--
ALTER TABLE `b_module_to_module`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `b_operation`
--
ALTER TABLE `b_operation`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `b_perf_cache`
--
ALTER TABLE `b_perf_cache`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_cluster`
--
ALTER TABLE `b_perf_cluster`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_component`
--
ALTER TABLE `b_perf_component`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_error`
--
ALTER TABLE `b_perf_error`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_history`
--
ALTER TABLE `b_perf_history`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_hit`
--
ALTER TABLE `b_perf_hit`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_index_ban`
--
ALTER TABLE `b_perf_index_ban`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_index_complete`
--
ALTER TABLE `b_perf_index_complete`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_index_suggest`
--
ALTER TABLE `b_perf_index_suggest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_sql`
--
ALTER TABLE `b_perf_sql`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_tab_column_stat`
--
ALTER TABLE `b_perf_tab_column_stat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_perf_test`
--
ALTER TABLE `b_perf_test`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_posting`
--
ALTER TABLE `b_posting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_posting_email`
--
ALTER TABLE `b_posting_email`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_rating`
--
ALTER TABLE `b_rating`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `b_rating_component`
--
ALTER TABLE `b_rating_component`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_rating_component_results`
--
ALTER TABLE `b_rating_component_results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_rating_results`
--
ALTER TABLE `b_rating_results`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_rating_rule`
--
ALTER TABLE `b_rating_rule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `b_rating_rule_vetting`
--
ALTER TABLE `b_rating_rule_vetting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_rating_user`
--
ALTER TABLE `b_rating_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b_rating_vote`
--
ALTER TABLE `b_rating_vote`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_rating_vote_group`
--
ALTER TABLE `b_rating_vote_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `b_rating_voting`
--
ALTER TABLE `b_rating_voting`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_rating_voting_prepare`
--
ALTER TABLE `b_rating_voting_prepare`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_rating_weight`
--
ALTER TABLE `b_rating_weight`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b_search_content`
--
ALTER TABLE `b_search_content`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `b_search_custom_rank`
--
ALTER TABLE `b_search_custom_rank`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_search_phrase`
--
ALTER TABLE `b_search_phrase`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `b_search_stem`
--
ALTER TABLE `b_search_stem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1159;
--
-- AUTO_INCREMENT for table `b_search_suggest`
--
ALTER TABLE `b_search_suggest`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_sec_filter_mask`
--
ALTER TABLE `b_sec_filter_mask`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_sec_frame_mask`
--
ALTER TABLE `b_sec_frame_mask`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_sec_iprule`
--
ALTER TABLE `b_sec_iprule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_sec_recovery_codes`
--
ALTER TABLE `b_sec_recovery_codes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_security_sitecheck`
--
ALTER TABLE `b_security_sitecheck`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_adv_autolog`
--
ALTER TABLE `b_seo_adv_autolog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_adv_banner`
--
ALTER TABLE `b_seo_adv_banner`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_adv_campaign`
--
ALTER TABLE `b_seo_adv_campaign`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_adv_group`
--
ALTER TABLE `b_seo_adv_group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_adv_log`
--
ALTER TABLE `b_seo_adv_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_adv_order`
--
ALTER TABLE `b_seo_adv_order`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_adv_region`
--
ALTER TABLE `b_seo_adv_region`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_keywords`
--
ALTER TABLE `b_seo_keywords`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_search_engine`
--
ALTER TABLE `b_seo_search_engine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `b_seo_service_log`
--
ALTER TABLE `b_seo_service_log`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_service_rtg_queue`
--
ALTER TABLE `b_seo_service_rtg_queue`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_service_webhook`
--
ALTER TABLE `b_seo_service_webhook`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_sitemap`
--
ALTER TABLE `b_seo_sitemap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_sitemap_entity`
--
ALTER TABLE `b_seo_sitemap_entity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_sitemap_iblock`
--
ALTER TABLE `b_seo_sitemap_iblock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_sitemap_runtime`
--
ALTER TABLE `b_seo_sitemap_runtime`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_seo_yandex_direct_stat`
--
ALTER TABLE `b_seo_yandex_direct_stat`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_short_uri`
--
ALTER TABLE `b_short_uri`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_site_template`
--
ALTER TABLE `b_site_template`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `b_smile`
--
ALTER TABLE `b_smile`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `b_smile_lang`
--
ALTER TABLE `b_smile_lang`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `b_smile_set`
--
ALTER TABLE `b_smile_set`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `b_socialservices_ap`
--
ALTER TABLE `b_socialservices_ap`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_socialservices_contact`
--
ALTER TABLE `b_socialservices_contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_socialservices_contact_connect`
--
ALTER TABLE `b_socialservices_contact_connect`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_socialservices_message`
--
ALTER TABLE `b_socialservices_message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_socialservices_user`
--
ALTER TABLE `b_socialservices_user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_socialservices_user_link`
--
ALTER TABLE `b_socialservices_user_link`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_sticker`
--
ALTER TABLE `b_sticker`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_subscription`
--
ALTER TABLE `b_subscription`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_task`
--
ALTER TABLE `b_task`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `b_urlpreview_metadata`
--
ALTER TABLE `b_urlpreview_metadata`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_urlpreview_route`
--
ALTER TABLE `b_urlpreview_route`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_user`
--
ALTER TABLE `b_user`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b_user_auth_action`
--
ALTER TABLE `b_user_auth_action`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_user_field`
--
ALTER TABLE `b_user_field`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `b_user_field_confirm`
--
ALTER TABLE `b_user_field_confirm`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_user_field_enum`
--
ALTER TABLE `b_user_field_enum`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_user_hit_auth`
--
ALTER TABLE `b_user_hit_auth`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_user_option`
--
ALTER TABLE `b_user_option`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `b_user_stored_auth`
--
ALTER TABLE `b_user_stored_auth`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `b_utm_blog_comment`
--
ALTER TABLE `b_utm_blog_comment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_utm_blog_post`
--
ALTER TABLE `b_utm_blog_post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_utm_forum_message`
--
ALTER TABLE `b_utm_forum_message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote`
--
ALTER TABLE `b_vote`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote_answer`
--
ALTER TABLE `b_vote_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote_attached_object`
--
ALTER TABLE `b_vote_attached_object`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote_channel`
--
ALTER TABLE `b_vote_channel`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote_channel_2_group`
--
ALTER TABLE `b_vote_channel_2_group`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote_event`
--
ALTER TABLE `b_vote_event`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote_event_answer`
--
ALTER TABLE `b_vote_event_answer`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote_event_question`
--
ALTER TABLE `b_vote_event_question`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote_question`
--
ALTER TABLE `b_vote_question`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_vote_user`
--
ALTER TABLE `b_vote_user`
  MODIFY `ID` int(18) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `b_xml_tree`
--
ALTER TABLE `b_xml_tree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;