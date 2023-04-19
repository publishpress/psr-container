-- -------------------------------------------------------------
-- TablePlus 5.3.6(496)
--
-- https://tableplus.com/
--
-- Database: php80tests
-- Generation Time: 2023-04-19 11:18:48.1260
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE `wp_commentmeta` (
                                  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                                  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
                                  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                                  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                                  PRIMARY KEY (`meta_id`),
                                  KEY `comment_id` (`comment_id`),
                                  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE `wp_comments` (
                               `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                               `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
                               `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                               `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                               `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                               `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                               `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                               `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                               `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                               `comment_karma` int(11) NOT NULL DEFAULT 0,
                               `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
                               `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                               `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
                               `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
                               `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
                               PRIMARY KEY (`comment_ID`),
                               KEY `comment_post_ID` (`comment_post_ID`),
                               KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
                               KEY `comment_date_gmt` (`comment_date_gmt`),
                               KEY `comment_parent` (`comment_parent`),
                               KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE `wp_links` (
                            `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                            `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
                            `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
                            `link_rating` int(11) NOT NULL DEFAULT 0,
                            `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            PRIMARY KEY (`link_id`),
                            KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE `wp_options` (
                              `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                              `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                              `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                              `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
                              PRIMARY KEY (`option_id`),
                              UNIQUE KEY `option_name` (`option_name`),
                              KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE `wp_postmeta` (
                               `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                               `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
                               `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                               `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                               PRIMARY KEY (`meta_id`),
                               KEY `post_id` (`post_id`),
                               KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE `wp_posts` (
                            `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                            `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
                            `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
                            `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
                            `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
                            `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                            `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
                            `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `menu_order` int(11) NOT NULL DEFAULT 0,
                            `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
                            `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `comment_count` bigint(20) NOT NULL DEFAULT 0,
                            PRIMARY KEY (`ID`),
                            KEY `post_name` (`post_name`(191)),
                            KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
                            KEY `post_parent` (`post_parent`),
                            KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE `wp_term_relationships` (
                                         `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
                                         `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
                                         `term_order` int(11) NOT NULL DEFAULT 0,
                                         PRIMARY KEY (`object_id`,`term_taxonomy_id`),
                                         KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE `wp_term_taxonomy` (
                                    `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                                    `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
                                    `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                                    `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
                                    `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
                                    `count` bigint(20) NOT NULL DEFAULT 0,
                                    PRIMARY KEY (`term_taxonomy_id`),
                                    UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
                                    KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE `wp_termmeta` (
                               `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                               `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
                               `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                               `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                               PRIMARY KEY (`meta_id`),
                               KEY `term_id` (`term_id`),
                               KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE `wp_terms` (
                            `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                            `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `term_group` bigint(10) NOT NULL DEFAULT 0,
                            PRIMARY KEY (`term_id`),
                            KEY `slug` (`slug`(191)),
                            KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE `wp_usermeta` (
                               `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                               `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
                               `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                               `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
                               PRIMARY KEY (`umeta_id`),
                               KEY `user_id` (`user_id`),
                               KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE `wp_users` (
                            `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
                            `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
                            `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            `user_status` int(11) NOT NULL DEFAULT 0,
                            `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
                            PRIMARY KEY (`ID`),
                            KEY `user_login_key` (`user_login`),
                            KEY `user_nicename` (`user_nicename`),
                            KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
                                                                                      (2, 'siteurl', 'http://php80tests.local', 'yes'),
                                                                                      (3, 'home', 'http://php80tests.local', 'yes'),
                                                                                      (4, 'blogname', 'Test', 'yes'),
                                                                                      (5, 'blogdescription', '', 'yes'),
                                                                                      (6, 'users_can_register', '0', 'yes'),
                                                                                      (7, 'admin_email', 'admin@tests.local', 'yes'),
                                                                                      (8, 'start_of_week', '1', 'yes'),
                                                                                      (9, 'use_balanceTags', '0', 'yes'),
                                                                                      (10, 'use_smilies', '1', 'yes'),
                                                                                      (11, 'require_name_email', '1', 'yes'),
                                                                                      (12, 'comments_notify', '1', 'yes'),
                                                                                      (13, 'posts_per_rss', '10', 'yes'),
                                                                                      (14, 'rss_use_excerpt', '0', 'yes'),
                                                                                      (15, 'mailserver_url', 'mail.example.com', 'yes'),
                                                                                      (16, 'mailserver_login', 'login@example.com', 'yes'),
                                                                                      (17, 'mailserver_pass', 'password', 'yes'),
                                                                                      (18, 'mailserver_port', '110', 'yes'),
                                                                                      (19, 'default_category', '1', 'yes'),
                                                                                      (20, 'default_comment_status', 'open', 'yes'),
                                                                                      (21, 'default_ping_status', 'open', 'yes'),
                                                                                      (22, 'default_pingback_flag', '1', 'yes'),
                                                                                      (23, 'posts_per_page', '10', 'yes'),
                                                                                      (24, 'date_format', 'F j, Y', 'yes'),
                                                                                      (25, 'time_format', 'g:i a', 'yes'),
                                                                                      (26, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
                                                                                      (27, 'comment_moderation', '0', 'yes'),
                                                                                      (28, 'moderation_notify', '1', 'yes'),
                                                                                      (29, 'rewrite_rules', '', 'yes'),
                                                                                      (30, 'hack_file', '0', 'yes'),
                                                                                      (31, 'blog_charset', 'UTF-8', 'yes'),
                                                                                      (32, 'moderation_keys', '', 'no'),
                                                                                      (33, 'active_plugins', 'a:2:{i:0;s:35:\"dumb-plugin-one/dumb-plugin-one.php\";i:1;s:35:\"dumb-plugin-two/dumb-plugin-two.php\";}', 'yes'),
                                                                                      (34, 'category_base', '', 'yes'),
                                                                                      (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
                                                                                      (36, 'comment_max_links', '2', 'yes'),
                                                                                      (37, 'gmt_offset', '0', 'yes'),
                                                                                      (38, 'default_email_category', '1', 'yes'),
                                                                                      (39, 'recently_edited', '', 'no'),
                                                                                      (40, 'template', 'twentytwentythree', 'yes'),
                                                                                      (41, 'stylesheet', 'twentytwentythree', 'yes'),
                                                                                      (42, 'comment_registration', '0', 'yes'),
                                                                                      (43, 'html_type', 'text/html', 'yes'),
                                                                                      (44, 'use_trackback', '0', 'yes'),
                                                                                      (45, 'default_role', 'subscriber', 'yes'),
                                                                                      (46, 'db_version', '53496', 'yes'),
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
                                                                                      (76, 'widget_categories', 'a:0:{}', 'yes'),
                                                                                      (77, 'widget_text', 'a:0:{}', 'yes'),
                                                                                      (78, 'widget_rss', 'a:0:{}', 'yes'),
                                                                                      (79, 'uninstall_plugins', 'a:0:{}', 'no'),
                                                                                      (80, 'timezone_string', '', 'yes'),
                                                                                      (81, 'page_for_posts', '0', 'yes'),
                                                                                      (82, 'page_on_front', '0', 'yes'),
                                                                                      (83, 'default_post_format', '0', 'yes'),
                                                                                      (84, 'link_manager_enabled', '0', 'yes'),
                                                                                      (85, 'finished_splitting_shared_terms', '1', 'yes'),
                                                                                      (86, 'site_icon', '0', 'yes'),
                                                                                      (87, 'medium_large_size_w', '768', 'yes'),
                                                                                      (88, 'medium_large_size_h', '0', 'yes'),
                                                                                      (89, 'wp_page_for_privacy_policy', '3', 'yes'),
                                                                                      (90, 'show_comments_cookies_opt_in', '1', 'yes'),
                                                                                      (91, 'admin_email_lifespan', '1696261186', 'yes'),
                                                                                      (92, 'disallowed_keys', '', 'no'),
                                                                                      (93, 'comment_previously_approved', '1', 'yes'),
                                                                                      (94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
                                                                                      (95, 'auto_update_core_dev', 'enabled', 'yes'),
                                                                                      (96, 'auto_update_core_minor', 'enabled', 'yes'),
                                                                                      (97, 'auto_update_core_major', 'enabled', 'yes'),
                                                                                      (98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
                                                                                      (99, 'initial_db_version', '53496', 'yes'),
                                                                                      (100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
                                                                                      (101, 'fresh_site', '1', 'yes'),
                                                                                      (102, 'user_count', '1', 'no'),
                                                                                      (103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (104, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
                                                                                      (105, 'cron', 'a:3:{i:1681573186;a:6:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1682005186;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
                                                                                      (106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (115, 'nonce_key', 'A,ddkD=*r?se<&U^[}m6nf~e`01qc5sA(oD66IS}}L<y;+duAq53Z({OE;|NS3 @', 'no'),
                                                                                      (116, 'nonce_salt', ':OSH=wdf=H<Rw{3rnq.Qo(t{TG`~/pwFKTiI-{|2furkX}SVP$S=LMhbVV,3Q-sw', 'no'),
                                                                                      (117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
                                                                                      (131, 'recovery_keys', 'a:0:{}', 'yes'),
                                                                                      (132, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
                                                                                      (133, 'theme_mods_twentytwentythree', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
                                                                                      (134, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.2.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.2-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1681571754;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
                                                                                      (136, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1681571755;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:35:\"dumb-plugin-one/dumb-plugin-one.php\";s:5:\"0.1.0\";s:35:\"dumb-plugin-two/dumb-plugin-two.php\";s:5:\"0.1.0\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
                                                                                      (139, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1681571755;s:7:\"checked\";a:3:{s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
                                                                                      (140, '_site_transient_timeout_php_check_f615bb1e23847416e204708c1a47460a', '1681830035', 'no'),
                                                                                      (141, '_site_transient_php_check_f615bb1e23847416e204708c1a47460a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
                                                                                      (142, '_transient_health-check-site-status-result', '{\"good\":16,\"recommended\":5,\"critical\":0}', 'yes'),
                                                                                      (149, '_site_transient_timeout_theme_roots', '1681573555', 'no'),
                                                                                      (150, '_site_transient_theme_roots', 'a:3:{s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
                                                                                      (151, '_transient_doing_cron', '1681913567.0165700912475585937500', 'yes');

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
    (1, 1, 'category', '', 0, 0);

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
    (1, 'Uncategorized', 'uncategorized', 0);

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
                                                                                (1, 1, 'nickname', 'admin'),
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
                                                                                (15, 1, 'show_welcome_panel', '1');

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
    (1, 'admin', '$P$BKi3ERDMn5K6wACP/jYVf4eT.QZWT2/', 'admin', 'admin@tests.local', 'http://php80tests.local', '2023-04-05 15:39:46', '', 0, 'admin');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
