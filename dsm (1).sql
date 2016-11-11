-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2016 at 09:25 PM
-- Server version: 5.6.28-0ubuntu0.15.04.1
-- PHP Version: 5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dsm`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2016-06-22 20:09:34', '2016-06-22 20:09:34', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/dsm', 'yes'),
(2, 'home', 'http://localhost/dsm', 'yes'),
(3, 'blogname', 'dsm', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'mostafafcis15@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:84:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:"my-live-chat-for-wp/mylivechat.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'dsm', 'yes'),
(41, 'stylesheet', 'dsm', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '36686', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '36686', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:68:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:13:"wplc_ma_agent";b:1;s:24:"edit_wplc_quick_response";b:1;s:30:"edit_other_wplc_quick_response";b:1;s:27:"publish_wplc_quick_response";b:1;s:24:"read_wplc_quick_response";b:1;s:32:"read_private_wplc_quick_response";b:1;s:26:"delete_wplc_quick_response";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(103, 'cron', 'a:4:{i:1478894975;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1478895554;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1478954157;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:3:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.6.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.6.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.6.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.6.1";s:7:"version";s:5:"4.6.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}i:2;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.5.4.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.4-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.5.4-new-bundled.zip";s:7:"partial";s:69:"https://downloads.wordpress.org/release/wordpress-4.5.4-partial-2.zip";s:8:"rollback";s:70:"https://downloads.wordpress.org/release/wordpress-4.5.4-rollback-2.zip";}s:7:"current";s:5:"4.5.4";s:7:"version";s:5:"4.5.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:5:"4.5.2";s:9:"new_files";s:0:"";}}s:12:"last_checked";i:1478866753;s:15:"version_checked";s:5:"4.5.2";s:12:"translations";a:0:{}}', 'yes'),
(113, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:23:"mostafafcis15@gmail.com";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1466626181;}', 'yes'),
(114, '_site_transient_timeout_browser_957ff357d86d61812652b338a326fbf6', '1467230982', 'yes'),
(115, '_site_transient_browser_957ff357d86d61812652b338a326fbf6', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"51.0.2704.84";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(116, 'can_compress_scripts', '0', 'yes'),
(133, 'auth_key', 'd#=3W?zW?g*TjUFdL#%N[DJ? UHHLrEnE@7E>88|x1sP[j~0)nNioAX!-GpAWwx5', 'yes'),
(134, 'auth_salt', '6d0^#CN$ct).|R(yF%w?V#_3SoQPGZ-Qn2K:/OesyfRt)_5I]h0;40cpB:FbjCy3', 'yes'),
(135, 'logged_in_key', '&`:#B)=9,]dpN1#2xSUU>!:+MpzELaTR/FCFpL2mwznVH5nO{-5aiI}j,H{078)5', 'yes'),
(136, 'logged_in_salt', 'eKkf1HEy1g=]JP@~nV1x/wQ[O>hu7XkXUt(p-}rG1SE.g,!vF,.mFrPBxqSZ$`!b', 'yes'),
(137, 'nonce_key', 'R;%y)gxnM:H=z*&YwUGffQ|n2Zz36aw88~9!H#3WW$s]2C<.K1TzzN8x4kI)O``_', 'yes'),
(138, 'nonce_salt', '9x@d81ZPzVIKcSHv@X_esK`b~;wAtt>aS)ox6&.1`+oGzG^QH,U]@1titj]o@u?:', 'yes'),
(140, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1466626757;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(141, 'current_theme', '', 'yes'),
(142, 'theme_mods_dsm', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:11:"header-menu";i:3;}}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(178, 'recently_activated', 'a:2:{s:34:"tidio-live-chat/tidio-elements.php";i:1467415043;s:36:"custom-stock-ticker/stock_ticker.php";i:1466992548;}', 'yes'),
(189, 'stock_ticker_version', '2.2', 'yes'),
(190, 'stock_ticker_notice_text', 'Stock Ticker Installed v2.2', 'yes'),
(191, '_site_transient_timeout_available_translations', '1467002646', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(192, '_site_transient_available_translations', 'a:81:{s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 14:44:00";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 15:55:55";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-18 20:18:13";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 14:49:09";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-01 06:39:12";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-17 11:01:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 14:21:06";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-12 17:20:10";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 19:26:41";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 20:03:25";s:12:"english_name";s:23:"(Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.5.2/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 05:39:37";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 08:22:25";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.5.2/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-14 00:07:52";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:51:07";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 11:29:02";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-26 02:00:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 05:23:57";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 06:26:11";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 10:58:49";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-28 13:08:25";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 21:06:55";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-13 06:41:57";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-19 16:39:25";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-19 21:32:12";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:43:00";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 17:35:43";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 11:11:25";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-23 22:05:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-20 14:58:27";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-09 10:11:54";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:33:47";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-15 18:57:20";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-15 09:40:08";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.4";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.3.4/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 23:06:30";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-16 13:14:11";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 11:24:52";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-07 12:13:44";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-11 06:46:15";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-06 22:14:55";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-02 15:13:48";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 12:36:18";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-27 00:36:15";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 09:29:35";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-08 02:07:38";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 06:34:16";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-16 06:42:31";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-06 05:52:25";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.11/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 12:35:50";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-13 08:12:50";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-01-20 13:35:50";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.4.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-11 07:36:04";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-25 06:38:00";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.5.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-13 17:52:25";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.11";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.11/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-16 13:40:41";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-27 18:35:51";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-06-20 07:40:08";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-13 18:04:14";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-29 09:53:12";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-26 00:00:18";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-09 09:01:28";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-10 08:00:57";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-14 14:47:49";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-22 14:05:41";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-21 01:31:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-31 09:50:18";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-05-23 09:33:59";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.5.2/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.5.2";s:7:"updated";s:19:"2016-04-12 09:08:07";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.2/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(193, 'widget_exchange_rate_table', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(198, 'wp_uci_nbm_date', '27.06.2016', 'yes'),
(199, 'wp_uci_cbr_date', '27.06.2016', 'yes'),
(200, 'wp_uci_nbu_date', '27.06.2016', 'yes'),
(201, 'uci_db_version', '0.4', 'yes'),
(207, 'widget_uci_exchange_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(208, 'wp_uci_plurl', 'http://localhost/dsm/wp-content/plugins/wp-universal-exchange-informer', 'yes'),
(209, 'widget_lft_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(210, 'lft_txttitle', 'Live Forex', 'yes'),
(211, 'lft_your_currency', 'EUR', 'yes'),
(212, 'lft_other_currency', 'AWG,AED', 'yes'),
(232, 'wplc_db_version', '6.2.00', 'yes'),
(234, 'WPLC_SETTINGS', 'a:33:{s:19:"wplc_settings_align";s:1:"2";s:16:"wplc_environment";s:1:"1";s:20:"wplc_settings_color1";s:6:"362FED";s:18:"wplc_settings_fill";s:6:"362FED";s:20:"wplc_settings_color2";s:6:"FFFFFF";s:18:"wplc_settings_font";s:6:"FFFFFF";s:20:"wplc_settings_color3";s:6:"EEEEEE";s:20:"wplc_settings_color4";s:6:"666666";s:21:"wplc_settings_enabled";s:1:"1";s:16:"wplc_auto_pop_up";s:1:"1";s:22:"wplc_require_user_info";s:1:"1";s:23:"wplc_loggedin_user_info";s:1:"1";s:26:"wplc_user_alternative_text";s:70:"Please click \\&#039;Start Chat\\&#039; to initiate a chat with an agent";s:22:"wplc_enabled_on_mobile";s:1:"1";s:17:"wplc_display_name";s:1:"1";s:22:"wplc_record_ip_address";s:1:"1";s:21:"wplc_enable_msg_sound";s:1:"1";s:11:"wplc_pro_na";s:29:"Chat offline. Leave a message";s:27:"wplc_pro_chat_email_address";s:21:"saber.trika@gmail.com";s:17:"wplc_pro_offline1";s:89:"We are currently offline. Please leave a message and we\\&#039;ll get back to you shortly.";s:17:"wplc_pro_offline2";s:18:"Sending message...";s:17:"wplc_pro_offline3";s:55:"Thank you for your message. We will be in contact soon.";s:13:"wplc_pro_fst1";s:10:"Questions?";s:13:"wplc_pro_fst2";s:12:"Chat with us";s:13:"wplc_pro_sst1";s:10:"Start Chat";s:13:"wplc_pro_sst2";s:32:"Connecting. Please be patient...";s:13:"wplc_pro_tst1";s:34:"Reactivating your previous chat...";s:14:"wplc_pro_intro";s:56:"Hello. Please input your details so that I may help you.";s:15:"wplc_user_enter";s:32:"Press ENTER to send your message";s:22:"wplc_user_welcome_chat";s:28:"Welcome. How may I help you?";s:10:"wplc_theme";s:7:"theme-6";s:13:"wplc_newtheme";s:7:"theme-2";s:13:"wplc_pro_fst3";s:15:"Start live chat";}', 'yes'),
(239, 'WPLC_HIDE_CHAT', '', 'yes'),
(240, 'WPLC_FIRST_TIME', '', 'yes'),
(241, 'wplc_current_version', '6.2.00', 'yes'),
(242, '_transient_timeout_wplc_is_admin_logged_in', '1467414051', 'no'),
(243, '_transient_wplc_is_admin_logged_in', '1', 'no'),
(244, 'wplc_stats', 'a:6:{s:14:"chat_dashboard";a:3:{s:5:"views";i:10;s:13:"last_accessed";s:19:"2016-07-01 22:14:02";s:14:"first_accessed";s:19:"2016-07-01 21:46:47";}s:8:"settings";a:3:{s:5:"views";i:15;s:13:"last_accessed";s:19:"2016-07-01 22:14:04";s:14:"first_accessed";s:19:"2016-07-01 21:46:57";}s:7:"history";a:3:{s:5:"views";i:2;s:13:"last_accessed";s:19:"2016-07-01 22:02:12";s:14:"first_accessed";s:19:"2016-07-01 21:47:19";}s:6:"missed";a:3:{s:5:"views";i:2;s:13:"last_accessed";s:19:"2016-07-01 21:53:28";s:14:"first_accessed";s:19:"2016-07-01 21:47:23";}s:16:"offline_messages";a:3:{s:5:"views";i:2;s:13:"last_accessed";s:19:"2016-07-01 22:00:29";s:14:"first_accessed";s:19:"2016-07-01 21:47:26";}s:7:"support";a:3:{s:5:"views";i:2;s:13:"last_accessed";s:19:"2016-07-01 21:53:47";s:14:"first_accessed";s:19:"2016-07-01 21:48:06";}}', 'yes'),
(245, 'WPLC_BANNED_IP_ADDRESSES', 's:17:"a:1:{i:0;s:0:"";}";', 'yes'),
(246, 'wplc_advanced_settings', 'a:2:{s:15:"wplc_iterations";s:2:"55";s:24:"wplc_delay_between_loops";s:6:"500000";}', 'yes'),
(247, 'wplc_mail_type', 'wp_mail', 'yes'),
(248, 'wplc_mail_host', '', 'yes'),
(249, 'wplc_mail_port', '', 'yes'),
(250, 'wplc_mail_username', 'admin', 'yes'),
(251, 'wplc_mail_password', 'xwwx11', 'yes'),
(252, 'WPLC_FIRST_TIME_TUTORIAL', '1', 'yes'),
(253, 'theme_mods_twentyfifteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1467411132;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(255, '_transient_twentyfifteen_categories', '1', 'yes'),
(258, 'theme_mods_test', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1467413990;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(259, 'theme_switched_via_customizer', '', 'yes'),
(262, 'widget_mylivechat_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(263, 'mylivechat_id', '57573525', 'yes'),
(264, 'mylivechat_pos', 'footer', 'yes'),
(265, 'mylivechat_displaytype', 'box', 'yes'),
(277, '_site_transient_timeout_browser_5a243ddaa41c25c28bf4d3a7849af769', '1470163816', 'yes'),
(278, '_site_transient_browser_5a243ddaa41c25c28bf4d3a7849af769', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.106";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(325, '_site_transient_timeout_browser_77d4665d09fc560e08b87156fefd27a8', '1475432770', 'yes'),
(326, '_site_transient_browser_77d4665d09fc560e08b87156fefd27a8', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.0.2743.116";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(352, '_site_transient_timeout_browser_b58c00e4a28dd0f99b79d80dc2e43b10', '1479333032', 'yes'),
(353, '_site_transient_browser_b58c00e4a28dd0f99b79d80dc2e43b10', 'a:9:{s:8:"platform";s:5:"Linux";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.71";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(370, 'category_children', 'a:0:{}', 'yes'),
(373, '_site_transient_timeout_theme_roots', '1478868557', 'yes'),
(374, '_site_transient_theme_roots', 'a:4:{s:3:"dsm";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'yes'),
(375, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1478866764;s:7:"checked";a:4:{s:3:"dsm";s:0:"";s:13:"twentyfifteen";s:3:"1.5";s:14:"twentyfourteen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.2";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.6";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.6.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.8";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.8.zip";}s:13:"twentysixteen";a:4:{s:5:"theme";s:13:"twentysixteen";s:11:"new_version";s:3:"1.3";s:3:"url";s:43:"https://wordpress.org/themes/twentysixteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentysixteen.1.3.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(376, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1478866762;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.2";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.2.zip";s:6:"tested";s:5:"4.6.1";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:34:"my-live-chat-for-wp/mylivechat.php";O:8:"stdClass":6:{s:2:"id";s:5:"26388";s:4:"slug";s:19:"my-live-chat-for-wp";s:6:"plugin";s:34:"my-live-chat-for-wp/mylivechat.php";s:11:"new_version";s:5:"2.0.1";s:3:"url";s:50:"https://wordpress.org/plugins/my-live-chat-for-wp/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/my-live-chat-for-wp.zip";}}}', 'yes'),
(377, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1478910431', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(378, '_transient_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n\n\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:49:"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:26:"https://wordpress.org/news";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:14:"WordPress News";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:13:"lastBuildDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 11 Nov 2016 03:30:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:40:"https://wordpress.org/?v=4.7-beta3-39202";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:10:{i:0;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.7 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/11/wordpress-4-7-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 11 Nov 2016 03:30:52 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4566";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.7 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3120:"<p>WordPress 4.7 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.7-beta3.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.7, check out the <a href="https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2016/11/wordpress-4-7-beta-2/">Beta 2</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-7+dev-notes/">in-depth field guides on make/core</a>. Some of the changes in Beta 3 include:</p>\n<ul>\n<li><strong>REST API:</strong> The <code>unfiltered_html</code> capability is now respected and <code>rest_base</code> has been added to response objects of <code>wp/v2/taxonomies</code> and <code>wp/v2/types</code>, while <code>get_allowed_query_vars()</code> and the <code>rest_get_post</code> filter have been removed.</li>\n<li><strong>Roles/Capabilities:</strong> Added meta-caps for comment, term, and user meta, which are currently only used in the REST API.</li>\n<li><strong>I18N:</strong> Added the ability to change user&#8217;s locale back to site&#8217;s locale. (<a href="https://core.trac.wordpress.org/ticket/38632">#38632</a>)</li>\n<li><strong>Custom CSS:</strong> Renamed the <code>unfiltered_css</code> meta capability to <code>edit_css</code> and added revisions support to the <code>custom_css</code> post type.</li>\n<li><strong>Edit shortcuts:</strong> Theme authors should take a look at <a href="https://make.wordpress.org/core/2016/11/10/visible-edit-shortcuts-in-the-customizer-preview/">the developer guide to the customizer preview&#8217;s visible edit shortcuts</a> and update their themes to take advantage of them if not already implementing selective refresh.</li>\n<li><strong>Various bug fixes:</strong> We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=39200&amp;stop_rev=39143&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=">over 50 changes</a> in the last week.</li>\n</ul>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p><em>Building the future</em><br />\n<em>A global community</em><br />\n<em>Stronger together</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4566";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.7 Beta 2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/11/wordpress-4-7-beta-2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 04 Nov 2016 17:39:07 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4552";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.7 Beta 2 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4240:"<p>WordPress 4.7 Beta 2 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.7-beta2.zip">download the beta here</a> (zip).</p>\n<p>Notable changes since WordPress 4.7 Beta 1:</p>\n<ul>\n<li><strong>Twenty Seventeen:</strong> The theme wasn&#8217;t being installed on upgrades &#8211; sorry about that! Now you should see it if you&#8217;re upgrading an existing site. There are also plenty of fixes, especially for the header and small screen views.</li>\n<li><strong>Edit shortcuts:</strong> These are always visible while editing (hide them on bigger screens by collapsing the controls) and should now work properly in Firefox. (<a href="https://core.trac.wordpress.org/ticket/27403">#27403</a> and <a href="https://core.trac.wordpress.org/ticket/38532">#38532</a>)</li>\n<li><strong>REST API endpoints:</strong> There have been a number of changes over the past week; your attention is requested on the following:\n<ul>\n<li>The <code>DELETE</code> response format has changed and may need to be accounted for. (<a href="https://core.trac.wordpress.org/ticket/38494">#38494</a>)</li>\n<li>Enabled querying by multiple post statuses. (<a href="https://core.trac.wordpress.org/ticket/38420">#38420</a>)</li>\n<li>Return an error when JSON decoding fails. (<a href="https://core.trac.wordpress.org/ticket/38547">#38547</a>)</li>\n</ul>\n</li>\n<li><strong>More developer notes</strong>\n<ul>\n<li><a href="https://make.wordpress.org/core/2016/10/28/fine-grained-capabilities-for-taxonomy-terms-in-4-7/">Fine grained capabilities for taxonomy terms</a></li>\n<li><a href="https://make.wordpress.org/core/2016/10/29/wp_taxonomy-in-4-7/"><code>WP_Taxonomy</code></a></li>\n<li><a href="https://make.wordpress.org/core/2016/11/02/wp_list_sort-and-wp_list_util-in-4-7/"><code>wp_list_sort()</code> and <code>WP_List_Util</code></a></li>\n<li><a href="https://make.wordpress.org/core/2016/11/03/post-type-templates-in-4-7/">Post type templates</a></li>\n<li><a href="https://make.wordpress.org/core/2016/11/03/new-post-type-labels-in-4-7/">New post type labels</a></li>\n<li><a href="https://make.wordpress.org/core/2016/11/03/attributes-for-resource-hints-in-4-7/">Attributes for resource hints</a></li>\n</ul>\n</li>\n<li><strong>Various bug fixes:</strong> We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=39142&amp;stop_rev=38995&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=">almost 150 changes</a> in the last week.</li>\n</ul>\n<p>For more of what’s new in version 4.7, <a href="https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/">check out the Beta 1 blog post</a>.</p>\n<p>If you want a more in-depth view of what major changes have made it into 4.7, <a href="https://make.wordpress.org/core/tag/4-7/">check out posts tagged with 4.7 on the main development blog</a>, or look at a <a href="https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=4.7&amp;group=component&amp;order=priority">list of everything</a> that’s changed. There will be more developer notes to come, so keep an eye out for those as well.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p>Happy testing!</p>\n<p><em>Ya es la hora</em><br />\n<em> Time for another beta</em><br />\n请您帮下忙!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4552";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:33:"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.7 Beta 1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/10/wordpress-4-7-beta-1/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 28 Oct 2016 04:30:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:1:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4535";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.7 Beta 1 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Helen Hou-Sandi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:6895:"<p>WordPress 4.7 Beta 1 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.7-beta1.zip">download the beta here</a> (zip).</p>\n<p>WordPress 4.7 is slated for release on <a href="https://make.wordpress.org/core/4-7/">December 6</a>, but we need your help to get there. We&#8217;ve been working on a lot of things, many of them to make getting your site set up the way you want it much easier. Here are some of the bigger items to test and help us find as many bugs as possible in the coming weeks:</p>\n<ul>\n<li><a href="http://2017.wordpress.net/"><strong>Twenty Seventeen</strong></a> &#8211; A brand new default theme brings your site to life with immersive featured images, video headers, and subtle animations. With a focus on business sites, it features multiple sections on the front page as well as widgets, navigation and social menus, a logo, and more. Personalize its asymmetrical grid with a custom color scheme and showcase your multimedia content with post formats. Our default theme for 2017 works great in many languages, for any abilities, and on any device.</li>\n<li><strong>Video Headers</strong> &#8211; Sometimes a big atmospheric video as a moving header image is just what you need to showcase your wares; go ahead and try it out with Twenty Seventeen. Need some video inspiration? Try searching for sites with video headers available for download and use.</li>\n<li><strong>Set up your site in one flow</strong> &#8211; From finding and installing themes right inside the customizer, to automatically staged theme-specific starter content, to clickable shortcuts that jump directly to editing an item from the preview pane, to adding pages while you&#8217;re building a nav menu or setting a static front page: getting a new site spun up and ready to share with a friend or a coworker is faster and easier than it&#8217;s ever been. Note: starter content appears when live previewing brand new sites and is currently only available in Twenty Seventeen. We&#8217;ll be expanding this to other bundled themes very soon, and perhaps to sites with existing content in future releases of WordPress.</li>\n<li><strong>Custom CSS with live previews</strong> &#8211; Ever needed to hide or tweak the look of something in your theme or from a plugin? Now you can do it with CSS and live preview the results while customizing your site. CSS can be a powerful tool; you may find that you won&#8217;t need the theme editor or child themes anymore.</li>\n<li><strong>User admin languages</strong> &#8211; Just because your site is in one language doesn&#8217;t mean that everybody helping manage it prefers that language for their admin. To try this out, you&#8217;ll need to have more than one language installed, which will make a user language option available in your profile.</li>\n<li><strong>PDF thumbnail previews</strong> &#8211; Uploading PDFs will now generate thumbnail images so you can more easily distinguish between all your documents.</li>\n</ul>\n<p>As always, there have been exciting changes for developers to explore as well, such as:</p>\n<ul>\n<li><strong>REST API content endpoints</strong> &#8211; If you only test one thing as a developer, please test these. This phase is particularly helpful for people building plugins, themes, and in-admin interfaces. Can you build the things you need? Are these ready for release, and is the world ready for them? (<a href="https://core.trac.wordpress.org/ticket/38373">#38373</a>)</li>\n<li><strong><code>WP_Hook</code></strong> &#8211; The code that lies beneath actions and filters has been overhauled. You likely aren&#8217;t affected, but if you&#8217;ve done things to the <code>$wp_filter</code> global or experienced funky recursion bugs in the past, <a href="https://make.wordpress.org/core/2016/09/08/wp_hook-next-generation-actions-and-filters/">please take a moment to read the dev note</a> and test your code.</li>\n<li><a href="https://make.wordpress.org/core/2016/10/04/custom-bulk-actions/"><strong>Custom bulk actions</strong></a> &#8211; List tables, now with more than bulk edit and delete.</li>\n<li>Expanded <a href="https://make.wordpress.org/core/2016/10/26/registering-your-settings-in-wordpress-4-7/"><strong>Settings Registration API</strong></a> via <code>register_setting()</code>.</li>\n<li>For theme developers: <strong>Post type templates</strong> (<a href="https://core.trac.wordpress.org/ticket/18375">#18375</a>)</li>\n<li><strong><a href="https://make.wordpress.org/core/2016/09/09/new-functions-hooks-and-behaviour-for-theme-developers-in-wordpress-4-7/">More goodies for theme developers!</a></strong></li>\n<li><strong>Locale switching</strong> (<a href="https://core.trac.wordpress.org/ticket/26511">#26511</a>)</li>\n<li><a href="https://make.wordpress.org/core/2016/10/11/comment-allowed-checks-in-wordpress-4-7/"><strong>Comment allowed checks</strong></a> have the potential for a back-compat break.</li>\n</ul>\n<p>If you want a more in-depth view of what major changes have made it into 4.7, <a href="https://make.wordpress.org/core/tag/4-7/">check out posts tagged with 4.7 on the main development blog</a>, or look at a <a href="https://core.trac.wordpress.org/query?status=closed&amp;resolution=fixed&amp;milestone=4.7&amp;group=component&amp;order=priority">list of everything</a> that’s changed. There will be more developer notes to come, so keep an eye out for those as well.</p>\n<p><strong>If you think you’ve found a bug</strong>, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report, <a href="https://make.wordpress.org/core/reports/">file one on WordPress Trac</a>, where you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a>.</p>\n<p>Happy testing, and please enjoy this extended haiku break, courtesy of <a href="https://profiles.wordpress.org/ramiabraham">Rami Abraham</a><em>.</em></p>\n<p><em>Exquisite endpoints</em><br />\n<em>Extol epic exabytes</em><br />\n<em>Enabling earthlings</em></p>\n<p><em>Careful interfaces</em><br />\n<em>Considerately conjured</em><br />\n<em>Customizer chic</em></p>\n<p><em>Ring in the new year</em><br />\n<em>With elegance and balance</em><br />\n<em>Twenty Seventeen</em></p>\n<p><em>Hooks hook healthily</em><br />\n<em>17817</em><br />\n<em>Sane iterations</em></p>\n<p><em>Admin in your tongue<br />\nOne site, many languages<br />\nWe all speak WordPress</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4535";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:45:"\n		\n		\n		\n		\n				\n		\n		\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:50:"Join Us Again for Global WordPress Translation Day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:86:"https://wordpress.org/news/2016/10/join-us-again-for-global-wordpress-translation-day/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Oct 2016 13:33:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:5:{i:0;a:5:{s:4:"data";s:9:"Community";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:19:"contributor weekend";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:32:"global wordpress translation day";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:3;a:5:{s:4:"data";s:9:"polyglots";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:4;a:5:{s:4:"data";s:12:"translations";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4516";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:373:"The WordPress Polyglots team is organizing the second Global WordPress Translation Day on November 12th. Everyone is invited to join – from anywhere in the world! Translating is one of the easiest ways to get involved with WordPress and contribute to the project. Global WordPress Translation Day is your chance to learn more about translating WordPress, meet [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:15:"Petya Raykovska";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4273:"<p>The WordPress Polyglots team is organizing the second <a href="https://wptranslationday.org/">Global WordPress Translation Day</a> on November 12th. Everyone is invited to join – from anywhere in the world!</p>\n<p>Translating is one of the easiest ways to get involved with WordPress and contribute to the project. Global WordPress Translation Day is your chance to learn more about translating WordPress, meet people from all over the world, and <a href="https://make.wordpress.org/polyglots/teams">translate WordPress into one of more than 160 languages</a>.</p>\n<h3>Join us on November 12th from anywhere in the world</h3>\n<p>The translation day starts on Saturday, November 12th, 2016, at 0:00 UTC and ends 24 hours later. <a href="http://arewemeetingyet.com/UTC/2016-11-12/00:00/Global%20WordPress%20Translation%20Day%202">See what time that is for you!</a> You can join right from the start, or any time it&#8217;s convenient for you throughout the day.</p>\n<h3>What are we doing?</h3>\n<p>Local contributor days are happening all over the world, and are a great way to get involved. <a href="https://www.google.com/maps/d/viewer?mid=12Gni4JMfShyWHPqGNwh5-PMneMM&amp;usp=sharing">Check out this map</a> to see if there&#8217;s already a local event happening near you. Can&#8217;t find one? <a href="https://make.wordpress.org/polyglots/2016/09/22/global-wordpress-translation-day-2-on-november-12th-2016/">Organize a local event!</a></p>\n<p>At the same time, <a href="https://www.crowdcast.io/e/gwtd2/register">join the community for 24 hours of live-streamed, remote sessions</a> in numerous languages. Sessions will cover localization, internationalization, and contributing in your language.</p>\n<h3>Who&#8217;s it for?</h3>\n<p>Whether you&#8217;re new to translating and want to learn how to translate, or an experienced translation editor building a strong team, the translation day is for <i>you</i>. Developers will also enjoy topics from experienced contributors, whether you&#8217;re learning about internationalization and or want to find more translators for your themes and plugins. There&#8217;s a session for everyone!</p>\n<h3>Get Involved</h3>\n<p>Joining is easy! On November 12th, in your own timezone, <a href="https://translate.wordpress.org">translate WordPress</a> or your favorite plugins and themes into your language, while watching live sessions over the course of the day.</p>\n<p>Want to get more involved? <a href="https://make.wordpress.org/polyglots/2016/09/22/global-wordpress-translation-day-2-on-november-12th-2016/">Sign up to organize a local event</a> and invite your local community to translate together on November 12th. Events can be formal or completely informal – grab your laptop and a couple of friends, and head to a local coffee shop to translate for an hour or two.</p>\n<h3>Can you get involved if you only speak English?</h3>\n<p>Absolutely! Even if you only speak English, there are great sessions about internationalization that can benefit every developer. There&#8217;s also lots of English variants that need your help! For example, English is spoken and written differently in Australia, Canada, New Zealand, South Africa, and the United Kingdom. You can learn about these differences and why these variants are important during the sessions.</p>\n<p>And if you’re feeling fun, try translating WordPress into emoji! Yep, we have a translation of WordPress in emoji! <img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f30e.png" alt="🌎" class="wp-smiley" style="height: 1em; max-height: 1em;" /><img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f30d.png" alt="🌍" class="wp-smiley" style="height: 1em; max-height: 1em;" /><img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f30f.png" alt="🌏" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n<h3>Questions?</h3>\n<p>If you have any questions, the polyglots team and the event organizers hang out in <a href="http://wordpress.slack.com/messages/polyglots/">#polyglots in Slack</a> and are happy to help! (Get an invite to Slack at <a href="https://chat.wordpress.org">chat.wordpress.org</a>.)</p>\n<p>Sign up to take part in the event on the <a href="https://wptranslationday.org/">official website</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4516";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:48:"WordPress 4.6.1 Security and Maintenance Release";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:84:"https://wordpress.org/news/2016/09/wordpress-4-6-1-security-and-maintenance-release/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 07 Sep 2016 15:52:09 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4507";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:377:"WordPress 4.6.1 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.6 and earlier are affected by two security issues: a cross-site scripting vulnerability via image filename, reported by SumOfPwn researcher Cengiz Han Sahin; and a path traversal vulnerability in [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Jeremy Felt";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2757:"<p>WordPress 4.6.1 is now available. This is a <strong>security release</strong> for all previous versions and we strongly encourage you to update your sites immediately.</p>\n<p>WordPress versions 4.6 and earlier are affected by two security issues: a cross-site scripting vulnerability via image filename, reported by SumOfPwn researcher <a href="https://twitter.com/cengizhansahin">Cengiz Han Sahin</a>; and a path traversal vulnerability in the upgrade package uploader, reported by <a href="https://dominikschilling.de/">Dominik Schilling</a> from the WordPress security team.</p>\n<p>Thank you to the reporters for practicing <a href="https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/">responsible disclosure</a>.</p>\n<p>In addition to the security issues above, WordPress 4.6.1 fixes 15 bugs from 4.6. For more information, see the <a href="https://codex.wordpress.org/Version_4.6.1">release notes</a> or consult the <a href="https://core.trac.wordpress.org/query?milestone=4.6.1">list of changes</a>.</p>\n<p><a href="https://wordpress.org/download/">Download WordPress 4.6.1</a> or venture over to Dashboard → Updates and simply click “Update Now.” Sites that support automatic background updates are already beginning to update to WordPress 4.6.1.</p>\n<p>Thanks to everyone who contributed to 4.6.1:</p>\n<p><a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone Gorges</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/geminorum">geminorum</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J. (Clorith)</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, and <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>.</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4507";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:36:"\n		\n		\n		\n		\n				\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"WordPress 4.6 “Pepper”";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:42:"https://wordpress.org/news/2016/08/pepper/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 16 Aug 2016 19:06:46 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:2:{i:0;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4444";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:276:"Version 4.6 of WordPress, named “Pepper” in honor of jazz baritone saxophonist Park Frederick “Pepper” Adams III, is available for download or update in your WordPress dashboard. New features in 4.6 help you to focus on the important things while feeling more at home.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:27121:"<p>Version 4.6 of WordPress, named “Pepper” in honor of jazz baritone saxophonist Park Frederick “Pepper” Adams III, is available for download or update in your WordPress dashboard. New features in 4.6 help you to focus on the important things while feeling more at home.</p>\n<p><iframe width=''632'' height=''354'' src=''https://videopress.com/embed/GbdhpGF3?hd=1'' frameborder=''0'' allowfullscreen></iframe><script src=''https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243''></script></p>\n<hr />\n<h2 style="text-align: center">Streamlined Updates</h2>\n<p><img class="aligncenter wp-image-4454 size-large" src="https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=632%2C379&#038;ssl=1" srcset="https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=1024%2C614&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=300%2C180&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?resize=768%2C461&amp;ssl=1 768w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?w=1264&amp;ssl=1 1264w, https://i0.wp.com/wordpress.org/news/files/2016/08/streamlined-updates.png?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Don’t lose your place: stay on the same page while you update, install, and delete your plugins and themes.</p>\n<hr />\n<h2 style="text-align: center">Native Fonts</h2>\n<p><img class="aligncenter wp-image-4455 size-large" src="https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=632%2C379&#038;ssl=1" srcset="https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=1024%2C614&amp;ssl=1 1024w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=300%2C180&amp;ssl=1 300w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?resize=768%2C461&amp;ssl=1 768w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?w=1264&amp;ssl=1 1264w, https://i2.wp.com/wordpress.org/news/files/2016/08/native-fonts.png?w=1896&amp;ssl=1 1896w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>The WordPress dashboard now takes advantage of the fonts you already have, making it load faster and letting you feel more at home on whatever device you use.</p>\n<hr />\n<h2 style="text-align: center">Editor Improvements</h2>\n<div style="float: left;width: 48%;margin: 0">\n<h3>Inline Link Checker</h3>\n<p><img class="aligncenter wp-image-4456 size-full" src="https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=632%2C379&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?w=992&amp;ssl=1 992w, https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=300%2C180&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/08/inline-link-checker.png?resize=768%2C461&amp;ssl=1 768w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>Ever accidentally made a link to https://wordpress.org/example.org? Now WordPress automatically checks to make sure you didn’t.</p>\n</div>\n<div style="float: right;width: 48%;margin: 0">\n<h3>Content Recovery</h3>\n<p><img class="aligncenter wp-image-4457 size-full" src="https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=632%2C379&#038;ssl=1" srcset="https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?w=992&amp;ssl=1 992w, https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=300%2C180&amp;ssl=1 300w, https://i1.wp.com/wordpress.org/news/files/2016/08/content-recovery.png?resize=768%2C461&amp;ssl=1 768w" sizes="(max-width: 632px) 100vw, 632px" data-recalc-dims="1" /></p>\n<p>As you type, WordPress saves your content to the browser. Recovering saved content is even easier with WordPress 4.6.</p>\n</div>\n<hr style="clear: both" />\n<h2 style="text-align: center">Under The Hood</h2>\n<h3>Resource Hints</h3>\n<p><a href="https://make.wordpress.org/core/2016/07/06/resource-hints-in-4-6/">Resource hints help browsers</a> decide which resources to fetch and preprocess. WordPress 4.6 adds them automatically for your styles and scripts making your site even faster.</p>\n<h3>Robust Requests</h3>\n<p>The HTTP API now leverages the Requests library, improving HTTP standard support and adding case-insensitive headers, parallel HTTP requests, and support for Internationalized Domain Names.</p>\n<h3><code>WP_Term_Query</code> and <code>WP_Post_Type</code></h3>\n<p>A new <code><a href="https://developer.wordpress.org/reference/classes/wp_term_query">WP_Term_Query</a></code> class adds flexibility to query term information while a new <code><a href="https://developer.wordpress.org/reference/classes/wp_post_type">WP_Post_Type</a></code> object makes interacting with post types more predictable.</p>\n<h3>Meta Registration API</h3>\n<p>The Meta Registration API <a href="https://make.wordpress.org/core/2016/07/08/enhancing-register_meta-in-4-6/">has been expanded</a> to support types, descriptions, and REST API visibility.</p>\n<h3>Translations On Demand</h3>\n<p>WordPress will install and use the newest language packs for your plugins and themes as soon as they’re available from <a href="https://translate.wordpress.org/">WordPress.org’s community of translators</a>.</p>\n<h3>JavaScript Library Updates</h3>\n<p>Masonry 3.3.2, imagesLoaded 3.2.0, MediaElement.js 2.22.0, TinyMCE 4.4.1, and Backbone.js 1.3.3 are bundled.</p>\n<h3>Customizer APIs for Setting Validation and Notifications</h3>\n<p>Settings now have an <a href="https://make.wordpress.org/core/2016/07/05/customizer-apis-in-4-6-for-setting-validation-and-notifications/">API for enforcing validation constraints</a>. Likewise, customizer controls now support notifications, which are used to display validation errors instead of failing silently.</p>\n<h3>Multisite, now faster than ever</h3>\n<p>Cached and comprehensive site queries improve your network admin experience. The addition of <code><a href="https://developer.wordpress.org/reference/classes/wp_site_query">WP_Site_Query</a></code> and <code><a href="https://developer.wordpress.org/reference/classes/wp_network_query">WP_Network_Query</a></code> help craft advanced queries with less effort.</p>\n<hr />\n<h2 style="text-align: center">The Crew</h2>\n<p>This release was led by <a href="https://dominikschilling.de/">Dominik Schilling</a>, backed up by <a href="https://www.garthmortensen.com/">Garth Mortensen</a> as Release Deputy, and with the help of these fine individuals. There are <span style="font-weight: 400">272</span> contributors with props in this release. Pull up some Pepper Adams on your music service of choice, and check out some of their profiles:</p>\n<a href="https://profiles.wordpress.org/a5hleyrich">A5hleyRich</a>, <a href="https://profiles.wordpress.org/jorbin">Aaron Jorbin</a>, <a href="https://profiles.wordpress.org/achbed">achbed</a>, <a href="https://profiles.wordpress.org/adamsilverstein">Adam Silverstein</a>, <a href="https://profiles.wordpress.org/adamsoucie">Adam Soucie</a>, <a href="https://profiles.wordpress.org/adrianosilvaferreira">Adriano Ferreira</a>, <a href="https://profiles.wordpress.org/afineman">afineman</a>, <a href="https://profiles.wordpress.org/mrahmadawais">Ahmad Awais</a>, <a href="https://profiles.wordpress.org/aidvu">aidvu</a>, <a href="https://profiles.wordpress.org/akibjorklund">Aki Bj&#246;rklund</a>, <a href="https://profiles.wordpress.org/xknown">Alex Concha</a>, <a href="https://profiles.wordpress.org/xavortm">Alex Dimitrov</a>, <a href="https://profiles.wordpress.org/alexkingorg">Alex King</a>, <a href="https://profiles.wordpress.org/viper007bond">Alex Mills (Viper007Bond)</a>, <a href="https://profiles.wordpress.org/alexvandervegt">alexvandervegt</a>, <a href="https://profiles.wordpress.org/ambrosey">Alice Brosey</a>, <a href="https://profiles.wordpress.org/aaires">Ana Aires</a>, <a href="https://profiles.wordpress.org/afercia">Andrea Fercia</a>, <a href="https://profiles.wordpress.org/andg">Andrea Gandino</a>, <a href="https://profiles.wordpress.org/nacin">Andrew Nacin</a>, <a href="https://profiles.wordpress.org/azaozz">Andrew Ozz</a>, <a href="https://profiles.wordpress.org/rockwell15">Andrew Rockwell</a>, <a href="https://profiles.wordpress.org/afragen">Andy Fragen</a>, <a href="https://profiles.wordpress.org/andizer">Andy Meerwaldt</a>, <a href="https://profiles.wordpress.org/andy">Andy Skelton</a>, <a href="https://profiles.wordpress.org/anilbasnet">Anil Basnet</a>, <a href="https://profiles.wordpress.org/ankit-k-gupta">Ankit K Gupta</a>, <a href="https://profiles.wordpress.org/anneschmidt">anneschmidt</a>, <a href="https://profiles.wordpress.org/zuige">Antti Kuosmanen</a>, <a href="https://profiles.wordpress.org/ideag">Arunas Liuiza</a>, <a href="https://profiles.wordpress.org/barry">Barry</a>, <a href="https://profiles.wordpress.org/barryceelen">Barry Ceelen</a>, <a href="https://profiles.wordpress.org/kau-boy">Bernhard Kau</a>, <a href="https://profiles.wordpress.org/birgire">Birgir Erlendsson (birgire)</a>, <a href="https://profiles.wordpress.org/bobbingwide">bobbingwide</a>, <a href="https://profiles.wordpress.org/gitlost">bonger</a>, <a href="https://profiles.wordpress.org/boonebgorges">Boone B. Gorges</a>, <a href="https://profiles.wordpress.org/bradt">Brad Touesnard</a>, <a href="https://profiles.wordpress.org/kraftbj">Brandon Kraft</a>, <a href="https://profiles.wordpress.org/brianvan">brianvan</a>, <a href="https://profiles.wordpress.org/borgesbruno">Bruno Borges</a>, <a href="https://profiles.wordpress.org/bpetty">Bryan Petty</a>, <a href="https://profiles.wordpress.org/purcebr">Bryan Purcell</a>, <a href="https://profiles.wordpress.org/chandrapatel">Chandra Patel</a>, <a href="https://profiles.wordpress.org/chaos-engine">Chaos Engine</a>, <a href="https://profiles.wordpress.org/chouby">Chouby</a>, <a href="https://profiles.wordpress.org/chris_dev">Chris Mok</a>, <a href="https://profiles.wordpress.org/c3mdigital">Chris Olbekson</a>, <a href="https://profiles.wordpress.org/chriscct7">chriscct7</a>, <a href="https://profiles.wordpress.org/christophherr">Christoph Herr</a>, <a href="https://profiles.wordpress.org/cfinke">Christopher Finke</a>, <a href="https://profiles.wordpress.org/cliffseal">Cliff Seal</a>, <a href="https://profiles.wordpress.org/clubduece">clubduece</a>, <a href="https://profiles.wordpress.org/cmillerdev">cmillerdev</a>, <a href="https://profiles.wordpress.org/craig-ralston">Craig Ralston</a>, <a href="https://profiles.wordpress.org/crstauf">crstauf</a>, <a href="https://profiles.wordpress.org/dabnpits">dabnpits</a>, <a href="https://profiles.wordpress.org/danielbachhuber">Daniel Bachhuber</a>, <a href="https://profiles.wordpress.org/danielhuesken">Daniel H&#252;sken</a>, <a href="https://profiles.wordpress.org/danielkanchev">Daniel Kanchev</a>, <a href="https://profiles.wordpress.org/mte90">Daniele Scasciafratte</a>, <a href="https://profiles.wordpress.org/dashaluna">dashaluna</a>, <a href="https://profiles.wordpress.org/davewarfel">davewarfel</a>, <a href="https://profiles.wordpress.org/davidakennedy">David A. Kennedy</a>, <a href="https://profiles.wordpress.org/davidanderson">David Anderson</a>, <a href="https://profiles.wordpress.org/dbrumbaugh10up">David Brumbaugh</a>, <a href="https://profiles.wordpress.org/dcavins">David Cavins</a>, <a href="https://profiles.wordpress.org/dlh">David Herrera</a>, <a href="https://profiles.wordpress.org/davidmosterd">David Mosterd</a>, <a href="https://profiles.wordpress.org/dshanske">David Shanske</a>, <a href="https://profiles.wordpress.org/realloc">Dennis Ploetner</a>, <a href="https://profiles.wordpress.org/valendesigns">Derek Herman</a>, <a href="https://profiles.wordpress.org/downstairsdev">Devin Price</a>, <a href="https://profiles.wordpress.org/dd32">Dion Hulse</a>, <a href="https://profiles.wordpress.org/dougwollison">Doug Wollison</a>, <a href="https://profiles.wordpress.org/drewapicture">Drew Jaynes</a>, <a href="https://profiles.wordpress.org/iseulde">Ella Iseulde Van Dorpe</a>, <a href="https://profiles.wordpress.org/elrae">elrae</a>, <a href="https://profiles.wordpress.org/ericlewis">Eric Andrew Lewis</a>, <a href="https://profiles.wordpress.org/ethitter">Erick Hitter</a>, <a href="https://profiles.wordpress.org/fab1en">Fabien Quatravaux</a>, <a href="https://profiles.wordpress.org/faison">Faison</a>, <a href="https://profiles.wordpress.org/flixos90">Felix Arntz</a>, <a href="https://profiles.wordpress.org/flyingdr">flyingdr</a>, <a href="https://profiles.wordpress.org/foliovision">FolioVision</a>, <a href="https://profiles.wordpress.org/francescobagnoli">francescobagnoli</a>, <a href="https://profiles.wordpress.org/bueltge">Frank Bueltge</a>, <a href="https://profiles.wordpress.org/frank-klein">Frank Klein</a>, <a href="https://profiles.wordpress.org/efarem">Frank Martin</a>, <a href="https://profiles.wordpress.org/frozzare">Fredrik Forsmo</a>, <a href="https://profiles.wordpress.org/mintindeed">Gabriel Koen</a>, <a href="https://profiles.wordpress.org/gma992">Gabriel Maldonado</a>, <a href="https://profiles.wordpress.org/pento">Gary Pendergast</a>, <a href="https://profiles.wordpress.org/gblsm">gblsm</a>, <a href="https://profiles.wordpress.org/geekysoft">Geeky Software</a>, <a href="https://profiles.wordpress.org/geminorum">geminorum</a>, <a href="https://profiles.wordpress.org/georgestephanis">George Stephanis</a>, <a href="https://profiles.wordpress.org/hardeepasrani">Hardeep Asrani</a>, <a href="https://profiles.wordpress.org/helen">Helen Hou-Sandí</a>, <a href="https://profiles.wordpress.org/henrywright">Henry Wright</a>, <a href="https://profiles.wordpress.org/hugobaeta">Hugo Baeta</a>, <a href="https://profiles.wordpress.org/polevaultweb">Iain Poulson</a>, <a href="https://profiles.wordpress.org/iandunn">Ian Dunn</a>, <a href="https://profiles.wordpress.org/igmoweb">Ignacio Cruz Moreno</a>, <a href="https://profiles.wordpress.org/imath">imath</a>, <a href="https://profiles.wordpress.org/inderpreet99">Inderpreet Singh</a>, <a href="https://profiles.wordpress.org/ionutst">Ionut Stanciu</a>, <a href="https://profiles.wordpress.org/ipstenu">Ipstenu (Mika Epstein)</a>, <a href="https://profiles.wordpress.org/jdgrimes">J.D. Grimes</a>, <a href="https://profiles.wordpress.org/macmanx">James Huff</a>, <a href="https://profiles.wordpress.org/jnylen0">James Nylen</a>, <a href="https://profiles.wordpress.org/underdude">Janne Ala-&#196;ij&#228;l&#228;</a>, <a href="https://profiles.wordpress.org/jaspermdegroot">Jasper de Groot</a>, <a href="https://profiles.wordpress.org/javorszky">javorszky</a>, <a href="https://profiles.wordpress.org/jfarthing84">Jeff Farthing</a>, <a href="https://profiles.wordpress.org/cheffheid">Jeffrey de Wit</a>, <a href="https://profiles.wordpress.org/jeremyfelt">Jeremy Felt</a>, <a href="https://profiles.wordpress.org/endocreative">Jeremy Green</a>, <a href="https://profiles.wordpress.org/jeherve">Jeremy Herve</a>, <a href="https://profiles.wordpress.org/jmichaelward">Jeremy Ward</a>, <a href="https://profiles.wordpress.org/jerrysarcastic">Jerry Bates (jerrysarcastic)</a>, <a href="https://profiles.wordpress.org/jesin">Jesin A</a>, <a href="https://profiles.wordpress.org/jipmoors">Jip Moors</a>, <a href="https://profiles.wordpress.org/joedolson">Joe Dolson</a>, <a href="https://profiles.wordpress.org/joehoyle">Joe Hoyle</a>, <a href="https://profiles.wordpress.org/joemcgill">Joe McGill</a>, <a href="https://profiles.wordpress.org/joelwills">Joel Williams</a>, <a href="https://profiles.wordpress.org/j-falk">Johan Falk</a>, <a href="https://profiles.wordpress.org/johnbillion">John Blackbourn</a>, <a href="https://profiles.wordpress.org/johnjamesjacoby">John James Jacoby</a>, <a href="https://profiles.wordpress.org/johnpgreen">John P. Green</a>, <a href="https://profiles.wordpress.org/john_schlick">John_Schlick</a>, <a href="https://profiles.wordpress.org/kenshino">Jon (Kenshino)</a>, <a href="https://profiles.wordpress.org/jbrinley">Jonathan Brinley</a>, <a href="https://profiles.wordpress.org/spacedmonkey">Jonny Harris</a>, <a href="https://profiles.wordpress.org/joostdevalk">Joost de Valk</a>, <a href="https://profiles.wordpress.org/josephscott">Joseph Scott</a>, <a href="https://profiles.wordpress.org/shelob9">Josh Pollock</a>, <a href="https://profiles.wordpress.org/joshuagoodwin">Joshua Goodwin</a>, <a href="https://profiles.wordpress.org/jpdavoutian">jpdavoutian</a>, <a href="https://profiles.wordpress.org/jrf">jrf</a>, <a href="https://profiles.wordpress.org/jsternberg">jsternberg</a>, <a href="https://profiles.wordpress.org/juanfra">Juanfra Aldasoro</a>, <a href="https://profiles.wordpress.org/juhise">Juhi Saxena</a>, <a href="https://profiles.wordpress.org/julesaus">julesaus</a>, <a href="https://profiles.wordpress.org/justinsainton">Justin Sainton</a>, <a href="https://profiles.wordpress.org/ryelle">Kelly Dwan</a>, <a href="https://profiles.wordpress.org/khag7">Kevin Hagerty</a>, <a href="https://profiles.wordpress.org/ixkaito">Kite</a>, <a href="https://profiles.wordpress.org/kjbenk">kjbenk</a>, <a href="https://profiles.wordpress.org/kovshenin">Konstantin Kovshenin</a>, <a href="https://profiles.wordpress.org/obenland">Konstantin Obenland</a>, <a href="https://profiles.wordpress.org/kurtpayne">Kurt Payne</a>, <a href="https://profiles.wordpress.org/offereins">Laurens Offereins</a>, <a href="https://profiles.wordpress.org/lukecavanagh">Luke Cavanagh</a>, <a href="https://profiles.wordpress.org/latz">Lutz Schr&#246;er</a>, <a href="https://profiles.wordpress.org/mpol">Marcel Pol</a>, <a href="https://profiles.wordpress.org/clorith">Marius L. J. (Clorith)</a>, <a href="https://profiles.wordpress.org/markjaquith">Mark Jaquith</a>, <a href="https://profiles.wordpress.org/mapk">Mark Uraine</a>, <a href="https://profiles.wordpress.org/martinkrcho">martin.krcho</a>, <a href="https://profiles.wordpress.org/mattmiklic">Matt Miklic</a>, <a href="https://profiles.wordpress.org/matt">Matt Mullenweg</a>, <a href="https://profiles.wordpress.org/borkweb">Matthew Batchelder</a>, <a href="https://profiles.wordpress.org/mattyrob">mattyrob</a>, <a href="https://profiles.wordpress.org/wzislam">Mayeenul Islam</a>, <a href="https://profiles.wordpress.org/mdwheele">mdwheele</a>, <a href="https://profiles.wordpress.org/medariox">medariox</a>, <a href="https://profiles.wordpress.org/mehulkaklotar">Mehul Kaklotar</a>, <a href="https://profiles.wordpress.org/meitar">Meitar</a>, <a href="https://profiles.wordpress.org/melchoyce">Mel Choyce</a>, <a href="https://profiles.wordpress.org/roseapplemedia">Michael</a>, <a href="https://profiles.wordpress.org/michaelarestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michael-arestad">Michael Arestad</a>, <a href="https://profiles.wordpress.org/michaelbeil">Michael Beil</a>, <a href="https://profiles.wordpress.org/stuporglue">Michael Moore</a>, <a href="https://profiles.wordpress.org/mbijon">Mike Bijon</a>, <a href="https://profiles.wordpress.org/mikehansenme">Mike Hansen</a>, <a href="https://profiles.wordpress.org/mikeschroder">Mike Schroder</a>, <a href="https://profiles.wordpress.org/dimadin">Milan Dinić</a>, <a href="https://profiles.wordpress.org/morganestes">Morgan Estes</a>, <a href="https://profiles.wordpress.org/mt8biz">moto hachi ( mt8.biz )</a>, <a href="https://profiles.wordpress.org/m_uysl">Mustafa Uysal</a>, <a href="https://profiles.wordpress.org/nicholas_io">N&#237;cholas Andr&#233;</a>, <a href="https://profiles.wordpress.org/nextendweb">Nextendweb</a>, <a href="https://profiles.wordpress.org/niallkennedy">Niall Kennedy</a>, <a href="https://profiles.wordpress.org/celloexpressions">Nick Halsey</a>, <a href="https://profiles.wordpress.org/nikschavan">Nikhil Chavan</a>, <a href="https://profiles.wordpress.org/rabmalin">Nilambar Sharma</a>, <a href="https://profiles.wordpress.org/ninos-ego">Ninos</a>, <a href="https://profiles.wordpress.org/alleynoah">Noah</a>, <a href="https://profiles.wordpress.org/noahsilverstein">noahsilverstein</a>, <a href="https://profiles.wordpress.org/odysseygate">odyssey</a>, <a href="https://profiles.wordpress.org/ojrask">ojrask</a>, <a href="https://profiles.wordpress.org/olarmarius">Olar Marius</a>, <a href="https://profiles.wordpress.org/ovann86">ovann86</a>, <a href="https://profiles.wordpress.org/pansotdev">pansotdev</a>, <a href="https://profiles.wordpress.org/swissspidy">Pascal Birchler</a>, <a href="https://profiles.wordpress.org/pbearne">Paul Bearne</a>, <a href="https://profiles.wordpress.org/bassgang">Paul Vincent Beigang</a>, <a href="https://profiles.wordpress.org/paulwilde">Paul Wilde</a>, <a href="https://profiles.wordpress.org/pavelevap">pavelevap</a>, <a href="https://profiles.wordpress.org/pcarvalho">pcarvalho</a>, <a href="https://profiles.wordpress.org/westi">Peter Westwood</a>, <a href="https://profiles.wordpress.org/peterwilsoncc">Peter Wilson</a>, <a href="https://profiles.wordpress.org/peterrknight">PeterRKnight</a>, <a href="https://profiles.wordpress.org/walbo">Petter Walb&#248; Johnsg&#229;rd</a>, <a href="https://profiles.wordpress.org/petya">Petya Raykovska</a>, <a href="https://profiles.wordpress.org/wizzard_">Pieter</a>, <a href="https://profiles.wordpress.org/pollett">Pollett</a>, <a href="https://profiles.wordpress.org/postpostmodern">postpostmodern</a>, <a href="https://profiles.wordpress.org/presskopp">Presskopp</a>, <a href="https://profiles.wordpress.org/prettyboymp">prettyboymp</a>, <a href="https://profiles.wordpress.org/r-a-y">r-a-y</a>, <a href="https://profiles.wordpress.org/rachelbaker">Rachel Baker</a>, <a href="https://profiles.wordpress.org/rafaelangeline">rafaelangeline</a>, <a href="https://profiles.wordpress.org/zetaraffix">raffaella isidori</a>, <a href="https://profiles.wordpress.org/rahulsprajapati">Rahul Prajapati</a>, <a href="https://profiles.wordpress.org/ramiy">Rami Yushuvaev</a>, <a href="https://profiles.wordpress.org/rianrietveld">Rian Rietveld </a>, <a href="https://profiles.wordpress.org/iamfriendly">Richard Tape</a>, <a href="https://profiles.wordpress.org/rpayne7264">Robert D Payne</a>, <a href="https://profiles.wordpress.org/littlerchicken">Robin Cornett</a>, <a href="https://profiles.wordpress.org/rodrigosprimo">Rodrigo Primo</a>, <a href="https://profiles.wordpress.org/ronalfy">Ronald Huereca</a>, <a href="https://profiles.wordpress.org/ruudjoyo">Ruud Laan</a>, <a href="https://profiles.wordpress.org/rmccue">Ryan McCue</a>, <a href="https://profiles.wordpress.org/welcher">Ryan Welcher</a>, <a href="https://profiles.wordpress.org/samantha-miller">Samantha Miller</a>, <a href="https://profiles.wordpress.org/solarissmoke">Samir Shah</a>, <a href="https://profiles.wordpress.org/rosso99">Sara Rosso</a>, <a href="https://profiles.wordpress.org/schlessera">schlessera</a>, <a href="https://profiles.wordpress.org/scottbasgaard">Scott Basgaard</a>, <a href="https://profiles.wordpress.org/sc0ttkclark">Scott Kingsley Clark</a>, <a href="https://profiles.wordpress.org/coffee2code">Scott Reilly</a>, <a href="https://profiles.wordpress.org/wonderboymusic">Scott Taylor</a>, <a href="https://profiles.wordpress.org/screamingdev">screamingdev</a>, <a href="https://profiles.wordpress.org/sebastianpisula">Sebastian Pisula</a>, <a href="https://profiles.wordpress.org/semil">semil</a>, <a href="https://profiles.wordpress.org/sergeybiryukov">Sergey Biryukov</a>, <a href="https://profiles.wordpress.org/shahpranaf">shahpranaf</a>, <a href="https://profiles.wordpress.org/sidati">Sidati</a>, <a href="https://profiles.wordpress.org/neverything">Silvan Hagen</a>, <a href="https://profiles.wordpress.org/simonvik">Simon Vikstr&#246;m</a>, <a href="https://profiles.wordpress.org/sirjonathan">sirjonathan</a>, <a href="https://profiles.wordpress.org/smerriman">smerriman</a>, <a href="https://profiles.wordpress.org/soean">Soeren Wrede</a>, <a href="https://profiles.wordpress.org/southp">southp</a>, <a href="https://profiles.wordpress.org/metodiew">Stanko Metodiev</a>, <a href="https://profiles.wordpress.org/stephdau">Stephane Daury (stephdau)</a>, <a href="https://profiles.wordpress.org/coderste">Stephen</a>, <a href="https://profiles.wordpress.org/netweb">Stephen Edgar</a>, <a href="https://profiles.wordpress.org/stephenharris">Stephen Harris</a>, <a href="https://profiles.wordpress.org/stevenkword">Steven Word</a>, <a href="https://profiles.wordpress.org/stubgo">stubgo</a>, <a href="https://profiles.wordpress.org/sudar">Sudar Muthu</a>, <a href="https://profiles.wordpress.org/patilswapnilv">Swapnil V. Patil</a>, <a href="https://profiles.wordpress.org/tacoverdo">Taco Verdonschot</a>, <a href="https://profiles.wordpress.org/iamtakashi">Takashi Irie</a>, <a href="https://profiles.wordpress.org/karmatosed">Tammie Lister</a>, <a href="https://profiles.wordpress.org/tlovett1">Taylor Lovett</a>, <a href="https://profiles.wordpress.org/themiked">theMikeD</a>, <a href="https://profiles.wordpress.org/thomaswm">thomaswm</a>, <a href="https://profiles.wordpress.org/tfrommen">Thorsten Frommen</a>, <a href="https://profiles.wordpress.org/timothyblynjacobs">Timothy Jacobs</a>, <a href="https://profiles.wordpress.org/tloureiro">tloureiro</a>, <a href="https://profiles.wordpress.org/travisnorthcutt">Travis Northcutt</a>, <a href="https://profiles.wordpress.org/nmt90">Triet Minh</a>, <a href="https://profiles.wordpress.org/grapplerulrich">Ulrich</a>, <a href="https://profiles.wordpress.org/unyson">Unyson</a>, <a href="https://profiles.wordpress.org/szepeviktor">Viktor Sz&#233;pe</a>, <a href="https://profiles.wordpress.org/vishalkakadiya">Vishal Kakadiya</a>, <a href="https://profiles.wordpress.org/vortfu">vortfu</a>, <a href="https://profiles.wordpress.org/svovaf">vovafeldman</a>, <a href="https://profiles.wordpress.org/websupporter">websupporter</a>, <a href="https://profiles.wordpress.org/westonruter">Weston Ruter</a>, <a href="https://profiles.wordpress.org/wp_smith">wp_smith</a>, <a href="https://profiles.wordpress.org/wpfo">wpfo</a>, <a href="https://profiles.wordpress.org/xavivars">Xavi Ivars</a>, <a href="https://profiles.wordpress.org/yoavf">Yoav Farhi</a>, <a href="https://profiles.wordpress.org/tollmanz">Zack Tollman</a>, and <a href="https://profiles.wordpress.org/zakb8">zakb8</a>.\n<p>&nbsp;</p>\n<p>Special thanks go to <a href="https://jerrysarcastic.com/">Jerry Bates</a> for producing the release video and <a href="http://hugobaeta.com/">Hugo Baeta</a> for providing marketing graphics.</p>\n<p>Finally, thanks to all the community translators who worked on WordPress 4.6. Their efforts make it possible to use WordPress 4.6 in 52 languages. The WordPress 4.6 release video has been captioned into 43 languages.</p>\n<p>If you want to follow along or help out, check out <a href="https://make.wordpress.org/">Make WordPress</a> and our <a href="https://make.wordpress.org/core/">core development blog</a>. Thanks for choosing WordPress. See you soon for version 4.7!</p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4444";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:17:"WordPress 4.6 RC2";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/news/2016/08/wordpress-4-6-rc2/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Aug 2016 00:31:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4427";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:341:"The second release candidate for WordPress 4.6 is now available. We’ve made over 30 changes since the first release candidate. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on Tuesday, August 16, but we need [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3450:"<p>The second release candidate for WordPress 4.6 is now available.</p>\n<p>We’ve made over <a href="https://core.trac.wordpress.org/log/branches/4.6/src?action=stop_on_copy&amp;mode=follow_copy&amp;rev=38246&amp;stop_rev=38170&amp;limit=200&amp;verbose=on&amp;sfp_email=&amp;sfph_mail=">30 changes</a> since the first release candidate. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on <strong>Tuesday, August 16</strong>, but we need <em>your</em> help to get there.</p>\n<p>If you haven’t tested 4.6 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.6, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.6-RC2.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/">Beta 3</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/">Beta 4</a>, and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-release-candidate/">RC 1</a> blog posts.</p>\n<p>A few changes of note since the first release candidate:</p>\n<ul>\n<li>Support for custom HTTP methods and proxy authentication has been restored.</li>\n<li>Various fixes for the streamlined updates, including better failure messages and error handling, basic back-compat styling for custom update notifications, and additional and standardized JavaScript events.</li>\n<li>Unnecessary reference parameters have been removed from new multisite functions.</li>\n<li>A compatibility issue with PHP 7.0.9 (and PHP 7.1) has been fixed.</li>\n</ul>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.6 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.6. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release – we never want to break things.</p>\n<p>Be sure to read the <a href="https://make.wordpress.org/core/2016/07/26/wordpress-4-6-field-guide/">in-depth field guide</a>, a post with all the developer-focused changes that take place under the hood.</p>\n<p><strong>Translators</strong>, strings are now frozen, including the About Page, so you are clear to translate! <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>Happy testing!</p>\n<p><em>The verdict is in,</em><br />\n<em>Can I haz all the features,</em><br />\n<em>Your best WordPress yet.</em></p>\n<p><img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f3f3.png" alt="🏳" class="wp-smiley" style="height: 1em; max-height: 1em;" />️‍<img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f308.png" alt="🌈" class="wp-smiley" style="height: 1em; max-height: 1em;" /></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4427";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:31:"WordPress 4.6 Release Candidate";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:67:"https://wordpress.org/news/2016/07/wordpress-4-6-release-candidate/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jul 2016 19:14:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4416";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:337:"The release candidate for WordPress 4.6 is now available. We’ve made a few refinements since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on Tuesday, August 16, but we need [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:2428:"<p>The release candidate for WordPress 4.6 is now available.</p>\n<p>We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=38169&amp;stop_rev=38124&amp;limit=200&amp;verbose=on">a few refinements</a> since releasing Beta 4 a week ago. RC means we think we’re done, but with millions of users and thousands of plugins and themes, it’s possible we’ve missed something. We hope to ship WordPress 4.6 on <strong>Tuesday, August 16</strong>, but we need <em>your</em> help to get there.</p>\n<p>If you haven’t tested 4.6 yet, now is the time!</p>\n<p><strong>Think you&#8217;ve found a bug?</strong> Please post to the <a href="https://wordpress.org/support/forum/alphabeta/">Alpha/Beta support forum</a>. If any known issues come up, you&#8217;ll be able to <a href="https://core.trac.wordpress.org/report/5">find them here</a>.</p>\n<p>To test WordPress 4.6, you can use the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin or you can <a href="https://wordpress.org/wordpress-4.6-RC1.zip">download the release candidate here</a> (zip).</p>\n<p>For more information about what’s new in version 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/">Beta 3</a>, and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/">Beta 4</a> blog posts.</p>\n<p><strong>Developers</strong>, please test your plugins and themes against WordPress 4.6 and update your plugin&#8217;s <em>Tested up to</em> version in the readme to 4.6. If you find compatibility problems please be sure to post to the support forums so we can figure those out before the final release – we never want to break things.</p>\n<p>Be sure to read the <a href="https://make.wordpress.org/core/2016/07/26/wordpress-4-6-field-guide/">in-depth field guide</a>, a post with all the developer-focused changes that take place under the hood.</p>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>Happy testing!</p>\n<p><em>Der Sommer ist da,</em><br />\n<em>Zeit für ein neues Release.</em><br />\n<em>Bald ist es soweit.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4416";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 4";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/07/wordpress-4-6-beta-4/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 20 Jul 2016 18:49:17 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4396";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 4 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:4321:"<p>WordPress 4.6 Beta 4 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta4.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a>, <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a>, and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/">Beta 3</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-6+dev-notes/">in-depth field guides</a>. This is the final <a href="https://make.wordpress.org/core/version-4-6-project-schedule/">planned beta</a> of WordPress 4.6, with a release candidate scheduled for next week.</p>\n<p>Some of the fixes in Beta 4 include:</p>\n<ul>\n<li><strong>Media</strong>: <code>alt</code> attributes are now always added to images inserted from URLs (<a href="https://core.trac.wordpress.org/ticket/36735">#36735</a>).</li>\n<li>Object subtype handling has been removed from <code>register_meta()</code>. Details about this change are explained in <a href="https://make.wordpress.org/core/2016/07/20/additional-register_meta-changes-in-4-6/">a post for developers</a>.</li>\n<li><strong>Resource hints</strong> are now limited to enqueued assets (<a href="https://core.trac.wordpress.org/ticket/37385">#37385</a>).</li>\n<li>A regression with query alterations introduced by the new <code>WP_Term_Query</code> has been fixed (<a href="https://core.trac.wordpress.org/ticket/37378">#37378</a>).</li>\n<li>The Ajax searches for <strong>installed and new plugins</strong> have been enhanced to fix several accessibility issues and to improve compatibility with older browsers. (<a href="https://core.trac.wordpress.org/ticket/37233">#37233</a>, <a href="https://core.trac.wordpress.org/ticket/37373">#37373</a>)</li>\n<li>The media player <strong>MediaElement.js</strong> has been updated to 2.22.0 to fix YouTube video embeds (<a href="https://core.trac.wordpress.org/ticket/37363">#37363</a>).</li>\n<li>The <strong>Import screen</strong> was overhauled, improving accessibility and making it much easier to install and run an importer (<a href="https://core.trac.wordpress.org/ticket/35191">#35191</a>).</li>\n<li><strong>Emoji support</strong> has been updated to include all of the latest Unicode 9 emoji characters (<a href="https://core.trac.wordpress.org/ticket/37361">#37361</a>). 🤠🥕🥓<img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f57a.png" alt="🕺" class="wp-smiley" style="height: 1em; max-height: 1em;" /><img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f3fd.png" alt="🏽" class="wp-smiley" style="height: 1em; max-height: 1em;" />🤝<img src="https://s.w.org/images/core/emoji/2.2.1/72x72/1f3ff.png" alt="🏿" class="wp-smiley" style="height: 1em; max-height: 1em;" /></li>\n<li><strong>Various bug fixes</strong>. We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=38123&amp;stop_rev=38060&amp;limit=200&amp;verbose=on">more than 60 changes</a> during the last week.</li>\n</ul>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.6">everything we’ve fixed</a>.</p>\n<p>Happy testing!</p>\n<p><em>This is Beta 4,</em><br />\n<em>The last before RC 1.</em><br />\n<em>Please test all the things.</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4396";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:39:"\n		\n		\n		\n		\n				\n		\n		\n\n		\n		\n				\n			";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:4:{s:0:"";a:6:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:20:"WordPress 4.6 Beta 3";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/news/2016/07/wordpress-4-6-beta-3/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 13 Jul 2016 19:00:08 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"category";a:3:{i:0;a:5:{s:4:"data";s:11:"Development";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:1;a:5:{s:4:"data";s:8:"Releases";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}i:2;a:5:{s:4:"data";s:3:"4.6";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"https://wordpress.org/news/?p=4386";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:329:"WordPress 4.6 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&#8230;]";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:27:"Dominik Schilling (ocean90)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:40:"http://purl.org/rss/1.0/modules/content/";a:1:{s:7:"encoded";a:1:{i:0;a:5:{s:4:"data";s:3169:"<p>WordPress 4.6 Beta 3 is now available!</p>\n<p><strong>This software is still in development,</strong> so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.6, try the <a href="https://wordpress.org/plugins/wordpress-beta-tester/">WordPress Beta Tester</a> plugin (you’ll want “bleeding edge nightlies”). Or you can <a href="https://wordpress.org/wordpress-4.6-beta3.zip">download the beta here</a> (zip).</p>\n<p>For more information on what’s new in 4.6, check out the <a href="https://wordpress.org/news/2016/06/wordpress-4-6-beta-1/">Beta 1</a> and <a href="https://wordpress.org/news/2016/07/wordpress-4-6-beta-2/">Beta 2</a> blog posts, along with <a href="https://make.wordpress.org/core/tag/4-6+dev-notes/">in-depth field guides on make/core</a>. Some of the fixes in Beta 3 include:</p>\n<ul>\n<li><strong>Revisions:</strong> Autosaves can now be restored when revisions are disabled (<a href="https://core.trac.wordpress.org/ticket/36262">#36262</a>).</li>\n<li>An improved <strong>handling of PHP&#8217;s memory limit</strong> which doesn&#8217;t lower the limit anymore (<a href="https://core.trac.wordpress.org/ticket/32075">#</a><a class="closed ticket" title="defect (bug): Only set WP_MAX_MEMORY_LIMIT by default when its greater than memory_limit (closed: fixed)" href="https://core.trac.wordpress.org/ticket/32075">32075</a>).</li>\n<li><strong>TinyMCE</strong> has been updated to 4.4.0 (<a href="https://core.trac.wordpress.org/ticket/32075">#</a><a class="closed ticket" title="defect (bug): TinyMCE 4.4.0 (closed: fixed)" href="https://core.trac.wordpress.org/ticket/37327">37327</a>).</li>\n<li><strong>HTTP API:</strong> Proxy settings weren&#8217;t honored by the new HTTP library. This has been fixed (<a href="https://core.trac.wordpress.org/ticket/37107">#37107</a>).</li>\n<li>Improved handling of <strong>UTF-8 address headers for emails </strong>(<a href="https://core.trac.wordpress.org/ticket/21659">#21659</a>).</li>\n<li><strong>Various bug fixes</strong>. We’ve made <a href="https://core.trac.wordpress.org/log/trunk/src?action=stop_on_copy&amp;mode=stop_on_copy&amp;rev=38059&amp;stop_rev=37992&amp;limit=200&amp;verbose=on">more than 65 changes</a> during the last week.</li>\n</ul>\n<p>Do you speak a language other than English? <a href="https://translate.wordpress.org/projects/wp/dev">Help us translate WordPress into more than 100 languages!</a></p>\n<p>If you think you’ve found a bug, you can post to the <a href="https://wordpress.org/support/forum/alphabeta">Alpha/Beta area</a> in the support forums. Or, if you’re comfortable writing a bug report, <a href="https://core.trac.wordpress.org/">file one on the WordPress Trac</a>. There, you can also find <a href="https://core.trac.wordpress.org/tickets/major">a list of known bugs</a> and <a href="https://core.trac.wordpress.org/query?status=closed&amp;group=component&amp;milestone=4.6">everything we’ve fixed</a>.</p>\n<p>Happy testing!</p>\n<p><em>Beta 3 is here,</em><br />\n<em>The more testing, the better.</em><br />\n<em>Gotta catch ‘em all!</em></p>\n";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:7:"post-id";a:1:{i:0;a:5:{s:4:"data";s:4:"4386";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:32:"https://wordpress.org/news/feed/";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:44:"http://purl.org/rss/1.0/modules/syndication/";a:2:{s:12:"updatePeriod";a:1:{i:0;a:5:{s:4:"data";s:6:"hourly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:15:"updateFrequency";a:1:{i:0;a:5:{s:4:"data";s:1:"1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:30:"com-wordpress:feed-additions:1";a:1:{s:4:"site";a:1:{i:0;a:5:{s:4:"data";s:8:"14607090";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:10:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 11 Nov 2016 12:27:06 GMT";s:12:"content-type";s:34:"application/rss+xml; charset=UTF-8";s:10:"connection";s:5:"close";s:25:"strict-transport-security";s:11:"max-age=360";s:6:"x-olaf";s:3:"⛄";s:13:"last-modified";s:29:"Fri, 11 Nov 2016 03:30:52 GMT";s:4:"link";s:63:"<https://wordpress.org/news/wp-json/>; rel="https://api.w.org/"";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20160622212847";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(379, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1478910432', 'no'),
(380, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1478867232', 'no'),
(381, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1478910448', 'no'),
(382, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 11 Nov 2016 12:20:21 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"8321@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"5790@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"25254@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"6743@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"363@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"12073@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Search Engine (SEO) &#38; Performance Optimization (WPO) via caching. Integrated caching: CDN, Minify, Page, Object, Fragment, Database support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"132@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"753@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"One of the most downloaded plugins for WordPress (over 30 million downloads since 2007). Use All in One SEO Pack to automatically optimize your site f";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2646@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2316@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"23862@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"18101@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2141@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2082@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"2572@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:15:"NextGEN Gallery";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"1169@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 15 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29860@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"9542@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"51888@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:32:"15@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"29832@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:149:"Secure your website with the most comprehensive WordPress security plugin. Firewall, malware scan, blocking, live traffic, login security &#38; more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"47509@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"38058@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26907@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:134:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"50539@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"28395@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"31973@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"26607@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"21738@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Meta Slider";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/ml-slider/#post-49521";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Feb 2013 16:56:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"49521@http://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:131:"Easy to use WordPress Slider plugin. Create responsive slideshows with Nivo Slider, Flex Slider, Coin Slider and Responsive Slides.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Matcha Labs";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";a:9:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 11 Nov 2016 12:27:25 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:10:"connection";s:5:"close";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:13:"last-modified";s:29:"Thu, 01 Jan 2009 20:34:44 GMT";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 249";}s:5:"build";s:14:"20160622212847";}', 'no'),
(383, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1478910448', 'no'),
(384, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1478867248', 'no'),
(385, '_transient_timeout_plugin_slugs', '1478953648', 'no'),
(386, '_transient_plugin_slugs', 'a:3:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:34:"my-live-chat-for-wp/mylivechat.php";}', 'no'),
(387, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1478910448', 'no'),
(388, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2016/11/wordpress-4-7-beta-3/''>WordPress 4.7 Beta 3</a> <span class="rss-date">November 11, 2016</span><div class="rssSummary">WordPress 4.7 Beta 3 is now available! This software is still in development, so we don’t recommend you run it on a production site. Consider setting up a test site just to play with the new version. To test WordPress 4.7, try the WordPress Beta Tester plugin (you’ll want “bleeding edge nightlies”). Or you can [&hellip;]</div></li></ul></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Operation timed out after 9993 milliseconds with 171553 out of 272824 bytes received</p></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> Page Builder by SiteOrigin&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=siteorigin-panels&amp;_wpnonce=52550ef004&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install Page Builder by SiteOrigin">(Install)</a></li></ul></div>', 'no'),
(389, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_wp_page_template', 'faq.php'),
(4, 4, '_edit_lock', '1466858107:1'),
(5, 6, '_edit_last', '1'),
(6, 6, '_edit_lock', '1466859159:1'),
(7, 6, '_wp_page_template', 'contact.php'),
(8, 9, '_edit_last', '1'),
(9, 9, '_edit_lock', '1478746633:1'),
(10, 9, '_wp_page_template', 'about.php'),
(11, 11, '_edit_last', '1'),
(12, 11, '_edit_lock', '1469568613:1'),
(13, 11, '_wp_page_template', 'newaccount.php'),
(14, 13, '_edit_last', '1'),
(15, 13, '_edit_lock', '1470012377:1'),
(16, 13, '_wp_page_template', 'withdraw.php'),
(17, 16, '_edit_last', '1'),
(18, 16, '_edit_lock', '1470043103:1'),
(19, 16, '_wp_page_template', 'deposit.php'),
(20, 20, '_edit_last', '1'),
(21, 20, '_edit_lock', '1478739403:1'),
(22, 21, '_wp_attached_file', '2016/11/iphone-mt4-Copy.png'),
(23, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:721;s:6:"height";i:289;s:4:"file";s:27:"2016/11/iphone-mt4-Copy.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"iphone-mt4-Copy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"iphone-mt4-Copy-300x120.png";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(24, 22, '_wp_attached_file', '2016/11/forex-trading-header.jpg'),
(25, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:291;s:4:"file";s:32:"2016/11/forex-trading-header.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:32:"forex-trading-header-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"forex-trading-header-300x85.jpg";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"forex-trading-header-768x218.jpg";s:5:"width";i:768;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:33:"forex-trading-header-1024x291.jpg";s:5:"width";i:1024;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(26, 23, '_wp_attached_file', '2016/11/1.png'),
(27, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:581;s:6:"height";i:305;s:4:"file";s:13:"2016/11/1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x157.png";s:5:"width";i:300;s:6:"height";i:157;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 20, '_wp_page_template', 'default'),
(29, 25, '_wp_attached_file', '2016/11/forex-trading-header-1.jpg'),
(30, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:291;s:4:"file";s:34:"2016/11/forex-trading-header-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:34:"forex-trading-header-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:33:"forex-trading-header-1-300x85.jpg";s:5:"width";i:300;s:6:"height";i:85;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:34:"forex-trading-header-1-768x218.jpg";s:5:"width";i:768;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:35:"forex-trading-header-1-1024x291.jpg";s:5:"width";i:1024;s:6:"height";i:291;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 27, '_edit_last', '1'),
(32, 27, '_edit_lock', '1478891822:1'),
(33, 27, '_wp_page_template', 'internal_transfer.php'),
(34, 30, '_wp_attached_file', '2016/07/iphone-mt4-Copy.png'),
(35, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:721;s:6:"height";i:289;s:4:"file";s:27:"2016/07/iphone-mt4-Copy.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:27:"iphone-mt4-Copy-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:27:"iphone-mt4-Copy-300x120.png";s:5:"width";i:300;s:6:"height";i:120;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(36, 32, '_edit_last', '1'),
(37, 32, '_edit_lock', '1478746667:1'),
(38, 32, '_wp_page_template', 'news.php'),
(39, 34, '_edit_last', '1'),
(42, 34, '_edit_lock', '1478892132:1'),
(87, 44, '_menu_item_type', 'custom'),
(88, 44, '_menu_item_menu_item_parent', '0'),
(89, 44, '_menu_item_object_id', '44'),
(90, 44, '_menu_item_object', 'custom'),
(91, 44, '_menu_item_target', ''),
(92, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(93, 44, '_menu_item_xfn', ''),
(94, 44, '_menu_item_url', '/'),
(95, 44, '_menu_item_orphaned', '1478883046'),
(96, 45, '_menu_item_type', 'post_type'),
(97, 45, '_menu_item_menu_item_parent', '0'),
(98, 45, '_menu_item_object_id', '9'),
(99, 45, '_menu_item_object', 'page'),
(100, 45, '_menu_item_target', ''),
(101, 45, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(102, 45, '_menu_item_xfn', ''),
(103, 45, '_menu_item_url', ''),
(104, 45, '_menu_item_orphaned', '1478883061'),
(105, 46, '_edit_last', '1'),
(106, 46, '_edit_lock', '1478891951:1'),
(107, 47, '_wp_attached_file', '2016/11/14560054_1389279984424279_8485357962409418907_o.jpg'),
(108, 47, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:953;s:6:"height";i:960;s:4:"file";s:59:"2016/11/14560054_1389279984424279_8485357962409418907_o.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:59:"14560054_1389279984424279_8485357962409418907_o-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:59:"14560054_1389279984424279_8485357962409418907_o-298x300.jpg";s:5:"width";i:298;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:59:"14560054_1389279984424279_8485357962409418907_o-768x774.jpg";s:5:"width";i:768;s:6:"height";i:774;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(115, 52, '_edit_last', '1'),
(118, 52, '_edit_lock', '1478891930:1'),
(119, 54, '_edit_last', '1'),
(122, 54, '_edit_lock', '1478891919:1'),
(123, 56, '_edit_last', '1'),
(126, 56, '_edit_lock', '1478891909:1'),
(127, 58, '_edit_last', '1'),
(130, 58, '_edit_lock', '1478891896:1'),
(140, 61, '_menu_item_type', 'post_type'),
(141, 61, '_menu_item_menu_item_parent', '0'),
(142, 61, '_menu_item_object_id', '9'),
(143, 61, '_menu_item_object', 'page'),
(144, 61, '_menu_item_target', ''),
(145, 61, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(146, 61, '_menu_item_xfn', ''),
(147, 61, '_menu_item_url', ''),
(149, 62, '_menu_item_type', 'post_type'),
(150, 62, '_menu_item_menu_item_parent', '61'),
(151, 62, '_menu_item_object_id', '58'),
(152, 62, '_menu_item_object', 'post'),
(153, 62, '_menu_item_target', ''),
(154, 62, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(155, 62, '_menu_item_xfn', ''),
(156, 62, '_menu_item_url', ''),
(158, 63, '_menu_item_type', 'post_type'),
(159, 63, '_menu_item_menu_item_parent', '61'),
(160, 63, '_menu_item_object_id', '56'),
(161, 63, '_menu_item_object', 'post'),
(162, 63, '_menu_item_target', ''),
(163, 63, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(164, 63, '_menu_item_xfn', ''),
(165, 63, '_menu_item_url', ''),
(167, 64, '_menu_item_type', 'post_type'),
(168, 64, '_menu_item_menu_item_parent', '61'),
(169, 64, '_menu_item_object_id', '54'),
(170, 64, '_menu_item_object', 'post'),
(171, 64, '_menu_item_target', ''),
(172, 64, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 64, '_menu_item_xfn', ''),
(174, 64, '_menu_item_url', ''),
(176, 65, '_menu_item_type', 'post_type'),
(177, 65, '_menu_item_menu_item_parent', '61'),
(178, 65, '_menu_item_object_id', '52'),
(179, 65, '_menu_item_object', 'post'),
(180, 65, '_menu_item_target', ''),
(181, 65, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(182, 65, '_menu_item_xfn', ''),
(183, 65, '_menu_item_url', ''),
(185, 66, '_menu_item_type', 'post_type'),
(186, 66, '_menu_item_menu_item_parent', '61'),
(187, 66, '_menu_item_object_id', '46'),
(188, 66, '_menu_item_object', 'post'),
(189, 66, '_menu_item_target', ''),
(190, 66, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(191, 66, '_menu_item_xfn', ''),
(192, 66, '_menu_item_url', ''),
(194, 67, '_menu_item_type', 'custom'),
(195, 67, '_menu_item_menu_item_parent', '0'),
(196, 67, '_menu_item_object_id', '67'),
(197, 67, '_menu_item_object', 'custom'),
(198, 67, '_menu_item_target', ''),
(199, 67, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(200, 67, '_menu_item_xfn', ''),
(201, 67, '_menu_item_url', '#'),
(203, 68, '_menu_item_type', 'custom'),
(204, 68, '_menu_item_menu_item_parent', '67'),
(205, 68, '_menu_item_object_id', '68'),
(206, 68, '_menu_item_object', 'custom'),
(207, 68, '_menu_item_target', ''),
(208, 68, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(209, 68, '_menu_item_xfn', ''),
(210, 68, '_menu_item_url', '#'),
(212, 69, '_menu_item_type', 'custom'),
(213, 69, '_menu_item_menu_item_parent', '67'),
(214, 69, '_menu_item_object_id', '69'),
(215, 69, '_menu_item_object', 'custom'),
(216, 69, '_menu_item_target', ''),
(217, 69, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(218, 69, '_menu_item_xfn', ''),
(219, 69, '_menu_item_url', '#'),
(221, 70, '_menu_item_type', 'custom'),
(222, 70, '_menu_item_menu_item_parent', '67'),
(223, 70, '_menu_item_object_id', '70'),
(224, 70, '_menu_item_object', 'custom'),
(225, 70, '_menu_item_target', ''),
(226, 70, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(227, 70, '_menu_item_xfn', ''),
(228, 70, '_menu_item_url', '#'),
(230, 71, '_menu_item_type', 'post_type'),
(231, 71, '_menu_item_menu_item_parent', '68'),
(232, 71, '_menu_item_object_id', '58'),
(233, 71, '_menu_item_object', 'post'),
(234, 71, '_menu_item_target', ''),
(235, 71, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(236, 71, '_menu_item_xfn', ''),
(237, 71, '_menu_item_url', ''),
(239, 72, '_menu_item_type', 'post_type'),
(240, 72, '_menu_item_menu_item_parent', '68'),
(241, 72, '_menu_item_object_id', '56'),
(242, 72, '_menu_item_object', 'post'),
(243, 72, '_menu_item_target', ''),
(244, 72, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(245, 72, '_menu_item_xfn', ''),
(246, 72, '_menu_item_url', ''),
(248, 73, '_menu_item_type', 'post_type'),
(249, 73, '_menu_item_menu_item_parent', '69'),
(250, 73, '_menu_item_object_id', '56'),
(251, 73, '_menu_item_object', 'post'),
(252, 73, '_menu_item_target', ''),
(253, 73, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(254, 73, '_menu_item_xfn', ''),
(255, 73, '_menu_item_url', ''),
(257, 74, '_menu_item_type', 'post_type'),
(258, 74, '_menu_item_menu_item_parent', '69'),
(259, 74, '_menu_item_object_id', '54'),
(260, 74, '_menu_item_object', 'post'),
(261, 74, '_menu_item_target', ''),
(262, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(263, 74, '_menu_item_xfn', ''),
(264, 74, '_menu_item_url', ''),
(266, 75, '_menu_item_type', 'post_type'),
(267, 75, '_menu_item_menu_item_parent', '70'),
(268, 75, '_menu_item_object_id', '52'),
(269, 75, '_menu_item_object', 'post'),
(270, 75, '_menu_item_target', ''),
(271, 75, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(272, 75, '_menu_item_xfn', ''),
(273, 75, '_menu_item_url', ''),
(275, 76, '_menu_item_type', 'post_type'),
(276, 76, '_menu_item_menu_item_parent', '70'),
(277, 76, '_menu_item_object_id', '58'),
(278, 76, '_menu_item_object', 'post'),
(279, 76, '_menu_item_target', ''),
(280, 76, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(281, 76, '_menu_item_xfn', ''),
(282, 76, '_menu_item_url', ''),
(284, 77, '_menu_item_type', 'post_type'),
(285, 77, '_menu_item_menu_item_parent', '70'),
(286, 77, '_menu_item_object_id', '56'),
(287, 77, '_menu_item_object', 'post'),
(288, 77, '_menu_item_target', ''),
(289, 77, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(290, 77, '_menu_item_xfn', ''),
(291, 77, '_menu_item_url', ''),
(293, 78, '_menu_item_type', 'custom'),
(294, 78, '_menu_item_menu_item_parent', '0'),
(295, 78, '_menu_item_object_id', '78'),
(296, 78, '_menu_item_object', 'custom'),
(297, 78, '_menu_item_target', ''),
(298, 78, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(299, 78, '_menu_item_xfn', ''),
(300, 78, '_menu_item_url', '#'),
(302, 79, '_menu_item_type', 'post_type'),
(303, 79, '_menu_item_menu_item_parent', '78'),
(304, 79, '_menu_item_object_id', '52'),
(305, 79, '_menu_item_object', 'post'),
(306, 79, '_menu_item_target', ''),
(307, 79, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(308, 79, '_menu_item_xfn', ''),
(309, 79, '_menu_item_url', ''),
(311, 80, '_menu_item_type', 'post_type'),
(312, 80, '_menu_item_menu_item_parent', '78'),
(313, 80, '_menu_item_object_id', '46'),
(314, 80, '_menu_item_object', 'post'),
(315, 80, '_menu_item_target', ''),
(316, 80, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(317, 80, '_menu_item_xfn', ''),
(318, 80, '_menu_item_url', ''),
(329, 82, '_menu_item_type', 'custom'),
(330, 82, '_menu_item_menu_item_parent', '0'),
(331, 82, '_menu_item_object_id', '82'),
(332, 82, '_menu_item_object', 'custom'),
(333, 82, '_menu_item_target', ''),
(334, 82, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(335, 82, '_menu_item_xfn', ''),
(336, 82, '_menu_item_url', '#'),
(338, 83, '_menu_item_type', 'custom'),
(339, 83, '_menu_item_menu_item_parent', '0'),
(340, 83, '_menu_item_object_id', '83'),
(341, 83, '_menu_item_object', 'custom'),
(342, 83, '_menu_item_target', ''),
(343, 83, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(344, 83, '_menu_item_xfn', ''),
(345, 83, '_menu_item_url', '#'),
(356, 85, '_menu_item_type', 'post_type'),
(357, 85, '_menu_item_menu_item_parent', '0'),
(358, 85, '_menu_item_object_id', '6'),
(359, 85, '_menu_item_object', 'page'),
(360, 85, '_menu_item_target', ''),
(361, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(362, 85, '_menu_item_xfn', ''),
(363, 85, '_menu_item_url', ''),
(364, 86, '_menu_item_type', 'post_type'),
(365, 86, '_menu_item_menu_item_parent', '0'),
(366, 86, '_menu_item_object_id', '32'),
(367, 86, '_menu_item_object', 'page'),
(368, 86, '_menu_item_target', ''),
(369, 86, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(370, 86, '_menu_item_xfn', ''),
(371, 86, '_menu_item_url', ''),
(373, 87, '_menu_item_type', 'custom'),
(374, 87, '_menu_item_menu_item_parent', '0'),
(375, 87, '_menu_item_object_id', '87'),
(376, 87, '_menu_item_object', 'custom'),
(377, 87, '_menu_item_target', ''),
(378, 87, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(379, 87, '_menu_item_xfn', ''),
(380, 87, '_menu_item_url', '#'),
(382, 88, '_menu_item_type', 'custom'),
(383, 88, '_menu_item_menu_item_parent', '0'),
(384, 88, '_menu_item_object_id', '88'),
(385, 88, '_menu_item_object', 'custom'),
(386, 88, '_menu_item_target', ''),
(387, 88, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(388, 88, '_menu_item_xfn', ''),
(389, 88, '_menu_item_url', '#'),
(391, 89, '_menu_item_type', 'post_type'),
(392, 89, '_menu_item_menu_item_parent', '88'),
(393, 89, '_menu_item_object_id', '27'),
(394, 89, '_menu_item_object', 'page'),
(395, 89, '_menu_item_target', ''),
(396, 89, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(397, 89, '_menu_item_xfn', ''),
(398, 89, '_menu_item_url', ''),
(400, 90, '_menu_item_type', 'post_type'),
(401, 90, '_menu_item_menu_item_parent', '88'),
(402, 90, '_menu_item_object_id', '16'),
(403, 90, '_menu_item_object', 'page'),
(404, 90, '_menu_item_target', ''),
(405, 90, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(406, 90, '_menu_item_xfn', ''),
(407, 90, '_menu_item_url', ''),
(409, 91, '_menu_item_type', 'post_type'),
(410, 91, '_menu_item_menu_item_parent', '88'),
(411, 91, '_menu_item_object_id', '13'),
(412, 91, '_menu_item_object', 'page'),
(413, 91, '_menu_item_target', ''),
(414, 91, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(415, 91, '_menu_item_xfn', ''),
(416, 91, '_menu_item_url', ''),
(418, 92, '_menu_item_type', 'post_type'),
(419, 92, '_menu_item_menu_item_parent', '88'),
(420, 92, '_menu_item_object_id', '11'),
(421, 92, '_menu_item_object', 'page'),
(422, 92, '_menu_item_target', ''),
(423, 92, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(424, 92, '_menu_item_xfn', ''),
(425, 92, '_menu_item_url', ''),
(427, 93, '_menu_item_type', 'custom'),
(428, 93, '_menu_item_menu_item_parent', '0'),
(429, 93, '_menu_item_object_id', '93'),
(430, 93, '_menu_item_object', 'custom'),
(431, 93, '_menu_item_target', ''),
(432, 93, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(433, 93, '_menu_item_xfn', ''),
(434, 93, '_menu_item_url', 'http://localhost/dsm/'),
(436, 94, '_wp_attached_file', '2016/11/broker1-1.jpg'),
(437, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3000;s:6:"height";i:1890;s:4:"file";s:21:"2016/11/broker1-1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"broker1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"broker1-1-300x189.jpg";s:5:"width";i:300;s:6:"height";i:189;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"broker1-1-768x484.jpg";s:5:"width";i:768;s:6:"height";i:484;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"broker1-1-1024x645.jpg";s:5:"width";i:1024;s:6:"height";i:645;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(448, 103, '_menu_item_type', 'post_type'),
(449, 103, '_menu_item_menu_item_parent', '82'),
(450, 103, '_menu_item_object_id', '58'),
(451, 103, '_menu_item_object', 'post'),
(452, 103, '_menu_item_target', ''),
(453, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(454, 103, '_menu_item_xfn', ''),
(455, 103, '_menu_item_url', ''),
(457, 104, '_menu_item_type', 'post_type'),
(458, 104, '_menu_item_menu_item_parent', '82'),
(459, 104, '_menu_item_object_id', '56'),
(460, 104, '_menu_item_object', 'post'),
(461, 104, '_menu_item_target', ''),
(462, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(463, 104, '_menu_item_xfn', ''),
(464, 104, '_menu_item_url', ''),
(466, 105, '_menu_item_type', 'post_type'),
(467, 105, '_menu_item_menu_item_parent', '87'),
(468, 105, '_menu_item_object_id', '54'),
(469, 105, '_menu_item_object', 'post'),
(470, 105, '_menu_item_target', ''),
(471, 105, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(472, 105, '_menu_item_xfn', ''),
(473, 105, '_menu_item_url', ''),
(475, 106, '_menu_item_type', 'post_type'),
(476, 106, '_menu_item_menu_item_parent', '83'),
(477, 106, '_menu_item_object_id', '52'),
(478, 106, '_menu_item_object', 'post'),
(479, 106, '_menu_item_target', ''),
(480, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(481, 106, '_menu_item_xfn', ''),
(482, 106, '_menu_item_url', ''),
(484, 107, '_menu_item_type', 'post_type'),
(485, 107, '_menu_item_menu_item_parent', '83'),
(486, 107, '_menu_item_object_id', '46'),
(487, 107, '_menu_item_object', 'post'),
(488, 107, '_menu_item_target', ''),
(489, 107, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(490, 107, '_menu_item_xfn', ''),
(491, 107, '_menu_item_url', ''),
(493, 108, '_edit_last', '1'),
(494, 108, '_edit_lock', '1478892303:1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-06-22 20:09:34', '2016-06-22 20:09:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-06-22 20:09:34', '2016-06-22 20:09:34', '', 0, 'http://localhost/dsm/?p=1', 0, 'post', '', 1),
(2, 1, '2016-06-22 20:09:34', '2016-06-22 20:09:34', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/dsm/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-06-22 20:09:34', '2016-06-22 20:09:34', '', 0, 'http://localhost/dsm/?page_id=2', 0, 'page', '', 0),
(4, 1, '2016-06-25 12:36:05', '2016-06-25 12:36:05', '', 'faq', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2016-06-25 12:36:05', '2016-06-25 12:36:05', '', 0, 'http://localhost/dsm/?page_id=4', 0, 'page', '', 0),
(5, 1, '2016-06-25 12:36:05', '2016-06-25 12:36:05', '', 'faq', '', 'inherit', 'closed', 'closed', '', '4-revision-v1', '', '', '2016-06-25 12:36:05', '2016-06-25 12:36:05', '', 4, 'http://localhost/dsm/index.php/2016/06/25/4-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2016-06-25 12:55:02', '2016-06-25 12:55:02', '', 'contactUs', '', 'publish', 'closed', 'closed', '', 'contactus', '', '', '2016-06-25 12:55:02', '2016-06-25 12:55:02', '', 0, 'http://localhost/dsm/?page_id=6', 0, 'page', '', 0),
(7, 1, '2016-06-25 12:55:02', '2016-06-25 12:55:02', '', 'contactUs', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2016-06-25 12:55:02', '2016-06-25 12:55:02', '', 6, 'http://localhost/dsm/6-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-07-26 20:24:58', '2016-07-26 20:24:58', '<img class="alignnone size-full wp-image-30" src="http://localhost/dsm/wp-content/uploads/2016/07/iphone-mt4-Copy.png" alt="iphone mt4 - Copy" width="721" height="289" />', 'about', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-11-10 02:44:03', '2016-11-10 02:44:03', '', 0, 'http://localhost/dsm/?page_id=9', 0, 'page', '', 0),
(10, 1, '2016-07-26 20:24:58', '2016-07-26 20:24:58', '', 'about', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-07-26 20:24:58', '2016-07-26 20:24:58', '', 9, 'http://localhost/dsm/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2016-07-26 21:26:58', '2016-07-26 21:26:58', '', 'newaccount', '', 'publish', 'closed', 'closed', '', 'new-account', '', '', '2016-07-26 21:30:12', '2016-07-26 21:30:12', '', 0, 'http://localhost/dsm/?page_id=11', 0, 'page', '', 0),
(12, 1, '2016-07-26 21:26:58', '2016-07-26 21:26:58', '', 'newaccount', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2016-07-26 21:26:58', '2016-07-26 21:26:58', '', 11, 'http://localhost/dsm/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2016-08-01 00:45:34', '2016-08-01 00:45:34', '', 'withdrawl', '', 'publish', 'closed', 'closed', '', 'withdrawl', '', '', '2016-08-01 00:46:17', '2016-08-01 00:46:17', '', 0, 'http://localhost/dsm/?page_id=13', 0, 'page', '', 0),
(14, 1, '2016-08-01 00:45:34', '2016-08-01 00:45:34', '', 'withdraw', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-08-01 00:45:34', '2016-08-01 00:45:34', '', 13, 'http://localhost/dsm/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2016-08-01 00:46:17', '2016-08-01 00:46:17', '', 'withdrawl', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2016-08-01 00:46:17', '2016-08-01 00:46:17', '', 13, 'http://localhost/dsm/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2016-08-01 09:20:46', '2016-08-01 09:20:46', '', 'deposit', '', 'publish', 'closed', 'closed', '', 'deposit', '', '', '2016-08-01 09:20:46', '2016-08-01 09:20:46', '', 0, 'http://localhost/dsm/?page_id=16', 0, 'page', '', 0),
(17, 1, '2016-08-01 09:20:46', '2016-08-01 09:20:46', '', 'deposit', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2016-08-01 09:20:46', '2016-08-01 09:20:46', '', 16, 'http://localhost/dsm/16-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2016-11-09 21:50:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-11-09 21:50:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/dsm/?p=19', 0, 'post', '', 0),
(20, 1, '2016-11-09 21:51:38', '2016-11-09 21:51:38', '<img class="alignnone size-full wp-image-21" src="http://localhost/dsm/wp-content/uploads/2016/11/iphone-mt4-Copy.png" alt="iphone mt4 - Copy" width="721" height="289" /> <img class="alignnone size-full wp-image-22" src="http://localhost/dsm/wp-content/uploads/2016/11/forex-trading-header.jpg" alt="forex-trading-header" width="1024" height="291" /> <img class="alignnone size-full wp-image-23" src="http://localhost/dsm/wp-content/uploads/2016/11/1.png" alt="1" width="581" height="305" /><img class="alignnone size-full wp-image-25" src="http://localhost/dsm/wp-content/uploads/2016/11/forex-trading-header-1.jpg" alt="forex-trading-header" width="1024" height="291" />', 'slider', '', 'publish', 'closed', 'closed', '', 'slider', '', '', '2016-11-09 22:01:19', '2016-11-09 22:01:19', '', 0, 'http://localhost/dsm/?page_id=20', 0, 'page', '', 0),
(21, 1, '2016-11-09 21:51:08', '2016-11-09 21:51:08', '', 'iphone mt4 - Copy', '', 'inherit', 'open', 'closed', '', 'iphone-mt4-copy', '', '', '2016-11-09 21:51:08', '2016-11-09 21:51:08', '', 20, 'http://localhost/dsm/wp-content/uploads/2016/11/iphone-mt4-Copy.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2016-11-09 21:51:08', '2016-11-09 21:51:08', '', 'forex-trading-header', '', 'inherit', 'open', 'closed', '', 'forex-trading-header', '', '', '2016-11-09 21:51:08', '2016-11-09 21:51:08', '', 20, 'http://localhost/dsm/wp-content/uploads/2016/11/forex-trading-header.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2016-11-09 21:51:09', '2016-11-09 21:51:09', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2016-11-09 21:51:09', '2016-11-09 21:51:09', '', 20, 'http://localhost/dsm/wp-content/uploads/2016/11/1.png', 0, 'attachment', 'image/png', 0),
(24, 1, '2016-11-09 21:51:38', '2016-11-09 21:51:38', '<img class="alignnone size-full wp-image-21" src="http://localhost/dsm/wp-content/uploads/2016/11/iphone-mt4-Copy.png" alt="iphone mt4 - Copy" width="721" height="289" /> <img class="alignnone size-full wp-image-22" src="http://localhost/dsm/wp-content/uploads/2016/11/forex-trading-header.jpg" alt="forex-trading-header" width="1024" height="291" /> <img class="alignnone size-full wp-image-23" src="http://localhost/dsm/wp-content/uploads/2016/11/1.png" alt="1" width="581" height="305" />', 'slider', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-11-09 21:51:38', '2016-11-09 21:51:38', '', 20, 'http://localhost/dsm/20-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2016-11-09 22:01:11', '2016-11-09 22:01:11', '', 'forex-trading-header', '', 'inherit', 'open', 'closed', '', 'forex-trading-header-2', '', '', '2016-11-09 22:01:11', '2016-11-09 22:01:11', '', 20, 'http://localhost/dsm/wp-content/uploads/2016/11/forex-trading-header-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2016-11-09 22:01:19', '2016-11-09 22:01:19', '<img class="alignnone size-full wp-image-21" src="http://localhost/dsm/wp-content/uploads/2016/11/iphone-mt4-Copy.png" alt="iphone mt4 - Copy" width="721" height="289" /> <img class="alignnone size-full wp-image-22" src="http://localhost/dsm/wp-content/uploads/2016/11/forex-trading-header.jpg" alt="forex-trading-header" width="1024" height="291" /> <img class="alignnone size-full wp-image-23" src="http://localhost/dsm/wp-content/uploads/2016/11/1.png" alt="1" width="581" height="305" /><img class="alignnone size-full wp-image-25" src="http://localhost/dsm/wp-content/uploads/2016/11/forex-trading-header-1.jpg" alt="forex-trading-header" width="1024" height="291" />', 'slider', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2016-11-09 22:01:19', '2016-11-09 22:01:19', '', 20, 'http://localhost/dsm/20-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2016-11-10 00:59:27', '2016-11-10 00:59:27', '', 'internal transfer', '', 'publish', 'closed', 'closed', '', 'internal-transfer', '', '', '2016-11-11 19:19:23', '2016-11-11 19:19:23', '', 0, 'http://localhost/dsm/?page_id=27', 0, 'page', '', 0),
(28, 1, '2016-11-10 00:59:27', '2016-11-10 00:59:27', '', 'internal transfer', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-11-10 00:59:27', '2016-11-10 00:59:27', '', 27, 'http://localhost/dsm/27-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2016-11-10 02:34:27', '2016-11-10 02:34:27', '<img class="alignnone size-full wp-image-25" src="http://localhost/dsm/wp-content/uploads/2016/11/forex-trading-header-1.jpg" alt="forex-trading-header" width="1024" height="291" />', 'about', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-11-10 02:34:27', '2016-11-10 02:34:27', '', 9, 'http://localhost/dsm/9-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2016-11-10 02:43:55', '2016-11-10 02:43:55', '', 'iphone mt4 - Copy', '', 'inherit', 'open', 'closed', '', 'iphone-mt4-copy-2', '', '', '2016-11-10 02:43:55', '2016-11-10 02:43:55', '', 9, 'http://localhost/dsm/wp-content/uploads/2016/07/iphone-mt4-Copy.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2016-11-10 02:44:03', '2016-11-10 02:44:03', '<img class="alignnone size-full wp-image-30" src="http://localhost/dsm/wp-content/uploads/2016/07/iphone-mt4-Copy.png" alt="iphone mt4 - Copy" width="721" height="289" />', 'about', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-11-10 02:44:03', '2016-11-10 02:44:03', '', 9, 'http://localhost/dsm/9-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-11-10 03:00:03', '2016-11-10 03:00:03', '', 'news', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2016-11-10 03:00:09', '2016-11-10 03:00:09', '', 0, 'http://localhost/dsm/?page_id=32', 0, 'page', '', 0),
(33, 1, '2016-11-10 03:00:03', '2016-11-10 03:00:03', '', 'news', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2016-11-10 03:00:03', '2016-11-10 03:00:03', '', 32, 'http://localhost/dsm/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2016-11-10 03:25:02', '2016-11-10 03:25:02', 'The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.', 'test', '', 'publish', 'open', 'open', '', 'test', '', '', '2016-11-10 03:49:31', '2016-11-10 03:49:31', '', 0, 'http://localhost/dsm/?p=34', 0, 'post', '', 0),
(35, 1, '2016-11-10 03:25:02', '2016-11-10 03:25:02', '&nbsp;\r\n\r\nThe Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.', 'test', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-11-10 03:25:02', '2016-11-10 03:25:02', '', 34, 'http://localhost/dsm/34-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2016-11-10 03:25:11', '2016-11-10 03:25:11', 'The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.', 'test', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-11-10 03:25:11', '2016-11-10 03:25:11', '', 34, 'http://localhost/dsm/34-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2016-11-10 03:49:14', '2016-11-10 03:49:14', 'The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.', 'test', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-11-10 03:49:14', '2016-11-10 03:49:14', '', 34, 'http://localhost/dsm/34-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2016-11-10 03:49:31', '2016-11-10 03:49:31', 'The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.', 'test', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-11-10 03:49:31', '2016-11-10 03:49:31', '', 34, 'http://localhost/dsm/34-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2016-11-11 16:50:46', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-11-11 16:50:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/dsm/?p=44', 1, 'nav_menu_item', '', 0),
(45, 1, '2016-11-11 16:51:01', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-11-11 16:51:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/dsm/?p=45', 1, 'nav_menu_item', '', 0),
(46, 1, '2016-11-11 17:01:59', '2016-11-11 17:01:59', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'company profile', '', 'publish', 'open', 'open', '', 'company-profile', '', '', '2016-11-11 19:21:20', '2016-11-11 19:21:20', '', 0, 'http://localhost/dsm/?p=46', 0, 'post', '', 0),
(47, 1, '2016-11-11 17:01:43', '2016-11-11 17:01:43', '', '14560054_1389279984424279_8485357962409418907_o', '', 'inherit', 'open', 'closed', '', '14560054_1389279984424279_8485357962409418907_o', '', '', '2016-11-11 17:01:43', '2016-11-11 17:01:43', '', 46, 'http://localhost/dsm/wp-content/uploads/2016/11/14560054_1389279984424279_8485357962409418907_o.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2016-11-11 17:01:59', '2016-11-11 17:01:59', '<img class="alignnone  wp-image-47" src="http://localhost/dsm/wp-content/uploads/2016/11/14560054_1389279984424279_8485357962409418907_o.jpg" alt="14560054_1389279984424279_8485357962409418907_o" width="433" height="436" />\r\n\r\ntest test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test test', 'company profile', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2016-11-11 17:01:59', '2016-11-11 17:01:59', '', 46, 'http://localhost/dsm/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2016-11-11 17:04:39', '2016-11-11 17:04:39', '<img class="alignnone wp-image-47" src="http://localhost/dsm/wp-content/uploads/2016/11/14560054_1389279984424279_8485357962409418907_o.jpg" alt="14560054_1389279984424279_8485357962409418907_o" width="433" height="436" />\n\n&nbsp;', 'company profile', '', 'inherit', 'closed', 'closed', '', '46-autosave-v1', '', '', '2016-11-11 17:04:39', '2016-11-11 17:04:39', '', 46, 'http://localhost/dsm/46-autosave-v1/', 0, 'revision', '', 0),
(50, 1, '2016-11-11 17:22:56', '2016-11-11 17:22:56', '<img class="alignnone wp-image-47" src="http://localhost/dsm/wp-content/uploads/2016/11/14560054_1389279984424279_8485357962409418907_o.jpg" alt="14560054_1389279984424279_8485357962409418907_o" width="433" height="436" />\r\n\r\ntest test test test test test test test test test test test test test test test test test test test test test test\r\n\r\ntest test test test test test test test test test test test test test test test test test test test test test test t', 'company profile', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2016-11-11 17:22:56', '2016-11-11 17:22:56', '', 46, 'http://localhost/dsm/46-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-11-11 17:33:35', '2016-11-11 17:33:35', '', 'company profile', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2016-11-11 17:33:35', '2016-11-11 17:33:35', '', 46, 'http://localhost/dsm/46-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2016-11-11 17:34:08', '2016-11-11 17:34:08', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'advantages', '', 'publish', 'open', 'open', '', 'advantages', '', '', '2016-11-11 19:21:11', '2016-11-11 19:21:11', '', 0, 'http://localhost/dsm/?p=52', 0, 'post', '', 0),
(53, 1, '2016-11-11 17:34:08', '2016-11-11 17:34:08', '', 'advantages', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-11-11 17:34:08', '2016-11-11 17:34:08', '', 52, 'http://localhost/dsm/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2016-11-11 17:34:42', '2016-11-11 17:34:42', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'MD Messages', '', 'publish', 'open', 'open', '', 'md-messages', '', '', '2016-11-11 19:21:01', '2016-11-11 19:21:01', '', 0, 'http://localhost/dsm/?p=54', 0, 'post', '', 0),
(55, 1, '2016-11-11 17:34:42', '2016-11-11 17:34:42', '', 'MD Messages', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2016-11-11 17:34:42', '2016-11-11 17:34:42', '', 54, 'http://localhost/dsm/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2016-11-11 17:35:32', '2016-11-11 17:35:32', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'License And Regulations', '', 'publish', 'open', 'open', '', 'license-and-regulations', '', '', '2016-11-11 19:20:47', '2016-11-11 19:20:47', '', 0, 'http://localhost/dsm/?p=56', 0, 'post', '', 0),
(57, 1, '2016-11-11 17:35:32', '2016-11-11 17:35:32', '', 'License And Regulations', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2016-11-11 17:35:32', '2016-11-11 17:35:32', '', 56, 'http://localhost/dsm/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2016-11-11 17:35:57', '2016-11-11 17:35:57', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'Safety Of Funds', '', 'publish', 'open', 'open', '', 'safety-of-funds', '', '', '2016-11-11 19:19:39', '2016-11-11 19:19:39', '', 0, 'http://localhost/dsm/?p=58', 0, 'post', '', 0),
(59, 1, '2016-11-11 17:35:57', '2016-11-11 17:35:57', '', 'Safety Of Funds', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-11-11 17:35:57', '2016-11-11 17:35:57', '', 58, 'http://localhost/dsm/58-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2016-11-11 17:38:37', '2016-11-11 17:38:37', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2016-11-11 19:23:55', '2016-11-11 19:23:55', '', 0, 'http://localhost/dsm/?p=61', 2, 'nav_menu_item', '', 0),
(62, 1, '2016-11-11 17:38:37', '2016-11-11 17:38:37', ' ', '', '', 'publish', 'closed', 'closed', '', '62', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=62', 3, 'nav_menu_item', '', 0),
(63, 1, '2016-11-11 17:38:38', '2016-11-11 17:38:38', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=63', 4, 'nav_menu_item', '', 0),
(64, 1, '2016-11-11 17:38:38', '2016-11-11 17:38:38', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=64', 5, 'nav_menu_item', '', 0),
(65, 1, '2016-11-11 17:38:38', '2016-11-11 17:38:38', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=65', 6, 'nav_menu_item', '', 0),
(66, 1, '2016-11-11 17:38:38', '2016-11-11 17:38:38', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=66', 7, 'nav_menu_item', '', 0),
(67, 1, '2016-11-11 17:43:13', '2016-11-11 17:43:13', '', 'Forex Trading', '', 'publish', 'closed', 'closed', '', 'forex-trading', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=67', 8, 'nav_menu_item', '', 0),
(68, 1, '2016-11-11 17:43:13', '2016-11-11 17:43:13', '', 'Trading Platform', '', 'publish', 'closed', 'closed', '', 'trading-platform', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=68', 9, 'nav_menu_item', '', 0),
(69, 1, '2016-11-11 17:43:14', '2016-11-11 17:43:14', '', 'Trading Accounts', '', 'publish', 'closed', 'closed', '', 'trading-accounts', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=69', 12, 'nav_menu_item', '', 0),
(70, 1, '2016-11-11 17:43:14', '2016-11-11 17:43:14', '', 'Markets', '', 'publish', 'closed', 'closed', '', 'markets', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=70', 15, 'nav_menu_item', '', 0),
(71, 1, '2016-11-11 17:43:13', '2016-11-11 17:43:13', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=71', 10, 'nav_menu_item', '', 0),
(72, 1, '2016-11-11 17:43:13', '2016-11-11 17:43:13', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=72', 11, 'nav_menu_item', '', 0),
(73, 1, '2016-11-11 17:43:14', '2016-11-11 17:43:14', ' ', '', '', 'publish', 'closed', 'closed', '', '73', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=73', 13, 'nav_menu_item', '', 0),
(74, 1, '2016-11-11 17:43:14', '2016-11-11 17:43:14', ' ', '', '', 'publish', 'closed', 'closed', '', '74', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=74', 14, 'nav_menu_item', '', 0),
(75, 1, '2016-11-11 17:43:15', '2016-11-11 17:43:15', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=75', 17, 'nav_menu_item', '', 0),
(76, 1, '2016-11-11 17:43:15', '2016-11-11 17:43:15', ' ', '', '', 'publish', 'closed', 'closed', '', '76', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=76', 16, 'nav_menu_item', '', 0),
(77, 1, '2016-11-11 17:43:15', '2016-11-11 17:43:15', ' ', '', '', 'publish', 'closed', 'closed', '', '77', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=77', 18, 'nav_menu_item', '', 0),
(78, 1, '2016-11-11 17:46:07', '2016-11-11 17:46:07', '', 'Partnership', '', 'publish', 'closed', 'closed', '', 'partnership', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=78', 19, 'nav_menu_item', '', 0),
(79, 1, '2016-11-11 17:46:07', '2016-11-11 17:46:07', ' ', '', '', 'publish', 'closed', 'closed', '', '79', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=79', 20, 'nav_menu_item', '', 0),
(80, 1, '2016-11-11 17:46:08', '2016-11-11 17:46:08', ' ', '', '', 'publish', 'closed', 'closed', '', '80', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=80', 21, 'nav_menu_item', '', 0),
(82, 1, '2016-11-11 17:49:06', '2016-11-11 17:49:06', '', 'MGM Specials', '', 'publish', 'closed', 'closed', '', 'mgm-specials', '', '', '2016-11-11 19:23:57', '2016-11-11 19:23:57', '', 0, 'http://localhost/dsm/?p=82', 24, 'nav_menu_item', '', 0),
(83, 1, '2016-11-11 17:49:06', '2016-11-11 17:49:06', '', 'Educations', '', 'publish', 'closed', 'closed', '', 'educations', '', '', '2016-11-11 19:23:57', '2016-11-11 19:23:57', '', 0, 'http://localhost/dsm/?p=83', 27, 'nav_menu_item', '', 0),
(85, 1, '2016-11-11 17:49:06', '2016-11-11 17:49:06', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-11-11 19:23:58', '2016-11-11 19:23:58', '', 0, 'http://localhost/dsm/?p=85', 31, 'nav_menu_item', '', 0),
(86, 1, '2016-11-11 19:02:11', '2016-11-11 19:02:11', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2016-11-11 19:23:58', '2016-11-11 19:23:58', '', 0, 'http://localhost/dsm/?p=86', 30, 'nav_menu_item', '', 0),
(87, 1, '2016-11-11 19:05:13', '2016-11-11 19:05:13', '', 'Payments', '', 'publish', 'closed', 'closed', '', 'payments', '', '', '2016-11-11 19:23:56', '2016-11-11 19:23:56', '', 0, 'http://localhost/dsm/?p=87', 22, 'nav_menu_item', '', 0),
(88, 1, '2016-11-11 19:07:36', '2016-11-11 19:07:36', '', 'User Area', '', 'publish', 'closed', 'closed', '', 'user-area', '', '', '2016-11-11 19:23:58', '2016-11-11 19:23:58', '', 0, 'http://localhost/dsm/?p=88', 32, 'nav_menu_item', '', 0),
(89, 1, '2016-11-11 19:07:37', '2016-11-11 19:07:37', ' ', '', '', 'publish', 'closed', 'closed', '', '89', '', '', '2016-11-11 19:23:58', '2016-11-11 19:23:58', '', 0, 'http://localhost/dsm/?p=89', 36, 'nav_menu_item', '', 0),
(90, 1, '2016-11-11 19:07:36', '2016-11-11 19:07:36', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2016-11-11 19:23:58', '2016-11-11 19:23:58', '', 0, 'http://localhost/dsm/?p=90', 34, 'nav_menu_item', '', 0),
(91, 1, '2016-11-11 19:07:37', '2016-11-11 19:07:37', ' ', '', '', 'publish', 'closed', 'closed', '', '91', '', '', '2016-11-11 19:23:58', '2016-11-11 19:23:58', '', 0, 'http://localhost/dsm/?p=91', 35, 'nav_menu_item', '', 0),
(92, 1, '2016-11-11 19:07:36', '2016-11-11 19:07:36', ' ', '', '', 'publish', 'closed', 'closed', '', '92', '', '', '2016-11-11 19:23:58', '2016-11-11 19:23:58', '', 0, 'http://localhost/dsm/?p=92', 33, 'nav_menu_item', '', 0),
(93, 1, '2016-11-11 19:11:49', '2016-11-11 19:11:49', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home-2', '', '', '2016-11-11 19:23:55', '2016-11-11 19:23:55', '', 0, 'http://localhost/dsm/?p=93', 1, 'nav_menu_item', '', 0),
(94, 1, '2016-11-11 19:17:29', '2016-11-11 19:17:29', '', 'broker1 (1)', '', 'inherit', 'open', 'closed', '', 'broker1-1', '', '', '2016-11-11 19:17:29', '2016-11-11 19:17:29', '', 27, 'http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2016-11-11 19:17:58', '2016-11-11 19:17:58', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\n<div class="about-text"> <img class="alignnone  wp-image-94" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="392" height="247" /><img class="alignnone  wp-image-94" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="465" height="293" /></div>', 'internal transfer', '', 'inherit', 'closed', 'closed', '', '27-autosave-v1', '', '', '2016-11-11 19:17:58', '2016-11-11 19:17:58', '', 27, 'http://localhost/dsm/27-autosave-v1/', 0, 'revision', '', 0),
(96, 1, '2016-11-11 19:18:49', '2016-11-11 19:18:49', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'internal transfer', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-11-11 19:18:49', '2016-11-11 19:18:49', '', 27, 'http://localhost/dsm/27-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2016-11-11 19:19:23', '2016-11-11 19:19:23', '', 'internal transfer', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2016-11-11 19:19:23', '2016-11-11 19:19:23', '', 27, 'http://localhost/dsm/27-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2016-11-11 19:19:39', '2016-11-11 19:19:39', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'Safety Of Funds', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2016-11-11 19:19:39', '2016-11-11 19:19:39', '', 58, 'http://localhost/dsm/58-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2016-11-11 19:20:47', '2016-11-11 19:20:47', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'License And Regulations', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2016-11-11 19:20:47', '2016-11-11 19:20:47', '', 56, 'http://localhost/dsm/56-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2016-11-11 19:21:01', '2016-11-11 19:21:01', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'MD Messages', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2016-11-11 19:21:01', '2016-11-11 19:21:01', '', 54, 'http://localhost/dsm/54-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2016-11-11 19:21:11', '2016-11-11 19:21:11', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'advantages', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2016-11-11 19:21:11', '2016-11-11 19:21:11', '', 52, 'http://localhost/dsm/52-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2016-11-11 19:21:20', '2016-11-11 19:21:20', 'MGM is a regulated Foreign Exchange Broker that offers a wide range of trading technologies and services. Our ECN/STP business model allows our clients to take advantage of transparent real-time pricing. All our clients have access to a unique Forex Trading environment that offers advanced STP (Straight Through Processing) liquidity, execution and trading functionality. Our Non-dealing desk model allows client orders to be executed automatically and instantaneously through our Market network of liquidity providers.\r\n<div class="about-text"> <img class="wp-image-94 alignleft" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="360" height="227" /><img class="wp-image-94 alignright" src="http://localhost/dsm/wp-content/uploads/2016/11/broker1-1.jpg" alt="broker1 (1)" width="357" height="225" /></div>', 'company profile', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2016-11-11 19:21:20', '2016-11-11 19:21:20', '', 46, 'http://localhost/dsm/46-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2016-11-11 19:23:57', '2016-11-11 19:23:57', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2016-11-11 19:23:57', '2016-11-11 19:23:57', '', 0, 'http://localhost/dsm/?p=103', 26, 'nav_menu_item', '', 0),
(104, 1, '2016-11-11 19:23:57', '2016-11-11 19:23:57', ' ', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2016-11-11 19:23:57', '2016-11-11 19:23:57', '', 0, 'http://localhost/dsm/?p=104', 25, 'nav_menu_item', '', 0),
(105, 1, '2016-11-11 19:23:57', '2016-11-11 19:23:57', ' ', '', '', 'publish', 'closed', 'closed', '', '105', '', '', '2016-11-11 19:23:57', '2016-11-11 19:23:57', '', 0, 'http://localhost/dsm/?p=105', 23, 'nav_menu_item', '', 0),
(106, 1, '2016-11-11 19:23:58', '2016-11-11 19:23:58', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2016-11-11 19:23:58', '2016-11-11 19:23:58', '', 0, 'http://localhost/dsm/?p=106', 28, 'nav_menu_item', '', 0),
(107, 1, '2016-11-11 19:23:58', '2016-11-11 19:23:58', ' ', '', '', 'publish', 'closed', 'closed', '', '107', '', '', '2016-11-11 19:23:58', '2016-11-11 19:23:58', '', 0, 'http://localhost/dsm/?p=107', 29, 'nav_menu_item', '', 0),
(108, 1, '2016-11-11 19:24:45', '2016-11-11 19:24:45', 'The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.', 'news test', '', 'publish', 'open', 'open', '', 'news-test', '', '', '2016-11-11 19:25:01', '2016-11-11 19:25:01', '', 0, 'http://localhost/dsm/?p=108', 0, 'post', '', 0),
(109, 1, '2016-11-11 19:24:45', '2016-11-11 19:24:45', 'The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.The Australian dollar outperforms ahead of the U.S. Presidential election, with the topside targets in focus for AUD/USD as it carves a series of higher highs &amp; lows.', 'news test', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2016-11-11 19:24:45', '2016-11-11 19:24:45', '', 108, 'http://localhost/dsm/108-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_stock_tickers`
--

CREATE TABLE IF NOT EXISTS `wp_stock_tickers` (
`id` mediumint(9) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bg_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#000000',
  `font_color` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#5DFC0A',
  `font_family` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Arial',
  `font_size` tinyint(3) NOT NULL DEFAULT '12',
  `width` smallint(4) NOT NULL DEFAULT '400',
  `height` smallint(4) NOT NULL DEFAULT '20',
  `scroll_speed` smallint(4) NOT NULL DEFAULT '60',
  `data_display` tinyint(2) NOT NULL DEFAULT '30',
  `text_opacity` float(5,4) NOT NULL DEFAULT '1.0000',
  `bg_opacity` float(5,4) NOT NULL DEFAULT '1.0000',
  `display_number` tinyint(3) NOT NULL DEFAULT '2',
  `draw_vertical_lines` tinyint(1) NOT NULL DEFAULT '1',
  `draw_triangle` tinyint(1) NOT NULL DEFAULT '1',
  `change_color` tinyint(1) NOT NULL DEFAULT '1',
  `stock_list` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `advanced_style` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_stock_tickers`
--

INSERT INTO `wp_stock_tickers` (`id`, `name`, `bg_color`, `font_color`, `font_family`, `font_size`, `width`, `height`, `scroll_speed`, `data_display`, `text_opacity`, `bg_opacity`, `display_number`, `draw_vertical_lines`, `draw_triangle`, `change_color`, `stock_list`, `advanced_style`) VALUES
(1, 'Default Settings', '#000000', '#5DFC0A', 'Arial', 12, 400, 20, 60, 30, 1.0000, 1.0000, 2, 1, 1, 1, '^GSPC,^IXIC,^NYA,MMM,AXP,T,BA,CAT,CVX,CSCO,KO,DD,XOM,GE,GS,HD,INTC,IBM,JNJ,JPM,MCD,MRK,MSFT,NKE,PFE,PG,TRV,UNH,UTX,VZ,V,WMT,DIS', 'margin: auto;'),
(2, '(untitled) 2', '#000000', '#5DFC0A', 'Arial', 12, 400, 20, 60, 30, 1.0000, 1.0000, 2, 1, 1, 1, '', 'margin: auto;');

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE IF NOT EXISTS `wp_termmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'news', 'news', 0),
(3, 'header-menu', 'header-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(34, 2, 0),
(46, 1, 0),
(52, 1, 0),
(54, 1, 0),
(56, 1, 0),
(58, 1, 0),
(61, 3, 0),
(62, 3, 0),
(63, 3, 0),
(64, 3, 0),
(65, 3, 0),
(66, 3, 0),
(67, 3, 0),
(68, 3, 0),
(69, 3, 0),
(70, 3, 0),
(71, 3, 0),
(72, 3, 0),
(73, 3, 0),
(74, 3, 0),
(75, 3, 0),
(76, 3, 0),
(77, 3, 0),
(78, 3, 0),
(79, 3, 0),
(80, 3, 0),
(82, 3, 0),
(83, 3, 0),
(85, 3, 0),
(86, 3, 0),
(87, 3, 0),
(88, 3, 0),
(89, 3, 0),
(90, 3, 0),
(91, 3, 0),
(92, 3, 0),
(93, 3, 0),
(103, 3, 0),
(104, 3, 0),
(105, 3, 0),
(106, 3, 0),
(107, 3, 0),
(108, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'category', '', 0, 2),
(3, 3, 'nav_menu', '', 0, 36);

-- --------------------------------------------------------

--
-- Table structure for table `wp_uci_cbr_rates`
--

CREATE TABLE IF NOT EXISTS `wp_uci_cbr_rates` (
`id` mediumint(3) NOT NULL,
  `num` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `char` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nominal` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dif` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_uci_cbr_rates`
--

INSERT INTO `wp_uci_cbr_rates` (`id`, `num`, `char`, `nominal`, `value`, `dif`) VALUES
(1, '036', 'AUD', '1', '48.4257', '0'),
(2, '944', 'AZN', '1', '42.7398', '0'),
(3, '826', 'GBP', '1', '90.5017', '0'),
(4, '051', 'AMD', '100', '13.7521', '0'),
(5, '974', 'BYR', '10000', '32.6582', '0'),
(6, '975', 'BGN', '1', '37.3425', '0'),
(7, '986', 'BRL', '1', '19.6564', '0'),
(8, '348', 'HUF', '100', '23.0560', '0'),
(9, '208', 'DKK', '10', '98.2557', '0'),
(10, '840', 'USD', '1', '65.5287', '0'),
(11, '978', 'EUR', '1', '72.6582', '0'),
(12, '356', 'INR', '100', '96.5006', '0'),
(13, '398', 'KZT', '100', '19.3700', '0'),
(14, '124', 'CAD', '1', '50.3331', '0'),
(15, '417', 'KGS', '100', '97.2432', '0'),
(16, '156', 'CNY', '10', '99.0802', '0'),
(17, '498', 'MDL', '10', '33.2971', '0'),
(18, '578', 'NOK', '10', '77.6821', '0'),
(19, '985', 'PLN', '1', '16.4344', '0'),
(20, '946', 'RON', '1', '16.1091', '0'),
(21, '960', 'XDR', '1', '93.1713', '0'),
(22, '702', 'SGD', '1', '48.3821', '0'),
(23, '972', 'TJS', '10', '83.4229', '0'),
(24, '949', 'TRY', '1', '22.4590', '0'),
(25, '934', 'TMT', '1', '19.4794', '0'),
(26, '860', 'UZS', '1000', '22.3647', '0'),
(27, '980', 'UAH', '10', '26.3432', '0'),
(28, '203', 'CZK', '10', '26.9344', '0'),
(29, '752', 'SEK', '10', '77.6048', '0'),
(30, '756', 'CHF', '1', '67.5206', '0'),
(31, '710', 'ZAR', '10', '43.9162', '0'),
(32, '410', 'KRW', '1000', '55.8628', '0'),
(33, '392', 'JPY', '100', '63.6479', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_uci_nbm_rates`
--

CREATE TABLE IF NOT EXISTS `wp_uci_nbm_rates` (
`id` mediumint(3) NOT NULL,
  `num` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `char` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nominal` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dif` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_uci_nbm_rates`
--

INSERT INTO `wp_uci_nbm_rates` (`id`, `num`, `char`, `nominal`, `value`, `dif`) VALUES
(1, '978', 'EUR', '1', '22.0064', '0.1536'),
(2, '840', 'USD', '1', '19.8184', '0.0475'),
(3, '643', 'RUB', '1', '0.3034', '0.0016'),
(4, '946', 'RON', '1', '4.8595', '0.0409'),
(5, '980', 'UAH', '1', '0.7963', '0.0018'),
(6, '784', 'AED', '1', '5.3960', '0.0129'),
(7, '008', 'ALL', '10', '1.5986', '0.0104'),
(8, '051', 'AMD', '10', '0.4161', '0.001'),
(9, '036', 'AUD', '1', '14.6616', '0.0351'),
(10, '944', 'AZN', '1', '12.8482', '0.0308'),
(11, '975', 'BGN', '1', '11.2022', '0.0268'),
(12, '974', 'BYR', '100', '0.0987', '0.0002'),
(13, '124', 'CAD', '1', '15.2110', '0.0365'),
(14, '756', 'CHF', '1', '20.3851', '0.1301'),
(15, '156', 'CNY', '1', '2.9929', '0.007'),
(16, '203', 'CZK', '1', '0.8083', '0.0019'),
(17, '208', 'DKK', '1', '2.9455', '0.0071'),
(18, '826', 'GBP', '1', '27.1056', '0.0214'),
(19, '981', 'GEL', '1', '8.5794', '-0.0073'),
(20, '344', 'HKD', '1', '2.5538', '0.0061'),
(21, '191', 'HRK', '1', '2.9118', '0.0069'),
(22, '348', 'HUF', '100', '6.9157', '0.0165'),
(23, '376', 'ILS', '1', '5.0895', '0.0122'),
(24, '356', 'INR', '10', '2.9158', '0.0033'),
(25, '352', 'ISK', '10', '1.5853', '0.0038'),
(26, '392', 'JPY', '100', '19.3501', '-0.0085'),
(27, '417', 'KGS', '10', '2.7970', '-0.137'),
(28, '410', 'KRW', '100', '1.6808', '0.004'),
(29, '414', 'KWD', '1', '65.5500', '0.1571'),
(30, '398', 'KZT', '10', '0.5829', '-0.0016'),
(31, '807', 'MKD', '10', '3.5764', '0.0266'),
(32, '458', 'MYR', '1', '4.8423', '0.0116'),
(33, '578', 'NOK', '1', '2.3158', '0.0056'),
(34, '554', 'NZD', '1', '14.0394', '0.0337'),
(35, '985', 'PLN', '1', '4.9037', '0.0117'),
(36, '941', 'RSD', '100', '17.6648', '0.0423'),
(37, '752', 'SEK', '1', '2.3083', '0.0056'),
(38, '972', 'TJS', '1', '2.5187', '0.006'),
(39, '934', 'TMT', '1', '5.6624', '0.0136'),
(40, '949', 'TRY', '1', '6.7395', '0.0162'),
(41, '860', 'UZS', '100', '0.6750', '0.0022'),
(42, '960', 'XDR', '1', '27.7075', '0.0664');

-- --------------------------------------------------------

--
-- Table structure for table `wp_uci_nbu_rates`
--

CREATE TABLE IF NOT EXISTS `wp_uci_nbu_rates` (
`id` mediumint(3) NOT NULL,
  `num` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `char` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `nominal` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `dif` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_uci_nbu_rates`
--

INSERT INTO `wp_uci_nbu_rates` (`id`, `num`, `char`, `nominal`, `value`, `dif`) VALUES
(1, '036', 'AUD', '100', '1881.7509', '0'),
(2, '944', 'AZN', '100', '1626.2289', '0'),
(3, '826', 'GBP', '100', '3699.8718', '0'),
(4, '974', 'BYR', '10', '0.0126', '0'),
(5, '208', 'DKK', '100', '380.9233', '0'),
(6, '840', 'USD', '100', '2488.2929', '0'),
(7, '978', 'EUR', '100', '2833.9168', '0'),
(8, '352', 'ISK', '100', '20.6121', '0'),
(9, '398', 'KZT', '100', '7.3918', '0'),
(10, '124', 'CAD', '100', '1952.1367', '0'),
(11, '498', 'MDL', '100', '125.9226', '0'),
(12, '578', 'NOK', '100', '304.7452', '0'),
(13, '985', 'PLN', '100', '650.4135', '0'),
(14, '643', 'RUB', '10', '3.8685', '0'),
(15, '702', 'SGD', '100', '1858.0624', '0'),
(16, '960', 'XDR', '100', '3537.9444', '0'),
(17, '949', 'TRY', '100', '866.8533', '0'),
(18, '934', 'TMT', '100', '710.9408', '0'),
(19, '348', 'HUF', '1000', '90.1717', '0'),
(20, '860', 'UZS', '100', '0.8467', '0'),
(21, '203', 'CZK', '100', '104.7194', '0'),
(22, '752', 'SEK', '100', '304.6240', '0'),
(23, '756', 'CHF', '100', '2605.6609', '0'),
(24, '156', 'CNY', '100', '378.1833', '0'),
(25, '392', 'JPY', '1000', '235.4143', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_uci_widgets`
--

CREATE TABLE IF NOT EXISTS `wp_uci_widgets` (
`id` mediumint(3) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `bank` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_uci_widgets`
--

INSERT INTO `wp_uci_widgets` (`id`, `name`, `bank`, `currency`) VALUES
(3, 'Set title for informer...', 'nbu', '944,978,840,036,124');

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"818e281c7c4d968161e6477af796a48c714f1b368e123647c431fc82b76108b1";a:4:{s:10:"expiration";i:1478901031;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1478728231;}s:64:"426b991ca2bc9fbf4816137a40ca0e55086916586e92d9fe8bcb4eb542a55e0e";a:4:{s:10:"expiration";i:1479063660;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:104:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.71 Safari/537.36";s:5:"login";i:1478890860;}}'),
(15, 1, 'wp_user-settings', 'libraryContent=browse&imgsize=full'),
(16, 1, 'wp_user-settings-time', '1478728293'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '19'),
(18, 1, 'wplc_ma_agent', '1'),
(19, 1, 'wplc_chat_agent_online', '1467409592'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(22, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bbl.V3HKWqrrfGMZtcva3aZy9g8IpO1', 'admin', 'mostafafcis15@gmail.com', '', '2016-06-22 20:09:34', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wplc_chat_msgs`
--

CREATE TABLE IF NOT EXISTS `wp_wplc_chat_msgs` (
`id` int(11) NOT NULL,
  `chat_sess_id` int(11) NOT NULL,
  `msgfrom` varchar(150) NOT NULL,
  `msg` varchar(700) NOT NULL,
  `timestamp` datetime NOT NULL,
  `status` int(3) NOT NULL,
  `originates` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wplc_chat_msgs`
--

INSERT INTO `wp_wplc_chat_msgs` (`id`, `chat_sess_id`, `msgfrom`, `msg`, `timestamp`, `status`, `originates`) VALUES
(1, 2, 'Admin', 'Welcome. How may I help you?', '2016-07-01 22:10:54', 1, 1),
(2, 2, 'Admin', 'hello', '2016-07-01 22:11:02', 1, 1),
(3, 2, 'adsasd', 'hello :)', '2016-07-01 22:11:13', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_wplc_chat_sessions`
--

CREATE TABLE IF NOT EXISTS `wp_wplc_chat_sessions` (
`id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `name` varchar(700) NOT NULL,
  `email` varchar(700) NOT NULL,
  `ip` varchar(700) NOT NULL,
  `status` int(11) NOT NULL,
  `session` varchar(100) NOT NULL,
  `url` varchar(700) NOT NULL,
  `last_active_timestamp` datetime NOT NULL,
  `other` longtext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_wplc_chat_sessions`
--

INSERT INTO `wp_wplc_chat_sessions` (`id`, `timestamp`, `name`, `email`, `ip`, `status`, `session`, `url`, `last_active_timestamp`, `other`) VALUES
(1, '2016-07-01 22:08:43', 'admin', 'mostafafcis15@gmail.com', 'a:2:{s:2:"ip";s:9:"127.0.0.1";s:10:"user_agent";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36";}', 7, '1467410923048', 'http://localhost/dsm/faq/', '2016-07-01 22:08:43', 'a:1:{s:9:"user_type";i:1;}'),
(2, '2016-07-01 22:10:35', 'adsasd', 'adsasdasd@dfd.cp', 'a:2:{s:2:"ip";s:9:"127.0.0.1";s:10:"user_agent";s:105:"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36";}', 1, '1467411014708', 'http://localhost/dsm/', '2016-07-01 22:11:28', 'a:2:{s:9:"user_type";i:1;s:3:"aid";i:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wplc_offline_messages`
--

CREATE TABLE IF NOT EXISTS `wp_wplc_offline_messages` (
`id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL,
  `name` varchar(700) NOT NULL,
  `email` varchar(700) NOT NULL,
  `message` varchar(700) NOT NULL,
  `ip` varchar(700) NOT NULL,
  `user_agent` varchar(700) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_stock_tickers`
--
ALTER TABLE `wp_stock_tickers`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `term_id` (`term_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_uci_cbr_rates`
--
ALTER TABLE `wp_uci_cbr_rates`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_uci_nbm_rates`
--
ALTER TABLE `wp_uci_nbm_rates`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_uci_nbu_rates`
--
ALTER TABLE `wp_uci_nbu_rates`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_uci_widgets`
--
ALTER TABLE `wp_uci_widgets`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`), ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wplc_chat_msgs`
--
ALTER TABLE `wp_wplc_chat_msgs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wplc_chat_sessions`
--
ALTER TABLE `wp_wplc_chat_sessions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_wplc_offline_messages`
--
ALTER TABLE `wp_wplc_offline_messages`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=397;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=499;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT for table `wp_stock_tickers`
--
ALTER TABLE `wp_stock_tickers`
MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_uci_cbr_rates`
--
ALTER TABLE `wp_uci_cbr_rates`
MODIFY `id` mediumint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `wp_uci_nbm_rates`
--
ALTER TABLE `wp_uci_nbm_rates`
MODIFY `id` mediumint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `wp_uci_nbu_rates`
--
ALTER TABLE `wp_uci_nbu_rates`
MODIFY `id` mediumint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_uci_widgets`
--
ALTER TABLE `wp_uci_widgets`
MODIFY `id` mediumint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_wplc_chat_msgs`
--
ALTER TABLE `wp_wplc_chat_msgs`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_wplc_chat_sessions`
--
ALTER TABLE `wp_wplc_chat_sessions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_wplc_offline_messages`
--
ALTER TABLE `wp_wplc_offline_messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
