-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: mysql:3306
-- Xerado en: 03 de Xuño de 2021 ás 16:51
-- Versión do servidor: 10.4.18-MariaDB
-- Versión do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wordpress`
--

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress ', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-05-31 16:05:17', '2021-05-31 16:05:17', 'Ola, isto é un comentario. Para empezar a moderar, editar e borrar comentarios, por favor, visita a pantalla de comentarios no escritorio. Os avatares dos comentaristas proveñen de <a href=\"https://gravatar.com\">Gravatar</a>. 	', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://192.168.99.106:5050', 'yes'),
(2, 'home', 'http://192.168.99.106:5050', 'yes'),
(3, 'blogname', 'FT SERVICES', 'yes'),
(4, 'blogdescription', '¿Es este proyecto realmente necesario? No, por eso lo quitan', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aprariasperez@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentynineteen', 'yes'),
(41, 'stylesheet', 'twentynineteen', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '8', 'yes'),
(82, 'page_on_front', '5', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1638029060', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'gl_ES', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(123, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(124, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(125, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(126, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(127, 'cron', 'a:6:{i:1622477122;a:6:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1622477142;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622477144;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1622477202;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1622563522;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(128, '_transient_doing_cron', '1622739004.8324000835418701171875', 'yes'),
(129, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/gl_ES/wordpress-5.7.2.zip\";s:6:\"locale\";s:5:\"gl_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/gl_ES/wordpress-5.7.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.7.2\";s:7:\"version\";s:5:\"5.7.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1622739028;s:15:\"version_checked\";s:5:\"5.7.2\";s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:4:\"core\";s:4:\"slug\";s:7:\"default\";s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.7.2\";s:7:\"updated\";s:19:\"2021-04-15 18:17:43\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.7.2/gl_ES.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(130, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1622739028;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(133, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1622739029;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.3.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(134, '_site_transient_timeout_browser_9a84d316bac2c1472071a2ca7d89642d', '1623081944', 'no'),
(135, '_site_transient_browser_9a84d316bac2c1472071a2ca7d89642d', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"90.0.4430.212\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(136, '_site_transient_timeout_php_check_8c0181da100b1c7d1f637c18117d0149', '1623081944', 'no'),
(137, '_site_transient_php_check_8c0181da100b1c7d1f637c18117d0149', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(145, 'theme_mods_twentytwentyone', 'a:6:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"footer\";i:3;}s:25:\"display_title_and_tagline\";b:1;s:11:\"custom_logo\";s:0:\"\";s:29:\"respect_user_color_preference\";b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1622478564;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(147, 'dismissed_update_core', 'a:1:{s:11:\"5.7.2|gl_ES\";b:1;}', 'no'),
(149, 'current_theme', 'Twenty Nineteen', 'yes'),
(150, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"footer\";i:3;s:6:\"menu-1\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(151, 'theme_switched', '', 'yes'),
(154, '_site_transient_timeout_browser_2a3710a357d9e5680de122eda1d96b8f', '1623245168', 'no'),
(155, '_site_transient_browser_2a3710a357d9e5680de122eda1d96b8f', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"91.0.4472.77\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(160, '_site_transient_timeout_theme_roots', '1622740828', 'no'),
(161, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(162, '_site_transient_timeout_browser_0e98ba354f56c86b0f07033329b6e409', '1623343829', 'no'),
(163, '_site_transient_browser_0e98ba354f56c86b0f07033329b6e409', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"90.0.4430.212\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(166, '_transient_timeout_dash_v2_cb8932febef77beecccb1b4608859285', '1622782231', 'no'),
(167, '_transient_dash_v2_cb8932febef77beecccb1b4608859285', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div>', 'no'),
(168, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1622782232', 'no'),
(169, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:3:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:60:\"Watch Party + Discussion Group: Intro to the Block Directory\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/278272711/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2021-06-04 19:00:00\";s:8:\"end_date\";s:19:\"2021-06-04 21:00:00\";s:20:\"start_unix_timestamp\";i:1622858400;s:18:\"end_unix_timestamp\";i:1622865600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://europe.wordcamp.org/2021/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2021-06-07 14:00:00\";s:8:\"end_date\";s:19:\"2021-06-09 00:00:00\";s:20:\"start_unix_timestamp\";i:1623070800;s:18:\"end_unix_timestamp\";i:1623193200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"PT\";s:8:\"latitude\";d:41.1579438;s:9:\"longitude\";d:-8.6291053;}}i:2;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:33:\"POO o no POO: esa es la cuestión\";s:3:\"url\";s:57:\"https://www.meetup.com/WordPress-Madrid/events/277562163/\";s:6:\"meetup\";s:16:\"WordPress Madrid\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/WordPress-Madrid/\";s:4:\"date\";s:19:\"2021-06-22 18:30:00\";s:8:\"end_date\";s:19:\"2021-06-22 20:30:00\";s:20:\"start_unix_timestamp\";i:1624379400;s:18:\"end_unix_timestamp\";i:1624386600;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:40.419998168945;s:9:\"longitude\";d:-3.710000038147;}}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 5, '_customize_changeset_uuid', 'cdba3c24-9e9f-485e-aaaf-36c219d2973d'),
(6, 6, '_customize_changeset_uuid', 'cdba3c24-9e9f-485e-aaaf-36c219d2973d'),
(8, 7, '_customize_changeset_uuid', 'cdba3c24-9e9f-485e-aaaf-36c219d2973d'),
(10, 8, '_customize_changeset_uuid', 'cdba3c24-9e9f-485e-aaaf-36c219d2973d'),
(11, 9, '_edit_lock', '1622478475:1'),
(12, 10, '_wp_attached_file', '2021/05/medium_rarias-p.jpeg'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:308;s:6:\"height\";i:350;s:4:\"file\";s:28:\"2021/05/medium_rarias-p.jpeg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(14, 15, '_menu_item_type', 'custom'),
(15, 15, '_menu_item_menu_item_parent', '0'),
(16, 15, '_menu_item_object_id', '15'),
(17, 15, '_menu_item_object', 'custom'),
(18, 15, '_menu_item_target', ''),
(19, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 15, '_menu_item_xfn', ''),
(21, 15, '_menu_item_url', 'http://192.168.99.106:5050/'),
(22, 16, '_menu_item_type', 'post_type'),
(23, 16, '_menu_item_menu_item_parent', '0'),
(24, 16, '_menu_item_object_id', '6'),
(25, 16, '_menu_item_object', 'page'),
(26, 16, '_menu_item_target', ''),
(27, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(28, 16, '_menu_item_xfn', ''),
(29, 16, '_menu_item_url', ''),
(30, 17, '_menu_item_type', 'post_type'),
(31, 17, '_menu_item_menu_item_parent', '0'),
(32, 17, '_menu_item_object_id', '8'),
(33, 17, '_menu_item_object', 'page'),
(34, 17, '_menu_item_target', ''),
(35, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(36, 17, '_menu_item_xfn', ''),
(37, 17, '_menu_item_url', ''),
(38, 18, '_menu_item_type', 'post_type'),
(39, 18, '_menu_item_menu_item_parent', '0'),
(40, 18, '_menu_item_object_id', '7'),
(41, 18, '_menu_item_object', 'page'),
(42, 18, '_menu_item_target', ''),
(43, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 18, '_menu_item_xfn', ''),
(45, 18, '_menu_item_url', ''),
(46, 19, '_menu_item_type', 'custom'),
(47, 19, '_menu_item_menu_item_parent', '0'),
(48, 19, '_menu_item_object_id', '19'),
(49, 19, '_menu_item_object', 'custom'),
(50, 19, '_menu_item_target', ''),
(51, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(52, 19, '_menu_item_xfn', ''),
(53, 19, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(54, 20, '_menu_item_type', 'custom'),
(55, 20, '_menu_item_menu_item_parent', '0'),
(56, 20, '_menu_item_object_id', '20'),
(57, 20, '_menu_item_object', 'custom'),
(58, 20, '_menu_item_target', ''),
(59, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(60, 20, '_menu_item_xfn', ''),
(61, 20, '_menu_item_url', 'https://twitter.com/wordpress'),
(62, 21, '_menu_item_type', 'custom'),
(63, 21, '_menu_item_menu_item_parent', '0'),
(64, 21, '_menu_item_object_id', '21'),
(65, 21, '_menu_item_object', 'custom'),
(66, 21, '_menu_item_target', ''),
(67, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 21, '_menu_item_xfn', ''),
(69, 21, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(70, 22, '_menu_item_type', 'custom'),
(71, 22, '_menu_item_menu_item_parent', '0'),
(72, 22, '_menu_item_object_id', '22'),
(73, 22, '_menu_item_object', 'custom'),
(74, 22, '_menu_item_target', ''),
(75, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(76, 22, '_menu_item_xfn', ''),
(77, 22, '_menu_item_url', 'mailto:wordpress@example.com'),
(78, 9, '_wp_trash_meta_status', 'publish'),
(79, 9, '_wp_trash_meta_time', '1622478485'),
(80, 23, '_edit_lock', '1622478497:1'),
(81, 23, '_wp_trash_meta_status', 'publish'),
(82, 23, '_wp_trash_meta_time', '1622478529'),
(83, 5, '_edit_lock', '1622641151:1'),
(84, 24, '_wp_attached_file', '2021/06/R3d94a42cda49ec9855e1073a4f7c2e2c.png'),
(85, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:427;s:4:\"file\";s:45:\"2021/06/R3d94a42cda49ec9855e1073a4f7c2e2c.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(86, 26, '_wp_trash_meta_status', 'publish'),
(87, 26, '_wp_trash_meta_time', '1622739042');

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2021-05-31 16:05:17', '2021-05-31 16:05:17', '<!-- wp:paragraph -->\n<p>Benvido a WordPress. Esta é a túa primeira entrada. Edítaa ou bórraa, e despóis empeza a escribir! </p>\n<!-- /wp:paragraph -->', 'Ola mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2021-05-31 16:05:17', '2021-05-31 16:05:17', '', 0, 'http://192.168.99.106:5050/?p=1', 0, 'post', '', 1),
(2, 1, '2021-05-31 16:05:17', '2021-05-31 16:05:17', '<!-- wp:paragraph -->\n<p>Ista é unha páxina de exemplo. É diferente a unha entrada do blog porque estará nun só lugar e aparecerá na navegación do teu sitio (na maioría dos temas). A maioría da xente comenza cunha páxina \"Acerca de\" que lles presenta aos visitantes potenciais do sitio. Podería dicir algo como esto:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Ola meu! Son canteiro en Porriño polo día, gaiteiro pola noite, e este é o meu sitio. Vivo en Vigo, na calle do Príncipe, teño un can de palleiro chamado Rex, e gústame o licor café. (E tamén bañarme en Samil cando chove.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…ou algo así: </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A compañía de calcetíns XYZ foi fundada en 1971 e desde entón proporcionou calcetíns de calidade para a xente. Situada en Santiago de Compostela, XYZ emprega a máis de 2.000 persoas e fai todo tipo de cousas impresionantes para a comunidade Santiaguesa.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como novo usuario de WordPress, deberías ir o <a href=\"http://192.168.99.106:5050/wp-admin/\">teu escritorio</a> para borrar esta páxina e crear novas páxinas para o teu contido. Pásao ben! </p>\n<!-- /wp:paragraph -->', 'Páxina de exemplo', '', 'publish', 'closed', 'open', '', 'paxina-exemplo', '', '', '2021-05-31 16:05:17', '2021-05-31 16:05:17', '', 0, 'http://192.168.99.106:5050/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-05-31 16:05:17', '2021-05-31 16:05:17', '<!-- wp:heading --><h2>Quen somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto suxerido: </strong>A dirección da nosa páxina web é: http://192.168.99.106:5050.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentarios</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto suxerido: </strong>Cando os visitantes deixan comentarios na web, recompilamos os datos que se mostran no formulario de comentarios, así como a dirección IP do visitante e a cadea de axentes de usuario do navegador para axudar á detección de  spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Unha cadea anónima creada a partir da túa dirección de correo electrónico (tamén chamada  hash) pode ser proporcionada ao servizo de  Gravatar para ver se a estás usando. A política de privacidade do servizo  Gravatar está dispoñible aquí:  https://automattic.com/privacy/. Despois da aprobación do teu comentario, a imaxe do teu perfil é visible para o público no contexto do seu comentario.	</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Multimedia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto suxerido: </strong>Se es un usuario rexistrado e carga imaxes á web, debes evitar cargar imaxes con datos de localización  GPS  EXIF incluídos. Os visitantes da web poden descargar e extraer calquera dato de localización das imaxes da web.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto suxerido: </strong>Se deixas un comentario no noso sitio podes elixir gardar o teu nome, dirección de correo electrónico e web en  cookies. Isto é para a túa comodidade, para que non teñas que volver encher os teus datos cando deixes outro comentario. Estas  cookies terán unha duración dun ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se tes unha conta e conéctaste a este sitio, instalaremos unha  cookie temporal para determinar se o teu navegador acepta  cookies. Esta  cookie non contén datos persoais e elimínase ao pechar o navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cando inicias sesión, tamén instalaremos varias  cookies para gardar a túa información de inicio de sesión e as túas opcións de visualización de pantalla. As  cookies de inicio de sesión duran dous días, e as  cookies de opcións de pantalla duran un ano. Se seleccionas &quot;Lembrarme&quot;, o teu inicio de sesión perdurará durante dúas semanas. Se saes da túa conta, as  cookies de inicio de sesión eliminaranse.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se editas ou publicas un artigo, gardarase unha  cookie adicional no teu navegador. Esta  cookie non inclúe datos persoais e simplemente indica o ID do artigo que acabas de editar. Expira despois de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Contido incrustado doutros sitios web</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto suxerido: </strong>Os artigos deste sitio poden incluír contido incrustado (por exemplo, vídeos, imaxes, artigos, etc.). O contido incrustado doutras web compórtase exactamente da mesma maneira que se o visitante visitase a outra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web poden recompilar datos sobre ti, utilizar  cookies, incrustar un seguimento adicional de terceiros, e supervisar a túa interacción con ese contido incrustado, incluído o seguimento da súa interacción co contido incrustado se tes unha conta e estás conectado a esa web.	 </p><!-- /wp:paragraph --><!-- wp:heading --><h2>Con quen compartimos os teus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto suxerido: </strong>Se solicita un restablecemento de contrasinal, a súa dirección IP incluirase no correo electrónico de restablecemento.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Canto tempo conservamos os teus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto suxerido: </strong>Se deixas un comentario, o comentario e os seus metadatos consérvanse indefinidamente. Isto é para que podamos recoñecer e aprobar comentarios sucesivos automaticamente en lugar de mantelos nunha cola de moderación</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dos usuarios que se rexistran na nosa web (se os hai), tamén almacenamos a información persoal que proporcionan no seu perfil de usuario. Todos os usuarios poden ver, editar ou eliminar a súa información persoal en calquera momento (agás que non poden cambiar o seu nome de usuario). Os administradores da web tamén poden ver e editar esa información.	</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Que dereitos tes sobre os teus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto suxerido: </strong>Se tes unha conta ou deixaches comentarios nesta web, podes solicitar recibir un arquivo de exportación dos datos persoais que temos sobre ti, incluíndo calquera dato que nos proporcionaras. Tamén podes solicitar que eliminemos calquera dato persoal que teñamos sobre ti. Isto non inclúe ningún dato que esteamos obrigados a conservar con fins administrativos, legais ou de seguridade.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Onde enviamos os teus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto suxerido: </strong>Os comentarios dos visitantes poida que os revise un servizo de detección automática de  spam.</p><!-- /wp:paragraph -->', 'Política de Privacidade', '', 'draft', 'closed', 'open', '', 'politica-privacidade', '', '', '2021-05-31 16:05:17', '2021-05-31 16:05:17', '', 0, 'http://192.168.99.106:5050/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-05-31 16:05:44', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-05-31 16:05:44', '0000-00-00 00:00:00', '', 0, 'http://192.168.99.106:5050/?p=4', 0, 'post', '', 0),
(5, 1, '2021-05-31 16:28:04', '2021-05-31 16:28:04', '<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}},\"className\":\"has-text-align-wide\",\"fontSize\":\"gigantic\"} -->\n<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Pues eso HOLA</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"id\":24,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.99.106:5050/wp-content/uploads/2021/06/R3d94a42cda49ec9855e1073a4f7c2e2c.png\" alt=\"\" class=\"wp-image-24\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Add block patterns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Frame your images</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the \"Styles\" panel within the Editor sidebar. Select the \"Frame\" block style to activate it.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Overlap columns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the \"Styles\" panel within the Editor sidebar. Choose the \"Overlap\" block style to try it out.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n<p class=\"has-huge-font-size\">Need help?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":75} -->\n<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'HOLA', '', 'publish', 'closed', 'closed', '', 'create-your-website-with-blocks', '', '', '2021-06-02 13:39:06', '2021-06-02 13:39:06', '', 0, 'http://192.168.99.106:5050/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-05-31 16:28:04', '2021-05-31 16:28:04', '<!-- wp:paragraph -->\n<p>Podes ser un artista que quere presentarse a si mesmo e ao seu traballo ou é un negocio cunha misión que describir.</p>\n<!-- /wp:paragraph -->', 'Acerca de', '', 'publish', 'closed', 'closed', '', 'acerca-de', '', '', '2021-05-31 16:28:04', '2021-05-31 16:28:04', '', 0, 'http://192.168.99.106:5050/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', '<!-- wp:paragraph -->\n<p>Esta é unha páxina con información de contacto básica, como dirección e número de teléfono. Mesmo podes probar un plugin para engadir un formulario de contacto.</p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-05-31 16:28:04', '2021-05-31 16:28:04', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:06:04\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"Primary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Inicio\",\n            \"url\": \"http://192.168.99.106:5050/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"Ligaz\\u00f3n personalizada\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 6,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"Acerca de\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Acerca de\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1xina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 8,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Blog\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Blog\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1xina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 7,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Contacto\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Contacto\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"P\\u00e1xina\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:06:04\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"Secondary menu\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Ligaz\\u00f3n personalizada\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Ligaz\\u00f3n personalizada\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Ligaz\\u00f3n personalizada\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Correo electr\\u00f3nico\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"Ligaz\\u00f3n personalizada\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:06:04\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:06:04\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:06:04\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:06:04\"\n    },\n    \"blogname\": {\n        \"value\": \"FT SERVICES\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:07:17\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u00bfEs este proyecto realmente necesario? No, por eso lo quitan\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:07:17\"\n    },\n    \"twentytwentyone::display_title_and_tagline\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:08:17\"\n    },\n    \"twentytwentyone::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:27:17\"\n    },\n    \"twentytwentyone::respect_user_color_preference\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cdba3c24-9e9f-485e-aaaf-36c219d2973d', '', '', '2021-05-31 16:28:04', '2021-05-31 16:28:04', '', 0, 'http://192.168.99.106:5050/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2021-05-31 16:07:48', '2021-05-31 16:07:48', '', 'medium_rarias-p', '', 'inherit', 'open', 'closed', '', 'medium_rarias-p', '', '', '2021-05-31 16:07:48', '2021-05-31 16:07:48', '', 0, 'http://192.168.99.106:5050/wp-content/uploads/2021/05/medium_rarias-p.jpeg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2021-05-31 16:28:04', '2021-05-31 16:28:04', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://192.168.99.106:5050/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Trémières&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://192.168.99.106:5050/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://192.168.99.106:5050/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Create your website with blocks', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-05-31 16:28:04', '2021-05-31 16:28:04', '', 5, 'http://192.168.99.106:5050/?p=11', 0, 'revision', '', 0),
(12, 1, '2021-05-31 16:28:04', '2021-05-31 16:28:04', '<!-- wp:paragraph -->\n<p>Podes ser un artista que quere presentarse a si mesmo e ao seu traballo ou é un negocio cunha misión que describir.</p>\n<!-- /wp:paragraph -->', 'Acerca de', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2021-05-31 16:28:04', '2021-05-31 16:28:04', '', 6, 'http://192.168.99.106:5050/?p=12', 0, 'revision', '', 0),
(13, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', '<!-- wp:paragraph -->\n<p>Esta é unha páxina con información de contacto básica, como dirección e número de teléfono. Mesmo podes probar un plugin para engadir un formulario de contacto.</p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 7, 'http://192.168.99.106:5050/?p=13', 0, 'revision', '', 0),
(14, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 8, 'http://192.168.99.106:5050/?p=14', 0, 'revision', '', 0),
(15, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?p=15', 0, 'nav_menu_item', '', 0),
(16, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?p=16', 1, 'nav_menu_item', '', 0),
(17, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?p=18', 3, 'nav_menu_item', '', 0),
(19, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?p=19', 0, 'nav_menu_item', '', 0),
(20, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?p=21', 2, 'nav_menu_item', '', 0),
(22, 1, '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 'Correo electrónico', '', 'publish', 'closed', 'closed', '', 'correo-electronico', '', '', '2021-05-31 16:28:05', '2021-05-31 16:28:05', '', 0, 'http://192.168.99.106:5050/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2021-05-31 16:28:49', '2021-05-31 16:28:49', '{\n    \"widget_search[2]\": {\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjA6IiI7fQ==\",\n            \"title\": \"\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"dbcb19cc2ac5004efbbcf959c3cb1f4b\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-05-31 16:28:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fb3f289a-69d6-4344-8bcf-edcd6b449651', '', '', '2021-05-31 16:28:49', '2021-05-31 16:28:49', '', 0, 'http://192.168.99.106:5050/?p=23', 0, 'customize_changeset', '', 0),
(24, 1, '2021-06-02 13:38:58', '2021-06-02 13:38:58', '', 'R3d94a42cda49ec9855e1073a4f7c2e2c', '', 'inherit', 'open', 'closed', '', 'r3d94a42cda49ec9855e1073a4f7c2e2c', '', '', '2021-06-02 13:38:58', '2021-06-02 13:38:58', '', 5, 'http://192.168.99.106:5050/wp-content/uploads/2021/06/R3d94a42cda49ec9855e1073a4f7c2e2c.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2021-06-02 13:39:06', '2021-06-02 13:39:06', '<!-- wp:heading {\"align\":\"wide\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}},\"className\":\"has-text-align-wide\",\"fontSize\":\"gigantic\"} -->\n<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Pues eso HOLA</h2>\n<!-- /wp:heading -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"id\":24,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.99.106:5050/wp-content/uploads/2021/06/R3d94a42cda49ec9855e1073a4f7c2e2c.png\" alt=\"\" class=\"wp-image-24\"/></figure>\n<!-- /wp:image --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":50} -->\n<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Add block patterns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Frame your images</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the \"Styles\" panel within the Editor sidebar. Select the \"Frame\" block style to activate it.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n<h3>Overlap columns</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the \"Styles\" panel within the Editor sidebar. Choose the \"Overlap\" block style to try it out.</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer -->\n<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n<p class=\"has-huge-font-size\">Need help?</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":75} -->\n<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns -->\n<div class=\"wp-block-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:paragraph -->\n<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->\n\n<!-- wp:spacer {\"height\":20} -->\n<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer --></div></div>\n<!-- /wp:cover -->', 'HOLA', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2021-06-02 13:39:06', '2021-06-02 13:39:06', '', 5, 'http://192.168.99.106:5050/?p=25', 0, 'revision', '', 0),
(26, 1, '2021-06-03 16:50:42', '2021-06-03 16:50:42', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-06-03 16:50:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '301be1f2-adff-4630-a4be-a787ff092f02', '', '', '2021-06-03 16:50:42', '2021-06-03 16:50:42', '', 0, 'http://192.168.99.106:5050/?p=26', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sen categorizar', 'sen-categoria', 0),
(2, 'Primary menu', 'primary-menu', 0),
(3, 'Secondary menu', 'secondary-menu', 0);

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(18, 2, 0),
(19, 3, 0),
(20, 3, 0),
(21, 3, 0),
(22, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'PEPE1'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"6d0e5ad22d6ddb1775ab81b527d99ad7a3b342afcd69050bbddf6d9132b2ea3a\";a:4:{s:10:\"expiration\";i:1623686742;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:137:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36 Edg/90.0.818.66\";s:5:\"login\";i:1622477142;}s:64:\"d966604bfa70aca300dee9c82cd90da74b53f9a696f8887eb286b5b743cf34e4\";a:4:{s:10:\"expiration\";i:1623850016;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:136:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.77 Safari/537.36 Edg/91.0.864.37\";s:5:\"login\";i:1622640416;}s:64:\"19632d1b2452c31e50a5f572ed511bc692026d296b5f2ae801b82c4aa66e6225\";a:4:{s:10:\"expiration\";i:1622911214;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36\";s:5:\"login\";i:1622738414;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(19, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(20, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(21, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_site_health,dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(23, 1, 'wp_user-settings-time', '1622478577'),
(24, 2, 'nickname', 'rarias'),
(25, 2, 'first_name', ''),
(26, 2, 'last_name', ''),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(36, 2, 'wp_user_level', '0'),
(37, 2, 'dismissed_wp_pointers', ''),
(38, 3, 'nickname', 'th0rln'),
(39, 3, 'first_name', 'Raúl'),
(40, 3, 'last_name', 'Pérez'),
(41, 3, 'description', ''),
(42, 3, 'rich_editing', 'true'),
(43, 3, 'syntax_highlighting', 'true'),
(44, 3, 'comment_shortcuts', 'false'),
(45, 3, 'admin_color', 'fresh'),
(46, 3, 'use_ssl', '0'),
(47, 3, 'show_admin_bar_front', 'true'),
(48, 3, 'locale', ''),
(49, 3, 'wp_capabilities', 'a:1:{s:10:\"subscriber\";b:1;}'),
(50, 3, 'wp_user_level', '0'),
(51, 3, 'dismissed_wp_pointers', '');

-- --------------------------------------------------------

--
-- Estrutura da táboa `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- A extraer os datos da táboa `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BT9hPbx8u1P4uKqFAILDEkI3q6Z4KO1', 'admin', 'aprariasperez@gmail.com', 'http://192.168.99.106:5050', '2021-05-31 16:04:47', '', 0, 'admin'),
(2, 'rarias', '$P$B2ZSGo1sMdwWAWoh2v4qkxy2SBElA5.', 'rarias', 'fred1999@hotmail.es', '', '2021-06-02 13:28:56', '', 0, 'rarias'),
(3, 'th0rln', '$P$BOIVQ1AnYIMAFi2MLYt2jbaefZZ3sp0', 'th0rln', 'aprarias@outlook.es', '', '2021-06-02 13:29:43', '1622640583:$P$BItW3KSAmYntr6SFhBxBPzlTtoA.o00', 0, 'Raúl Pérez');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
