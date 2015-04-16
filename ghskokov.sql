-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Хост: localhost:3306
-- Время создания: Апр 13 2015 г., 12:37
-- Версия сервера: 5.5.38
-- Версия PHP: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `ghskokov`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
--

CREATE TABLE `wp_comments` (
`comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-04-13 06:03:03', '2015-04-13 06:03:03', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
--

CREATE TABLE `wp_links` (
`link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
`option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/geekandkh', 'yes'),
(2, 'home', 'http://localhost/geekandkh', 'yes'),
(3, 'blogname', 'skokov', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'andrewkharsun@gmail.com', 'yes'),
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
(22, 'posts_per_page', '2', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:19:"jetpack/jetpack.php";i:1;s:23:"rustolat/rus-to-lat.php";i:3;s:54:"wordpress-23-related-posts-plugin/wp_related_posts.php";i:4;s:51:"wordpress-popular-posts/wordpress-popular-posts.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', '', 'no'),
(41, 'template', 'skokov', 'yes'),
(42, 'stylesheet', 'skokov', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '30133', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:3;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:5:{i:2;a:3:{s:5:"title";s:0:"";s:4:"text";s:1141:"<h3>About US</h3>\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, \r\nsed diam nonummy nibh euismod tincidunt ut \r\nlaoreet dolore magna aliquam erat volutpat. Ut wisi \r\nenim ad minim veniam, quis nostrud exerci tation ullamcorper \r\nsuscipit lobortis nisl ut aliquip ex ea commodo consequat.\r\n<h4>Photo Stream</h4>\r\n<ul class="list-images">\r\n                    <li>\r\n                        <img src="images/stream-1.jpg" alt="Photo stream" />\r\n                    </li>\r\n                    <li>\r\n                        <img src="images/stream-2.jpg" alt="Photo stream" />\r\n                    </li>\r\n                    <li>\r\n                        <img src="images/stream-3.jpg" alt="Photo stream" />\r\n                    </li>\r\n                    <li>\r\n                        <img src="images/stream-4.jpg" alt="Photo stream" />\r\n                    </li>\r\n                    <li>\r\n                        <img src="images/stream-5.jpg" alt="Photo stream" />\r\n                    </li>\r\n                    <li>\r\n                        <img src="images/stream-6.jpg" alt="Photo stream" />\r\n                    </li>\r\n</ul>";s:6:"filter";b:1;}i:3;a:3:{s:5:"title";s:0:"";s:4:"text";s:0:"";s:6:"filter";b:0;}i:4;a:3:{s:5:"title";s:0:"";s:4:"text";s:2191:"               <h3>latest tweets</h3>\r\n                <ul class="list-tweets">\r\n                    <li>\r\n<span class="fa fa-twitter fa-2x"></span>\r\n                        <a href="#">Check Out Dtbaker''s @Arduino Sales Notification #System http://t.co/ WBFKIWHJ</a>\r\n                    </li>\r\n                    <li>\r\n<span class="fa fa-twitter fa-2x"></span>\r\n                        <a href="#">Community Superstar Winner – #OrganicBeeMedia http://t.co/2Fs1nnMj</a>\r\n                    </li>\r\n                    <li>\r\n<span class="fa fa-twitter fa-2x"></span>\r\n                        <a href="#">Clean #Websites Designs for Your #Inspiration http://t.co/ SnRKu3HJ</a>\r\n                    </li>\r\n                    <li>\r\n<span class="fa fa-twitter fa-2x"></span>\r\n                        <a href="#">Cute Online #Shops http://t.co/ 1PoQN3bJ</a>\r\n                    </li>\r\n                    <li>\r\n<span class="fa fa-twitter fa-2x"></span>\r\n                        <a href="#">Download 40 vector #icons package for #FREE http://t.co/2Fp5GLqn </a>\r\n                    </li>\r\n                </ul>\r\n         <h4>social conecting</h4>\r\n                <ul class="soc-networks">\r\n                    <li>\r\n                        <a class="fa fa-facebook fa-lg" href="#"></a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="fa fa-google-plus fa-lg" href="#"></a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="fa fa-twitter fa-lg" href="#"></a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="fa fa-linkedin fa-lg" href="#"></a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="fa fa-youtube fa-lg" href="#"></a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="bloger" href="#">bloger</a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="fa fa-rss fa-lg" href="#"></a>\r\n                    </li>\r\n                    <li>\r\n                        <a class="fa fa-dribbble fa-lg" href="#"></a>\r\n                    </li>\r\n                </ul>";s:6:"filter";b:0;}i:5;a:3:{s:5:"title";s:0:"";s:4:"text";s:957:"<h3>Contact Info</h3>\r\n <address>\r\n<ul class="list-contact">\r\n     <li class="address">\r\n               <span>Address: </span>\r\n               <a href="#">12569 Saint Patrick des Prés, 85000 Paris, France</a>\r\n       </li>\r\n        <li class="phone">\r\n        <span> Phone: </span>\r\n         <a href="tel:+380458454578">+38 045 845-45-78</a>\r\n                            <a href="tel:+380458454579">+38 045 845-45-79</a>\r\n           </li>\r\n            <li class="email">\r\n             <span>E-mail: </span>\r\n              <a href="mailto:freeforwebdesign@gmail.com">freeforwebdesign@gmail.com</a>\r\n             </li>\r\n  </ul>\r\n</address>\r\n       <h3>follow us</h3>\r\n                <span>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</span>\r\n\r\n                <form action="#">\r\n                    <input type="text" />\r\n                        <button type="button" class="fa fa-envelope-o"></button>\r\n                </form>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '27', 'yes'),
(85, 'page_on_front', '23', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '30133', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:3;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:7:"sidebar";a:5:{i:0;s:8:"search-2";i:1;s:12:"categories-3";i:2;s:10:"archives-3";i:3;s:5:"wpp-2";i:4;s:11:"tag_cloud-2";}s:11:"wrap-footer";a:3:{i:0;s:6:"text-2";i:1;s:6:"text-4";i:2;s:6:"text-5";}s:13:"array_version";i:3;}', 'yes'),
(96, 'cron', 'a:7:{i:1428924735;a:1:{s:20:"jetpack_clean_nonces";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1428948186;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1428952140;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1428969600;a:1:{s:15:"wpp_cache_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1428991469;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1428992424;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(98, '_site_transient_update_core', 'O:8:"stdClass":3:{s:7:"updates";a:0:{}s:15:"version_checked";s:5:"4.1.1";s:12:"last_checked";i:1428904990;}', 'yes'),
(99, '_transient_random_seed', '85b454c5e73ba3df22c614f1b137b76a', 'yes'),
(100, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1428911653;s:7:"checked";a:7:{s:19:"akismet/akismet.php";s:5:"3.0.4";s:9:"hello.php";s:3:"1.6";s:19:"jetpack/jetpack.php";s:5:"3.4.1";s:23:"rustolat/rus-to-lat.php";s:3:"0.3";s:67:"shiftnav-responsive-mobile-menu/shiftnav-responsive-mobile-menu.php";s:3:"1.2";s:51:"wordpress-popular-posts/wordpress-popular-posts.php";s:5:"3.2.1";s:54:"wordpress-23-related-posts-plugin/wp_related_posts.php";s:5:"3.5.4";}s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.1";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.1.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:6:{s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:19:"jetpack/jetpack.php";O:8:"stdClass":6:{s:2:"id";s:5:"20101";s:4:"slug";s:7:"jetpack";s:6:"plugin";s:19:"jetpack/jetpack.php";s:11:"new_version";s:5:"3.4.1";s:3:"url";s:38:"https://wordpress.org/plugins/jetpack/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/jetpack.3.4.1.zip";}s:23:"rustolat/rus-to-lat.php";O:8:"stdClass":6:{s:2:"id";s:5:"18221";s:4:"slug";s:8:"rustolat";s:6:"plugin";s:23:"rustolat/rus-to-lat.php";s:11:"new_version";s:3:"0.3";s:3:"url";s:39:"https://wordpress.org/plugins/rustolat/";s:7:"package";s:55:"https://downloads.wordpress.org/plugin/rustolat.0.3.zip";}s:67:"shiftnav-responsive-mobile-menu/shiftnav-responsive-mobile-menu.php";O:8:"stdClass":6:{s:2:"id";s:5:"48438";s:4:"slug";s:31:"shiftnav-responsive-mobile-menu";s:6:"plugin";s:67:"shiftnav-responsive-mobile-menu/shiftnav-responsive-mobile-menu.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:62:"https://wordpress.org/plugins/shiftnav-responsive-mobile-menu/";s:7:"package";s:78:"https://downloads.wordpress.org/plugin/shiftnav-responsive-mobile-menu.1.2.zip";}s:51:"wordpress-popular-posts/wordpress-popular-posts.php";O:8:"stdClass":6:{s:2:"id";s:4:"5377";s:4:"slug";s:23:"wordpress-popular-posts";s:6:"plugin";s:51:"wordpress-popular-posts/wordpress-popular-posts.php";s:11:"new_version";s:5:"3.2.1";s:3:"url";s:54:"https://wordpress.org/plugins/wordpress-popular-posts/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/wordpress-popular-posts.3.2.1.zip";}s:54:"wordpress-23-related-posts-plugin/wp_related_posts.php";O:8:"stdClass":6:{s:2:"id";s:3:"957";s:4:"slug";s:33:"wordpress-23-related-posts-plugin";s:6:"plugin";s:54:"wordpress-23-related-posts-plugin/wp_related_posts.php";s:11:"new_version";s:5:"3.5.4";s:3:"url";s:64:"https://wordpress.org/plugins/wordpress-23-related-posts-plugin/";s:7:"package";s:82:"https://downloads.wordpress.org/plugin/wordpress-23-related-posts-plugin.3.5.4.zip";}}}', 'yes'),
(101, '_site_transient_timeout_theme_roots', '1428906797', 'yes'),
(102, '_site_transient_theme_roots', 'a:4:{s:6:"skokov";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(103, '_site_transient_update_themes', 'O:8:"stdClass":1:{s:12:"last_checked";i:1428905176;}', 'yes'),
(104, 'can_compress_scripts', '1', 'yes'),
(106, '_transient_twentyfifteen_categories', '1', 'yes'),
(107, '_transient_timeout_plugin_slugs', '1428998054', 'no'),
(108, '_transient_plugin_slugs', 'a:7:{i:0;s:19:"akismet/akismet.php";i:1;s:9:"hello.php";i:2;s:19:"jetpack/jetpack.php";i:3;s:23:"rustolat/rus-to-lat.php";i:4;s:67:"shiftnav-responsive-mobile-menu/shiftnav-responsive-mobile-menu.php";i:5;s:51:"wordpress-popular-posts/wordpress-popular-posts.php";i:6;s:54:"wordpress-23-related-posts-plugin/wp_related_posts.php";}', 'no'),
(109, 'recently_activated', 'a:1:{s:67:"shiftnav-responsive-mobile-menu/shiftnav-responsive-mobile-menu.php";i:1428911654;}', 'yes'),
(111, 'current_theme', 'Untititled', 'yes'),
(112, 'theme_mods_skokov', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(113, 'theme_switched', '', 'yes'),
(120, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1428948395', 'no'),
(123, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1428905176;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(125, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: name lookup timed out</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: name lookup timed out</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(126, '_site_transient_timeout_browser_8b1fe4215ad374390959bd4ae976c188', '1429510610', 'yes'),
(127, '_site_transient_browser_8b1fe4215ad374390959bd4ae976c188', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"41.0.2272.118";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(138, 'category_children', 'a:0:{}', 'yes'),
(150, 'wpp_settings_config', 'a:2:{s:5:"stats";a:4:{s:8:"order_by";s:5:"views";s:5:"limit";i:10;s:9:"post_type";s:9:"post,page";s:9:"freshness";b:0;}s:5:"tools";a:7:{s:4:"ajax";b:0;s:3:"css";b:1;s:4:"link";a:1:{s:6:"target";s:5:"_self";}s:9:"thumbnail";a:4:{s:6:"source";s:8:"featured";s:5:"field";s:0:"";s:6:"resize";b:0;s:7:"default";s:0:"";}s:3:"log";a:1:{s:5:"level";i:1;}s:5:"cache";a:2:{s:6:"active";b:0;s:8:"interval";a:2:{s:4:"time";s:4:"hour";s:5:"value";i:1;}}s:8:"sampling";a:2:{s:6:"active";b:0;s:4:"rate";i:100;}}}', 'yes'),
(151, 'wpp_ver', '3.2.1', 'yes'),
(152, 'shiftnav_shiftnav-main', '', 'yes'),
(153, 'shiftnav_togglebar', '', 'yes'),
(154, 'shiftnav_general', '', 'yes'),
(155, 'jetpack_options', 'a:5:{s:7:"version";s:16:"3.4.1:1428906735";s:11:"old_version";s:16:"3.4.1:1428906735";s:20:"last_security_report";i:1428920422;s:28:"fallback_no_verify_ssl_certs";i:0;s:9:"time_diff";i:0;}', 'yes'),
(156, 'jetpack_activated', '1', 'yes'),
(157, 'jetpack_file_data', 'a:1:{s:5:"3.4.1";a:48:{s:32:"9872afe109dc9f4c5cf40b462803a422";a:13:{s:4:"name";s:20:"Spelling and Grammar";s:11:"description";s:89:"Check your spelling, style, and grammar with the After the Deadline proofreading service.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"6";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"64555f4179a44694bbd735055e820a57";a:13:{s:4:"name";s:8:"Carousel";s:11:"description";s:63:"Transform standard image galleries into full-screen slideshows.";s:14:"jumpstart_desc";s:79:"brings your photos and images to life as full-size, easily navigable galleries.";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:2:"12";s:10:"introduced";s:3:"1.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:9:"Jumpstart";}s:32:"785291f6751b3853ecdaca548efeae9d";a:13:{s:4:"name";s:16:"Jetpack Comments";s:11:"description";s:79:"Let readers comment with WordPress.com, Twitter, Facebook, or Google+ accounts.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"20";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";}s:32:"c313a496b18c1be2475f1bd6312a7e40";a:13:{s:4:"name";s:12:"Contact Form";s:11:"description";s:44:"Insert a contact form anywhere on your site.";s:14:"jumpstart_desc";s:111:"adds a button to your post and page editors, allowing you to build simple forms to help visitors stay in touch.";s:4:"sort";s:2:"15";s:20:"recommendation_order";s:2:"14";s:10:"introduced";s:3:"1.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:9:"Jumpstart";}s:32:"4e1f9a60b45e7102c771a869a7c216a2";a:13:{s:4:"name";s:20:"Custom Content Types";s:11:"description";s:92:"Organize and display different types of content on your site, separate from posts and pages.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"34";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"2dab3790b863f72272de0d26d0608df6";a:13:{s:4:"name";s:10:"Custom CSS";s:11:"description";s:57:"Customize your site’s CSS without modifying your theme.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"2";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.7";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:0:"";}s:32:"f4d2070799752fb0bf2d4fe4fe0642c6";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"8304432d2a85aa085791d6e9793e7f20";a:13:{s:4:"name";s:21:"Enhanced Distribution";s:11:"description";s:74:"Share your public posts and comments to search engines and other services.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"5";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"38f367f3fa04a6c920fba6be43a05a33";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"d95d236feaf2bba4e95ab61d6578ce00";a:13:{s:4:"name";s:19:"Gravatar Hovercards";s:11:"description";s:58:"Enable pop-up business cards over commenters’ Gravatars.";s:14:"jumpstart_desc";s:131:"let commenters link their profiles to their Gravatar accounts, making it easy for your visitors to learn more about your community.";s:4:"sort";s:2:"11";s:20:"recommendation_order";s:2:"13";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:9:"Jumpstart";}s:32:"a6497c18567db13cbf2456652fb1dbb5";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:8:"2.0.3 ??";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"4ff4ef3cfec6e68d48093e7294c0438b";a:13:{s:4:"name";s:15:"Infinite Scroll";s:11:"description";s:46:"Add support for infinite scroll to your theme.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"26";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:0:"";}s:32:"8b102aca27bb5178bce3e79c7158261d";a:13:{s:4:"name";s:8:"JSON API";s:11:"description";s:69:"Allow applications to securely access your content through the cloud.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"19";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:6:"Public";s:11:"module_tags";s:19:"Writing, Developers";s:7:"feature";s:0:"";}s:32:"f6da9c9ee04e2aa443cbe98785e8810c";a:13:{s:4:"name";s:14:"Beautiful Math";s:11:"description";s:85:"Use LaTeX markup language in posts and pages for complex equations and other geekery.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"12";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"252f03eb187a69fcfd4078694be0bd13";a:13:{s:4:"name";s:5:"Likes";s:11:"description";s:70:"Give visitors an easy way to show their appreciation for your content.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"23";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";}s:32:"d63d1ddc12138f8b8c15c422d47b0a9b";a:13:{s:4:"name";s:6:"Manage";s:11:"description";s:76:"Manage all your sites from a centralized place, https://wordpress.com/sites.";s:14:"jumpstart_desc";s:151:"helps you remotely manage plugins, turn on automated updates, and more from <a href="https://wordpress.com/plugins/" target="_blank">wordpress.com</a>.";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"3";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:35:"Centralized Management, Recommended";s:7:"feature";s:22:"Recommended, Jumpstart";}s:32:"74ab9479d8400882ecdb51e37b787038";a:13:{s:4:"name";s:8:"Markdown";s:11:"description";s:51:"Write posts or pages in plain-text Markdown syntax.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"31";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"62b1cd2852820848eb494989f2b50b59";a:13:{s:4:"name";s:12:"Mobile Theme";s:11:"description";s:64:"Optimize your site with a mobile-friendly theme for smartphones.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"21";s:20:"recommendation_order";s:2:"11";s:10:"introduced";s:3:"1.8";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:31:"Appearance, Mobile, Recommended";s:7:"feature";s:11:"Recommended";}s:32:"614597e9b5412d2af92e531523f426aa";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"e10f62e15b9231d5e9673893a931e773";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"5096dec7682430951a8f3bdf058aeb3d";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"650aef1345c45307a447b0b3f65ac946";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"49f3200aad66c88462f750808e02dcae";a:13:{s:4:"name";s:7:"Monitor";s:11:"description";s:88:"Receive notifications from Jetpack if your site goes offline — and when it it returns.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"28";s:20:"recommendation_order";s:2:"10";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:11:"Recommended";}s:32:"224d6e8417feb6c95e4c595722e132b2";a:13:{s:4:"name";s:13:"Notifications";s:11:"description";s:84:"Receive notification of site activity via the admin toolbar and your Mobile devices.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"13";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:5:"Other";s:7:"feature";s:0:"";}s:32:"7697e7b4b1e32481579f00dc130fb9ee";a:13:{s:4:"name";s:10:"Omnisearch";s:11:"description";s:66:"Search your entire database from a single field in your Dashboard.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"16";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.3";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:0:"";}s:32:"53db163308471102df32619d11480f0e";a:13:{s:4:"name";s:6:"Photon";s:11:"description";s:66:"Accelerate your site by loading images from the WordPress.com CDN.";s:14:"jumpstart_desc";s:141:"mirrors and serves your images from our free and fast image CDN, improving your site’s performance with no additional load on your servers.";s:4:"sort";s:2:"25";s:20:"recommendation_order";s:1:"1";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:42:"Photos and Videos, Appearance, Recommended";s:7:"feature";s:22:"Recommended, Jumpstart";}s:32:"65d6225bdc6c67a0d8b77a5dcb2b9f17";a:13:{s:4:"name";s:13:"Post by Email";s:11:"description";s:58:"Publish posts by email, using any device and email client.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"14";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:7:"Writing";s:7:"feature";s:0:"";}s:32:"cca9d8ae7bdf9ad92fb6ed7c0183561b";a:13:{s:4:"name";s:7:"Protect";s:11:"description";s:70:"Adds brute force protection to your login page. Formerly BruteProtect.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"4";s:10:"introduced";s:3:"3.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:11:"Recommended";}s:32:"d744ad9b6bed3067a2b3721efa30abc9";a:13:{s:4:"name";s:9:"Publicize";s:11:"description";s:55:"Share new posts on social media networks automatically.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"10";s:20:"recommendation_order";s:1:"7";s:10:"introduced";s:3:"2.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:11:"Recommended";}s:32:"0e78c3da837ba44205796e252d13eaf0";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"9dd51eae2d65e793fac79eb45d82ea2b";a:13:{s:4:"name";s:13:"Related Posts";s:11:"description";s:60:"Display links to your related content under posts and pages.";s:14:"jumpstart_desc";s:113:"keep visitors engaged on your blog by highlighting relevant and new content at the bottom of each published post.";s:4:"sort";s:2:"29";s:20:"recommendation_order";s:1:"9";s:10:"introduced";s:3:"2.9";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:11:"Recommended";s:7:"feature";s:22:"Recommended, Jumpstart";}s:32:"229431fc90b78794e4ae023126e8ba4e";a:13:{s:4:"name";s:7:"Sharing";s:11:"description";s:81:"Allow visitors to share your content on Facebook, Twitter, and more with a click.";s:14:"jumpstart_desc";s:116:"Twitter, Facebook and Google+ buttons at the bottom of each post, making it easy for visitors to share your content.";s:4:"sort";s:1:"7";s:20:"recommendation_order";s:1:"6";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:19:"Social, Recommended";s:7:"feature";s:22:"Recommended, Jumpstart";}s:32:"a9531b98d74bb62ac1da4dd6237774b8";a:13:{s:4:"name";s:16:"Shortcode Embeds";s:11:"description";s:77:"Embed content from YouTube, Vimeo, SlideShare, and more, no coding necessary.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"3";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:3:"1.2";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:46:"Photos and Videos, Social, Writing, Appearance";s:7:"feature";s:0:"";}s:32:"33376c41c71db3e694334cd1e8871bba";a:13:{s:4:"name";s:16:"WP.me Shortlinks";s:11:"description";s:56:"Enable WP.me-powered shortlinks for all posts and pages.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"8";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:0:"";}s:32:"66b53095980baa87fb0d30c05263fad3";a:13:{s:4:"name";s:9:"Site Icon";s:11:"description";s:29:"Add a site icon to your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"22";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:5:"Other";s:7:"feature";s:0:"";}s:32:"e842214f815c19884603862386922f50";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"bcd468e8782007b6c254af11be8b7a63";a:13:{s:4:"name";s:22:"Jetpack Single Sign On";s:11:"description";s:62:"Allow your users to log in using their WordPress.com accounts.";s:14:"jumpstart_desc";s:97:"lets you login to all your Jetpack-enabled sites with one click using your WordPress.com account.";s:4:"sort";s:2:"30";s:20:"recommendation_order";s:1:"5";s:10:"introduced";s:3:"2.6";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:10:"Developers";s:7:"feature";s:9:"Jumpstart";}s:32:"e12d5b38b954dc1a2d205c5a9213ecd9";a:13:{s:4:"name";s:19:"WordPress.com Stats";s:11:"description";s:85:"Monitor your stats with clear, concise reports and no additional load on your server.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"1";s:20:"recommendation_order";s:1:"2";s:10:"introduced";s:3:"1.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:32:"WordPress.com Stats, Recommended";s:7:"feature";s:11:"Recommended";}s:32:"09d6e0c9f7b1d94a98c17b556fe4ba4c";a:13:{s:4:"name";s:13:"Subscriptions";s:11:"description";s:88:"Allow users to subscribe to your posts and comments and receive notifications via email.";s:14:"jumpstart_desc";s:126:"give visitors two easy subscription options — while commenting, or via a separate email subscription widget you can display.";s:4:"sort";s:1:"9";s:20:"recommendation_order";s:1:"8";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:6:"Social";s:7:"feature";s:9:"Jumpstart";}s:32:"00e9d6d246adb9e2cf96f376f985fc02";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"cc17219a1228e4be872c3bfdd68779c9";a:13:{s:4:"name";s:15:"Tiled Galleries";s:11:"description";s:73:"Display your image galleries in a variety of sleek, graphic arrangements.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"24";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.1";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:2:"No";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:0:"";}s:32:"45d54c07b556c3d9599ec555af7e4283";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"506f42655b5672db636268f867b4fb0a";a:13:{s:4:"name";s:10:"VaultPress";s:11:"description";s:85:"Protect your site with automatic backups and security scans. (Subscription required.)";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"32";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:5:"0:1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:5:"false";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"63f0100a332c0ce06fc93d55f9995cc8";a:13:{s:4:"name";s:17:"Site Verification";s:11:"description";s:78:"Verify your site or domain with Google Webmaster Tools, Pinterest, and others.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"33";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"3.0";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}s:32:"5157d636498dd797f3e3b890459b83ef";a:13:{s:4:"name";s:10:"VideoPress";s:11:"description";s:68:"Upload and embed videos right on your site. (Subscription required.)";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"27";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.5";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:5:"false";s:19:"requires_connection";s:3:"Yes";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:17:"Photos and Videos";s:7:"feature";s:0:"";}s:32:"ba8a0cbdb8f42017b09fa4b4cc8e2ac9";a:13:{s:4:"name";s:17:"Widget Visibility";s:11:"description";s:57:"Specify which widgets appear on which pages of your site.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:2:"17";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"2.4";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:10:"Appearance";s:7:"feature";s:0:"";}s:32:"fc6570a20f83fedfb764369513d34efd";a:13:{s:4:"name";s:21:"Extra Sidebar Widgets";s:11:"description";s:79:"Add images, Twitter streams, your site’s RSS links, and more to your sidebar.";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:1:"4";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:3:"1.2";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:2:"No";s:13:"auto_activate";s:3:"Yes";s:11:"module_tags";s:18:"Social, Appearance";s:7:"feature";s:0:"";}s:32:"f172e3efad5d430014482dd53b80aff7";a:13:{s:4:"name";s:0:"";s:11:"description";s:0:"";s:14:"jumpstart_desc";s:0:"";s:4:"sort";s:0:"";s:20:"recommendation_order";s:0:"";s:10:"introduced";s:0:"";s:7:"changed";s:0:"";s:10:"deactivate";s:0:"";s:4:"free";s:0:"";s:19:"requires_connection";s:0:"";s:13:"auto_activate";s:0:"";s:11:"module_tags";s:0:"";s:7:"feature";s:0:"";}}}', 'yes'),
(158, 'jetpack_available_modules', 'a:1:{s:5:"3.4.1";a:36:{s:18:"after-the-deadline";s:3:"1.1";s:8:"carousel";s:3:"1.5";s:8:"comments";s:3:"1.4";s:12:"contact-form";s:3:"1.3";s:20:"custom-content-types";s:3:"3.1";s:10:"custom-css";s:3:"1.7";s:21:"enhanced-distribution";s:3:"1.2";s:19:"gravatar-hovercards";s:3:"1.1";s:15:"infinite-scroll";s:3:"2.0";s:8:"json-api";s:3:"1.9";s:5:"latex";s:3:"1.1";s:5:"likes";s:3:"2.2";s:6:"manage";s:3:"3.4";s:8:"markdown";s:3:"2.8";s:9:"minileven";s:3:"1.8";s:7:"monitor";s:3:"2.6";s:5:"notes";s:3:"1.9";s:10:"omnisearch";s:3:"2.3";s:6:"photon";s:3:"2.0";s:13:"post-by-email";s:3:"2.0";s:7:"protect";s:3:"3.4";s:9:"publicize";s:3:"2.0";s:13:"related-posts";s:3:"2.9";s:10:"sharedaddy";s:3:"1.1";s:10:"shortcodes";s:3:"1.1";s:10:"shortlinks";s:3:"1.1";s:9:"site-icon";s:3:"3.2";s:3:"sso";s:3:"2.6";s:5:"stats";s:3:"1.1";s:13:"subscriptions";s:3:"1.2";s:13:"tiled-gallery";s:3:"2.1";s:10:"vaultpress";s:5:"0:1.2";s:18:"verification-tools";s:3:"3.0";s:10:"videopress";s:3:"2.5";s:17:"widget-visibility";s:3:"2.4";s:7:"widgets";s:3:"1.2";}}', 'yes'),
(160, 'jetpack_security_report', 'a:0:{}', 'yes'),
(161, '_transient_timeout_jetpack_https_test', '1428993137', 'no'),
(162, '_transient_jetpack_https_test', '1', 'no'),
(163, '_transient_timeout_jetpack_site_is_vcs', '1428993196', 'no'),
(164, '_transient_jetpack_site_is_vcs', '0', 'no'),
(165, 'jetpack_updates', 'a:7:{s:7:"plugins";i:1;s:6:"themes";i:0;s:9:"wordpress";i:0;s:12:"translations";i:0;s:5:"total";i:1;s:10:"wp_version";s:5:"4.1.1";s:26:"site_is_version_controlled";b:0;}', 'yes'),
(166, 'wp_rp_meta', 'a:15:{s:7:"version";s:5:"3.5.4";s:13:"first_version";s:5:"3.5.4";s:8:"new_user";b:1;s:7:"blog_tg";i:1;s:22:"remote_recommendations";b:0;s:19:"show_turn_on_button";b:1;s:4:"name";s:0:"";s:5:"email";s:0:"";s:10:"subscribed";b:0;s:10:"registered";b:0;s:15:"zemanta_api_key";b:0;s:13:"global_notice";a:2:{s:5:"title";s:56:"I''ve installed Wordpress Related Posts plugin. Now what?";s:7:"message";s:129:"Checkout how you can <a target="_blank" href="http://zem.si/1kGo9V6">create awesome content</a>. Hint: it''s not all about YOU ;-)";}s:22:"turn_on_button_pressed";b:0;s:25:"show_zemanta_linky_option";b:1;s:12:"classic_user";b:1;}', 'yes'),
(167, 'wp_rp_options', 'a:18:{s:19:"related_posts_title";s:17:"More from my site";s:17:"max_related_posts";i:6;s:18:"exclude_categories";s:0:"";s:14:"on_single_post";b:1;s:6:"on_rss";b:0;s:28:"max_related_post_age_in_days";i:0;s:22:"default_thumbnail_path";b:0;s:24:"promoted_content_enabled";b:1;s:13:"enable_themes";b:1;s:29:"custom_size_thumbnail_enabled";b:0;s:22:"custom_thumbnail_width";i:150;s:23:"custom_thumbnail_height";i:150;s:20:"thumbnail_use_custom";b:0;s:22:"thumbnail_custom_field";b:0;s:21:"display_zemanta_linky";b:0;s:34:"only_admins_can_edit_related_posts";b:0;s:18:"subscription_types";b:0;s:7:"desktop";a:8:{s:21:"display_comment_count";b:0;s:20:"display_publish_date";b:0;s:17:"display_thumbnail";b:1;s:15:"display_excerpt";b:0;s:18:"excerpt_max_length";i:200;s:10:"theme_name";s:14:"vertical-m.css";s:16:"theme_custom_css";s:118:".related_post_title {\n}\nul.related_post {\n}\nul.related_post li {\n}\nul.related_post li a {\n}\nul.related_post li img {\n}";s:20:"custom_theme_enabled";b:0;}}', 'yes'),
(168, 'zemanta_plugin_version', '1.2.3', 'yes'),
(169, 'zemanta_options', 'a:1:{s:7:"api_key";s:24:"od9sumfdrrlqp4ap9sr80fjl";}', 'yes'),
(170, 'site_logo', 'a:3:{s:2:"id";i:21;s:5:"sizes";a:1:{s:4:"full";a:4:{s:3:"url";s:63:"http://localhost/geekandkh/wp-content/uploads/2015/04/logo1.png";s:6:"height";i:116;s:5:"width";i:116;s:11:"orientation";s:9:"landscape";}}s:3:"url";s:63:"http://localhost/geekandkh/wp-content/uploads/2015/04/logo1.png";}', 'yes'),
(171, '_site_transient_timeout_available_translations', '1428920195', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(172, '_site_transient_available_translations', 'a:53:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-01 13:21:43";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:15:41";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:19:26";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:22:49";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:24:48";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:30:22";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:32:23";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:34:24";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:38:25";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:40:46";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:44:26";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:46:15";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:42:35";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:48:12";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:54:32";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:56:31";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 14:50:12";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 08:55:29";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:03:17";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-18 08:12:21";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:08:29";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:14:57";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.1/haz.zip";s:3:"iso";a:2:{i:1;s:3:"haz";i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-08 22:28:26";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:25:25";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:27:28";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:29:34";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-15 22:23:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:33:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:35:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:43:18";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:47:56";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:7:"Burmese";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 15:59:41";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:02:30";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:07:08";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:11:07";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:14:41";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 14:48:56";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:19:48";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:23:44";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:30:35";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:33:33";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-27 00:00:51";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:43:10";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-04-10 12:55:55";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.1.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.1.1";s:7:"updated";s:19:"2015-03-26 16:55:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.1.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:3:"4.1";s:7:"updated";s:19:"2014-12-26 02:21:02";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(175, 'rewrite_rules', 'a:68:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=23&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(179, 'widget_wpp', 'a:2:{i:2;a:15:{s:5:"title";s:13:"Popular posts";s:5:"limit";s:1:"5";s:5:"range";s:5:"daily";s:8:"order_by";s:5:"views";s:9:"post_type";s:9:"post,page";s:9:"freshness";b:0;s:3:"pid";s:0:"";s:3:"cat";s:0:"";s:6:"author";s:0:"";s:13:"shorten_title";a:3:{s:5:"words";s:1:"0";s:6:"active";b:1;s:6:"length";s:8:"10000000";}s:12:"post-excerpt";a:4:{s:11:"keep_format";b:0;s:5:"words";s:1:"0";s:6:"active";b:0;s:6:"length";s:2:"55";}s:9:"thumbnail";a:5:{s:6:"active";b:1;s:5:"width";s:3:"100";s:6:"height";s:2:"70";s:5:"build";s:6:"manual";s:4:"crop";b:1;}s:6:"rating";b:0;s:9:"stats_tag";a:5:{s:13:"comment_count";b:0;s:5:"views";b:1;s:6:"author";b:0;s:4:"date";a:2:{s:6:"active";b:1;s:6:"format";s:6:"F j, Y";}s:8:"category";b:0;}s:6:"markup";a:6:{s:11:"custom_html";b:0;s:9:"wpp-start";s:37:"&lt;ul class=&quot;wpp-list&quot;&gt;";s:7:"wpp-end";s:11:"&lt;/ul&gt;";s:9:"post-html";s:44:"&lt;li&gt;{thumb} {title} {stats}&lt;/li&gt;";s:11:"title-start";s:0:"";s:9:"title-end";s:0:"";}}s:12:"_multiwidget";i:1;}', 'yes'),
(180, 'widget_tag_cloud', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:8:"taxonomy";s:8:"post_tag";}s:12:"_multiwidget";i:1;}', 'yes'),
(194, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_popularpostsdata`
--

CREATE TABLE `wp_popularpostsdata` (
  `postid` bigint(20) NOT NULL,
  `day` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_viewed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pageviews` bigint(20) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_popularpostsdata`
--

INSERT INTO `wp_popularpostsdata` (`postid`, `day`, `last_viewed`, `pageviews`) VALUES
(14, '2015-04-13 08:45:00', '2015-04-13 09:23:18', 24),
(27, '2015-04-13 07:16:27', '2015-04-13 07:16:27', 1),
(29, '2015-04-13 09:26:26', '2015-04-13 09:26:26', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_popularpostssummary`
--

CREATE TABLE `wp_popularpostssummary` (
`ID` bigint(20) NOT NULL,
  `postid` bigint(20) NOT NULL,
  `pageviews` bigint(20) NOT NULL DEFAULT '1',
  `view_date` date NOT NULL DEFAULT '0000-00-00',
  `last_viewed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_popularpostssummary`
--

INSERT INTO `wp_popularpostssummary` (`ID`, `postid`, `pageviews`, `view_date`, `last_viewed`) VALUES
(1, 27, 1, '2015-04-13', '2015-04-13 07:16:27'),
(2, 14, 24, '2015-04-13', '2015-04-13 09:23:18'),
(26, 29, 1, '2015-04-13', '2015-04-13 09:26:26');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
`meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1428914000:1'),
(6, 6, '_edit_last', '1'),
(7, 6, '_edit_lock', '1428913993:1'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1428913838:1'),
(14, 10, '_edit_last', '1'),
(15, 10, '_edit_lock', '1428913952:1'),
(18, 12, '_edit_last', '1'),
(19, 12, '_edit_lock', '1428913687:1'),
(24, 14, '_edit_last', '1'),
(25, 14, '_edit_lock', '1428916383:1'),
(28, 16, '_wp_attached_file', '2015/04/post-formula1.jpg'),
(29, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:400;s:4:"file";s:25:"2015/04/post-formula1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"post-formula1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:25:"post-formula1-300x218.jpg";s:5:"width";i:300;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(30, 17, '_wp_attached_file', '2015/04/post-girl1.jpg'),
(31, 17, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:400;s:4:"file";s:22:"2015/04/post-girl1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"post-girl1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"post-girl1-300x218.jpg";s:5:"width";i:300;s:6:"height";i:218;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(32, 18, '_wp_attached_file', '2015/04/post-dog1.jpg'),
(33, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:402;s:4:"file";s:21:"2015/04/post-dog1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"post-dog1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"post-dog1-300x219.jpg";s:5:"width";i:300;s:6:"height";i:219;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(34, 19, '_wp_attached_file', '2015/04/post-favorites.jpg'),
(35, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:550;s:6:"height";i:403;s:4:"file";s:26:"2015/04/post-favorites.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"post-favorites-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:26:"post-favorites-300x220.jpg";s:5:"width";i:300;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(36, 20, '_wp_attached_file', '2015/04/post-girl2.jpg'),
(37, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:560;s:4:"file";s:22:"2015/04/post-girl2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"post-girl2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"post-girl2-300x187.jpg";s:5:"width";i:300;s:6:"height";i:187;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(38, 14, '_thumbnail_id', '17'),
(39, 12, '_thumbnail_id', '19'),
(40, 10, '_thumbnail_id', '20'),
(43, 8, '_thumbnail_id', '18'),
(46, 6, '_thumbnail_id', '16'),
(49, 4, '_thumbnail_id', '20'),
(52, 21, '_wp_attached_file', '2015/04/logo1.png'),
(53, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:116;s:6:"height";i:116;s:4:"file";s:17:"2015/04/logo1.png";s:5:"sizes";a:0:{}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(54, 2, '_wp_trash_meta_status', 'publish'),
(55, 2, '_wp_trash_meta_time', '1428909018'),
(56, 23, '_edit_last', '1'),
(57, 23, '_edit_lock', '1428908883:1'),
(58, 25, '_edit_last', '1'),
(59, 25, '_edit_lock', '1428908892:1'),
(60, 27, '_edit_last', '1'),
(61, 27, '_edit_lock', '1428908900:1'),
(62, 29, '_edit_last', '1'),
(63, 29, '_edit_lock', '1428908909:1'),
(64, 31, '_edit_last', '1'),
(65, 31, '_edit_lock', '1428908921:1'),
(68, 1, '_edit_lock', '1428913875:1'),
(69, 1, '_edit_last', '1'),
(86, 1, '_wp_rp_image', 'empty'),
(97, 14, '_wp_rp_related_posts_query_result_cache_expiration', '1429002541'),
(98, 14, '_wp_rp_related_posts_query_result_cache_6', 'a:5:{i:0;O:8:"stdClass":2:{s:7:"post_id";s:2:"12";s:5:"score";s:18:"15.803909020366422";}i:1;O:8:"stdClass":2:{s:7:"post_id";s:1:"4";s:5:"score";s:17:"8.472978602443465";}i:2;O:8:"stdClass":2:{s:7:"post_id";s:1:"8";s:5:"score";s:17:"6.742015238212469";}i:3;O:8:"stdClass":2:{s:7:"post_id";s:2:"10";s:5:"score";s:18:"2.7980789396771133";}i:4;O:8:"stdClass":2:{s:7:"post_id";s:1:"1";s:5:"score";s:18:"2.7980789396771133";}}'),
(99, 35, '_menu_item_type', 'post_type'),
(100, 35, '_menu_item_menu_item_parent', '0'),
(101, 35, '_menu_item_object_id', '31'),
(102, 35, '_menu_item_object', 'page'),
(103, 35, '_menu_item_target', ''),
(104, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(105, 35, '_menu_item_xfn', ''),
(106, 35, '_menu_item_url', ''),
(108, 36, '_menu_item_type', 'post_type'),
(109, 36, '_menu_item_menu_item_parent', '0'),
(110, 36, '_menu_item_object_id', '29'),
(111, 36, '_menu_item_object', 'page'),
(112, 36, '_menu_item_target', ''),
(113, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(114, 36, '_menu_item_xfn', ''),
(115, 36, '_menu_item_url', ''),
(117, 37, '_menu_item_type', 'post_type'),
(118, 37, '_menu_item_menu_item_parent', '0'),
(119, 37, '_menu_item_object_id', '27'),
(120, 37, '_menu_item_object', 'page'),
(121, 37, '_menu_item_target', ''),
(122, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(123, 37, '_menu_item_xfn', ''),
(124, 37, '_menu_item_url', ''),
(126, 38, '_menu_item_type', 'post_type'),
(127, 38, '_menu_item_menu_item_parent', '0'),
(128, 38, '_menu_item_object_id', '25'),
(129, 38, '_menu_item_object', 'page'),
(130, 38, '_menu_item_target', ''),
(131, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(132, 38, '_menu_item_xfn', ''),
(133, 38, '_menu_item_url', ''),
(135, 39, '_menu_item_type', 'post_type'),
(136, 39, '_menu_item_menu_item_parent', '0'),
(137, 39, '_menu_item_object_id', '23'),
(138, 39, '_menu_item_object', 'page'),
(139, 39, '_menu_item_target', ''),
(140, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(141, 39, '_menu_item_xfn', ''),
(142, 39, '_menu_item_url', ''),
(144, 40, '_menu_item_type', 'post_type'),
(145, 40, '_menu_item_menu_item_parent', '0'),
(146, 40, '_menu_item_object_id', '31'),
(147, 40, '_menu_item_object', 'page'),
(148, 40, '_menu_item_target', ''),
(149, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(150, 40, '_menu_item_xfn', ''),
(151, 40, '_menu_item_url', ''),
(153, 41, '_menu_item_type', 'post_type'),
(154, 41, '_menu_item_menu_item_parent', '0'),
(155, 41, '_menu_item_object_id', '29'),
(156, 41, '_menu_item_object', 'page'),
(157, 41, '_menu_item_target', ''),
(158, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(159, 41, '_menu_item_xfn', ''),
(160, 41, '_menu_item_url', ''),
(162, 42, '_menu_item_type', 'post_type'),
(163, 42, '_menu_item_menu_item_parent', '0'),
(164, 42, '_menu_item_object_id', '27'),
(165, 42, '_menu_item_object', 'page'),
(166, 42, '_menu_item_target', ''),
(167, 42, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(168, 42, '_menu_item_xfn', ''),
(169, 42, '_menu_item_url', ''),
(171, 43, '_menu_item_type', 'post_type'),
(172, 43, '_menu_item_menu_item_parent', '0'),
(173, 43, '_menu_item_object_id', '25'),
(174, 43, '_menu_item_object', 'page'),
(175, 43, '_menu_item_target', ''),
(176, 43, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(177, 43, '_menu_item_xfn', ''),
(178, 43, '_menu_item_url', ''),
(180, 44, '_menu_item_type', 'post_type'),
(181, 44, '_menu_item_menu_item_parent', '0'),
(182, 44, '_menu_item_object_id', '23'),
(183, 44, '_menu_item_object', 'page'),
(184, 44, '_menu_item_target', ''),
(185, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(186, 44, '_menu_item_xfn', ''),
(187, 44, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
--

CREATE TABLE `wp_posts` (
`ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-04-13 06:03:03', '2015-04-13 06:03:03', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2015-04-13 08:33:36', '2015-04-13 08:33:36', '', 0, 'http://localhost/geekandkh/?p=1', 0, 'post', '', 1),
(2, 1, '2015-04-13 06:03:03', '2015-04-13 06:03:03', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/geekandkh/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-04-13 07:10:18', '2015-04-13 07:10:18', '', 0, 'http://localhost/geekandkh/?page_id=2', 0, 'page', '', 0),
(3, 1, '2015-04-13 06:03:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-13 06:03:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/geekandkh/?p=3', 0, 'post', '', 0),
(4, 1, '2015-04-13 06:22:22', '2015-04-13 06:22:22', '<span>We are continuing to see more an more web designers realize the importance of typography. And with services like Typekit, Google Fonts, and Fontdeck</span>', '15 Websites with Beautiful Typography', '', 'publish', 'open', 'open', '', '15-websites-with-beautiful-typography', '', '', '2015-04-13 08:33:20', '2015-04-13 08:33:20', '', 0, 'http://localhost/geekandkh/?p=4', 0, 'post', '', 0),
(5, 1, '2015-04-13 06:22:22', '2015-04-13 06:22:22', '<span>We are continuing to see more an more web designers realize the importance of typography. And with services like Typekit, Google Fonts, and Fontdeck</span>', '15 Websites with Beautiful Typography', '', 'inherit', 'open', 'open', '', '4-revision-v1', '', '', '2015-04-13 06:22:22', '2015-04-13 06:22:22', '', 4, 'http://localhost/geekandkh/?p=5', 0, 'revision', '', 0),
(6, 1, '2015-04-13 06:22:50', '2015-04-13 06:22:50', '<span>As a designer, it can be tempting to use a lot of unnecessary design elements or a complex color palette to make a website stand out.</span>', '15 Fresh Examples of Clean and  Minimal Web Designs', '', 'publish', 'open', 'open', '', '15-fresh-examples-of-clean-and-minimal-web-designs', '', '', '2015-04-13 08:33:13', '2015-04-13 08:33:13', '', 0, 'http://localhost/geekandkh/?p=6', 0, 'post', '', 0),
(7, 1, '2015-04-13 06:22:50', '2015-04-13 06:22:50', '<span>As a designer, it can be tempting to use a lot of unnecessary design elements or a complex color palette to make a website stand out.</span>', '15 Fresh Examples of Clean and  Minimal Web Designs', '', 'inherit', 'open', 'open', '', '6-revision-v1', '', '', '2015-04-13 06:22:50', '2015-04-13 06:22:50', '', 6, 'http://localhost/geekandkh/?p=7', 0, 'revision', '', 0),
(8, 1, '2015-04-13 06:23:14', '2015-04-13 06:23:14', '<span>It doesn’t matter if you work from home or if you use your own space only at night or on the weekends, home offices are great! They give us a chance to create a space just the way we want it.</span>', '18 Minimalistic Home Offices to  Inspire You', '', 'publish', 'open', 'open', '', '18-minimalistic-home-offices-to-inspire-you', '', '', '2015-04-13 06:29:49', '2015-04-13 06:29:49', '', 0, 'http://localhost/geekandkh/?p=8', 0, 'post', '', 0),
(9, 1, '2015-04-13 06:23:14', '2015-04-13 06:23:14', '<span>It doesn’t matter if you work from home or if you use your own space only at night or on the weekends, home offices are great! They give us a chance to create a space just the way we want it.</span>', '18 Minimalistic Home Offices to  Inspire You', '', 'inherit', 'open', 'open', '', '8-revision-v1', '', '', '2015-04-13 06:23:14', '2015-04-13 06:23:14', '', 8, 'http://localhost/geekandkh/?p=9', 0, 'revision', '', 0),
(10, 1, '2015-04-13 06:24:09', '2015-04-13 06:24:09', '<span>Getting started in the world of design can be both thrilling and intimidating. Sometimes, you feel like you just don’t have the tools or skills you need to complete even the most basic projects.</span>', '20 Resources for Beginner Designers  & Developers', '', 'publish', 'open', 'open', '', '20-resources-for-beginner-designers-developers', '', '', '2015-04-13 08:34:53', '2015-04-13 08:34:53', '', 0, 'http://localhost/geekandkh/?p=10', 0, 'post', '', 0),
(11, 1, '2015-04-13 06:24:09', '2015-04-13 06:24:09', '<span>Getting started in the world of design can be both thrilling and intimidating. Sometimes, you feel like you just don’t have the tools or skills you need to complete even the most basic projects.</span>', '20 Resources for Beginner Designers  & Developers', '', 'inherit', 'open', 'open', '', '10-revision-v1', '', '', '2015-04-13 06:24:09', '2015-04-13 06:24:09', '', 10, 'http://localhost/geekandkh/?p=11', 0, 'revision', '', 0),
(12, 1, '2015-04-13 06:24:50', '2015-04-13 06:24:50', '<span>At ThemeTrust, our premium WordPress theme shop, we just released our latest WordPress theme. Baylie is a multipurpose agency theme featuring a full screen parallax slideshow.</span>', 'Multipurpose Agency WordPress  Theme', '', 'publish', 'open', 'open', '', 'multipurpose-agency-wordpress-theme', '', '', '2015-04-13 06:24:50', '2015-04-13 06:24:50', '', 0, 'http://localhost/geekandkh/?p=12', 0, 'post', '', 0),
(13, 1, '2015-04-13 06:24:50', '2015-04-13 06:24:50', '<span>At ThemeTrust, our premium WordPress theme shop, we just released our latest WordPress theme. Baylie is a multipurpose agency theme featuring a full screen parallax slideshow.</span>', 'Multipurpose Agency WordPress  Theme', '', 'inherit', 'open', 'open', '', '12-revision-v1', '', '', '2015-04-13 06:24:50', '2015-04-13 06:24:50', '', 12, 'http://localhost/geekandkh/?p=13', 0, 'revision', '', 0),
(14, 1, '2015-04-13 06:25:50', '2015-04-13 06:25:50', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.\r\n\r\n<a href="http://localhost/GeekExam/wp-content/uploads/2015/04/girl_03.jpg"><img class=" size-full wp-image-56 aligncenter" src="http://localhost/GeekExam/wp-content/uploads/2015/04/girl_03.jpg" alt="girl" width="900" height="560" /></a>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<a href="http://localhost/GeekExam/wp-content/uploads/2015/04/girl2_03.jpg"><img class=" size-full wp-image-58 aligncenter" src="http://localhost/GeekExam/wp-content/uploads/2015/04/girl2_03.jpg" alt="girl2_03" width="900" height="560" /></a>\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\n&nbsp;', '17 Inspiring Examples of Parallax  Scrolling Sites', '', 'publish', 'open', 'open', '', '17-inspiring-examples-of-parallax-scrolling-sites', '', '', '2015-04-13 09:08:35', '2015-04-13 09:08:35', '', 0, 'http://localhost/geekandkh/?p=14', 0, 'post', '', 0),
(15, 1, '2015-04-13 06:25:50', '2015-04-13 06:25:50', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.\r\n\r\n<a href="http://localhost/GeekExam/wp-content/uploads/2015/04/girl_03.jpg"><img class=" size-full wp-image-56 aligncenter" src="http://localhost/GeekExam/wp-content/uploads/2015/04/girl_03.jpg" alt="girl" width="900" height="560" /></a>\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.\r\n\r\n<a href="http://localhost/GeekExam/wp-content/uploads/2015/04/girl2_03.jpg"><img class=" size-full wp-image-58 aligncenter" src="http://localhost/GeekExam/wp-content/uploads/2015/04/girl2_03.jpg" alt="girl2_03" width="900" height="560" /></a>\r\n\r\n&nbsp;\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.\r\n\r\n&nbsp;', '17 Inspiring Examples of Parallax  Scrolling Sites', '', 'inherit', 'open', 'open', '', '14-revision-v1', '', '', '2015-04-13 06:25:50', '2015-04-13 06:25:50', '', 14, 'http://localhost/geekandkh/?p=15', 0, 'revision', '', 0),
(16, 1, '2015-04-13 06:27:15', '2015-04-13 06:27:15', '', 'post-formula', '', 'inherit', 'open', 'open', '', 'post-formula', '', '', '2015-04-13 06:27:15', '2015-04-13 06:27:15', '', 14, 'http://localhost/geekandkh/wp-content/uploads/2015/04/post-formula1.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2015-04-13 06:27:29', '2015-04-13 06:27:29', '', 'post-girl', '', 'inherit', 'open', 'open', '', 'post-girl', '', '', '2015-04-13 06:27:29', '2015-04-13 06:27:29', '', 14, 'http://localhost/geekandkh/wp-content/uploads/2015/04/post-girl1.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2015-04-13 06:28:57', '2015-04-13 06:28:57', '', 'post-dog', '', 'inherit', 'open', 'open', '', 'post-dog', '', '', '2015-04-13 06:28:57', '2015-04-13 06:28:57', '', 14, 'http://localhost/geekandkh/wp-content/uploads/2015/04/post-dog1.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2015-04-13 06:28:58', '2015-04-13 06:28:58', '', 'post-favorites', '', 'inherit', 'open', 'open', '', 'post-favorites', '', '', '2015-04-13 06:28:58', '2015-04-13 06:28:58', '', 14, 'http://localhost/geekandkh/wp-content/uploads/2015/04/post-favorites.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2015-04-13 06:28:58', '2015-04-13 06:28:58', '', 'post-girl2', '', 'inherit', 'open', 'open', '', 'post-girl2', '', '', '2015-04-13 06:28:58', '2015-04-13 06:28:58', '', 14, 'http://localhost/geekandkh/wp-content/uploads/2015/04/post-girl2.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2015-04-13 06:33:59', '2015-04-13 06:33:59', '', 'logo', '', 'inherit', 'open', 'open', '', 'logo', '', '', '2015-04-13 06:33:59', '2015-04-13 06:33:59', '', 0, 'http://localhost/geekandkh/wp-content/uploads/2015/04/logo1.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2015-04-13 07:10:18', '2015-04-13 07:10:18', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/geekandkh/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-04-13 07:10:18', '2015-04-13 07:10:18', '', 2, 'http://localhost/geekandkh/?p=22', 0, 'revision', '', 0),
(23, 1, '2015-04-13 07:10:25', '2015-04-13 07:10:25', '', 'home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-04-13 07:10:25', '2015-04-13 07:10:25', '', 0, 'http://localhost/geekandkh/?page_id=23', 0, 'page', '', 0),
(24, 1, '2015-04-13 07:10:25', '2015-04-13 07:10:25', '', 'home', '', 'inherit', 'open', 'open', '', '23-revision-v1', '', '', '2015-04-13 07:10:25', '2015-04-13 07:10:25', '', 23, 'http://localhost/geekandkh/?p=24', 0, 'revision', '', 0),
(25, 1, '2015-04-13 07:10:34', '2015-04-13 07:10:34', '', 'portfolio', '', 'publish', 'open', 'open', '', 'portfolio', '', '', '2015-04-13 07:10:34', '2015-04-13 07:10:34', '', 0, 'http://localhost/geekandkh/?page_id=25', 0, 'page', '', 0),
(26, 1, '2015-04-13 07:10:34', '2015-04-13 07:10:34', '', 'portfolio', '', 'inherit', 'open', 'open', '', '25-revision-v1', '', '', '2015-04-13 07:10:34', '2015-04-13 07:10:34', '', 25, 'http://localhost/geekandkh/?p=26', 0, 'revision', '', 0),
(27, 1, '2015-04-13 07:10:41', '2015-04-13 07:10:41', '', 'blog', '', 'publish', 'open', 'open', '', 'blog', '', '', '2015-04-13 07:10:41', '2015-04-13 07:10:41', '', 0, 'http://localhost/geekandkh/?page_id=27', 0, 'page', '', 0),
(28, 1, '2015-04-13 07:10:41', '2015-04-13 07:10:41', '', 'blog', '', 'inherit', 'open', 'open', '', '27-revision-v1', '', '', '2015-04-13 07:10:41', '2015-04-13 07:10:41', '', 27, 'http://localhost/geekandkh/?p=28', 0, 'revision', '', 0),
(29, 1, '2015-04-13 07:10:50', '2015-04-13 07:10:50', '', 'about us', '', 'publish', 'open', 'open', '', 'about-us', '', '', '2015-04-13 07:10:50', '2015-04-13 07:10:50', '', 0, 'http://localhost/geekandkh/?page_id=29', 0, 'page', '', 0),
(30, 1, '2015-04-13 07:10:50', '2015-04-13 07:10:50', '', 'about us', '', 'inherit', 'open', 'open', '', '29-revision-v1', '', '', '2015-04-13 07:10:50', '2015-04-13 07:10:50', '', 29, 'http://localhost/geekandkh/?p=30', 0, 'revision', '', 0),
(31, 1, '2015-04-13 07:11:03', '2015-04-13 07:11:03', '', 'contact', '', 'publish', 'open', 'open', '', 'contact', '', '', '2015-04-13 07:11:03', '2015-04-13 07:11:03', '', 0, 'http://localhost/geekandkh/?page_id=31', 0, 'page', '', 0),
(32, 1, '2015-04-13 07:11:03', '2015-04-13 07:11:03', '', 'contact', '', 'inherit', 'open', 'open', '', '31-revision-v1', '', '', '2015-04-13 07:11:03', '2015-04-13 07:11:03', '', 31, 'http://localhost/geekandkh/?p=32', 0, 'revision', '', 0),
(33, 1, '2015-04-13 08:31:26', '2015-04-13 08:31:26', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-04-13 08:31:26', '2015-04-13 08:31:26', '', 1, 'http://localhost/geekandkh/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2015-04-13 09:26:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-04-13 09:26:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/geekandkh/?page_id=34', 0, 'page', '', 0),
(35, 1, '2015-04-13 09:27:31', '2015-04-13 09:27:31', ' ', '', '', 'publish', 'open', 'open', '', '35', '', '', '2015-04-13 09:27:31', '2015-04-13 09:27:31', '', 0, 'http://localhost/geekandkh/?p=35', 5, 'nav_menu_item', '', 0),
(36, 1, '2015-04-13 09:27:31', '2015-04-13 09:27:31', ' ', '', '', 'publish', 'open', 'open', '', '36', '', '', '2015-04-13 09:27:31', '2015-04-13 09:27:31', '', 0, 'http://localhost/geekandkh/?p=36', 4, 'nav_menu_item', '', 0),
(37, 1, '2015-04-13 09:27:31', '2015-04-13 09:27:31', ' ', '', '', 'publish', 'open', 'open', '', '37', '', '', '2015-04-13 09:27:31', '2015-04-13 09:27:31', '', 0, 'http://localhost/geekandkh/?p=37', 3, 'nav_menu_item', '', 0),
(38, 1, '2015-04-13 09:27:31', '2015-04-13 09:27:31', ' ', '', '', 'publish', 'open', 'open', '', '38', '', '', '2015-04-13 09:27:31', '2015-04-13 09:27:31', '', 0, 'http://localhost/geekandkh/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2015-04-13 09:27:31', '2015-04-13 09:27:31', ' ', '', '', 'publish', 'open', 'open', '', '39', '', '', '2015-04-13 09:27:31', '2015-04-13 09:27:31', '', 0, 'http://localhost/geekandkh/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2015-04-13 10:28:03', '2015-04-13 10:28:03', ' ', '', '', 'publish', 'open', 'open', '', '40', '', '', '2015-04-13 10:28:03', '2015-04-13 10:28:03', '', 0, 'http://localhost/geekandkh/?p=40', 5, 'nav_menu_item', '', 0),
(41, 1, '2015-04-13 10:28:03', '2015-04-13 10:28:03', ' ', '', '', 'publish', 'open', 'open', '', '41', '', '', '2015-04-13 10:28:03', '2015-04-13 10:28:03', '', 0, 'http://localhost/geekandkh/?p=41', 4, 'nav_menu_item', '', 0),
(42, 1, '2015-04-13 10:28:03', '2015-04-13 10:28:03', ' ', '', '', 'publish', 'open', 'open', '', '42', '', '', '2015-04-13 10:28:03', '2015-04-13 10:28:03', '', 0, 'http://localhost/geekandkh/?p=42', 3, 'nav_menu_item', '', 0),
(43, 1, '2015-04-13 10:28:03', '2015-04-13 10:28:03', ' ', '', '', 'publish', 'open', 'open', '', '43', '', '', '2015-04-13 10:28:03', '2015-04-13 10:28:03', '', 0, 'http://localhost/geekandkh/?p=43', 2, 'nav_menu_item', '', 0),
(44, 1, '2015-04-13 10:28:03', '2015-04-13 10:28:03', ' ', '', '', 'publish', 'open', 'open', '', '44', '', '', '2015-04-13 10:28:03', '2015-04-13 10:28:03', '', 0, 'http://localhost/geekandkh/?p=44', 1, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
`term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'web design', 'web-design', 0),
(3, 'branding', 'branding', 0),
(4, 'business', 'business', 0),
(5, 'inspiration', 'inspiration', 0),
(6, 'margketing', 'margketing', 0),
(7, 'html', 'html', 0),
(8, 'css', 'css', 0),
(9, 'news', 'news', 0),
(10, 'mobile', 'mobile', 0),
(11, 'usability', 'usability', 0),
(12, 'web design', 'web-design', 0),
(13, 'html5', 'html5', 0),
(14, 'inspiration. photo', 'inspiration-photo', 0),
(15, 'css', 'css', 0),
(16, 'illustration', 'illustration', 0),
(17, 'design', 'design', 0),
(18, 'wordpress', 'wordpress', 0),
(19, 'business', 'business', 0),
(20, 'theme', 'theme', 0),
(21, 'joomla', 'joomla', 0),
(22, 'inspiration', 'inspiration', 0),
(23, 'photo', 'photo', 0),
(24, 'top-menu', 'top-menu', 0),
(25, 'footer-nav', 'footer-nav', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 5, 0),
(1, 7, 0),
(1, 8, 0),
(4, 10, 0),
(4, 11, 0),
(6, 7, 0),
(6, 8, 0),
(8, 2, 0),
(8, 9, 0),
(8, 11, 0),
(10, 3, 0),
(10, 4, 0),
(10, 5, 0),
(10, 7, 0),
(12, 5, 0),
(12, 6, 0),
(12, 10, 0),
(14, 5, 0),
(14, 6, 0),
(14, 10, 0),
(14, 11, 0),
(14, 12, 0),
(14, 15, 0),
(14, 16, 0),
(14, 17, 0),
(14, 18, 0),
(14, 19, 0),
(14, 20, 0),
(14, 21, 0),
(14, 22, 0),
(14, 23, 0),
(35, 24, 0),
(36, 24, 0),
(37, 24, 0),
(38, 24, 0),
(39, 24, 0),
(40, 25, 0),
(41, 25, 0),
(42, 25, 0),
(43, 25, 0),
(44, 25, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
`term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 1),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 4),
(6, 6, 'category', '', 0, 2),
(7, 7, 'category', '', 0, 3),
(8, 8, 'category', '', 0, 2),
(9, 9, 'category', '', 0, 1),
(10, 10, 'category', '', 0, 3),
(11, 11, 'category', '', 0, 3),
(12, 12, 'post_tag', '', 0, 1),
(13, 13, 'post_tag', '', 0, 0),
(14, 14, 'post_tag', '', 0, 0),
(15, 15, 'post_tag', '', 0, 1),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1),
(18, 18, 'post_tag', '', 0, 1),
(19, 19, 'post_tag', '', 0, 1),
(20, 20, 'post_tag', '', 0, 1),
(21, 21, 'post_tag', '', 0, 1),
(22, 22, 'post_tag', '', 0, 1),
(23, 23, 'post_tag', '', 0, 1),
(24, 24, 'nav_menu', '', 0, 5),
(25, 25, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
`umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_usermeta`
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
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:1:{s:64:"069454af27a1801f8583393ced7f5d561dacc2755fb833abfff5a8fbfbce91a3";a:4:{s:10:"expiration";i:1430114591;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36";s:5:"login";i:1428904991;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(16, 1, 'wp_user-settings', 'libraryContent=browse'),
(17, 1, 'wp_user-settings-time', '1428906544'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:8:"add-post";i:1;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '25');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
--

CREATE TABLE `wp_users` (
`ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BkgCFGPcIDzH4pnhoHt4wo2YbHNWQY0', 'admin', 'andrewkharsun@gmail.com', '', '2015-04-13 06:03:03', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wp_rp_tags`
--

CREATE TABLE `wp_wp_rp_tags` (
  `post_id` mediumint(9) DEFAULT NULL,
  `post_date` datetime NOT NULL,
  `label` varchar(32) NOT NULL,
  `weight` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `wp_wp_rp_tags`
--

INSERT INTO `wp_wp_rp_tags` (`post_id`, `post_date`, `label`, `weight`) VALUES
(12, '2015-04-13 06:24:50', 'C_inspiration', 5),
(12, '2015-04-13 06:24:50', 'C_margketing', 5),
(12, '2015-04-13 06:24:50', 'C_mobile', 5),
(12, '2015-04-13 06:24:50', 'A_wordpress', 2),
(12, '2015-04-13 06:24:50', 'A_parallax', 2),
(12, '2015-04-13 06:24:50', 'A_multipurpos', 2),
(12, '2015-04-13 06:24:50', 'A_theme', 2),
(12, '2015-04-13 06:24:50', 'A_premium', 2),
(12, '2015-04-13 06:24:50', 'A_agenc', 2),
(12, '2015-04-13 06:24:50', 'A_featur', 2),
(12, '2015-04-13 06:24:50', 'A_screen', 2),
(12, '2015-04-13 06:24:50', 'A_shop', 2),
(12, '2015-04-13 06:24:50', 'A_releas', 2),
(12, '2015-04-13 06:24:50', 'A_latest', 2),
(12, '2015-04-13 06:24:50', 'A_a', 2),
(12, '2015-04-13 06:24:50', 'A_full', 2),
(8, '2015-04-13 06:23:14', 'C_news', 5),
(8, '2015-04-13 06:23:14', 'C_usability', 5),
(8, '2015-04-13 06:23:14', 'C_web design', 5),
(8, '2015-04-13 06:23:14', 'A_home', 2),
(8, '2015-04-13 06:23:14', 'A_inspir', 2),
(8, '2015-04-13 06:23:14', 'A_space', 2),
(8, '2015-04-13 06:23:14', 'A_offic', 2),
(8, '2015-04-13 06:23:14', 'A_minimalist', 2),
(8, '2015-04-13 06:23:14', 'A_weekend', 2),
(8, '2015-04-13 06:23:14', 'A_18', 2),
(8, '2015-04-13 06:23:14', 'A_a', 2),
(8, '2015-04-13 06:23:14', 'A_work', 2),
(8, '2015-04-13 06:23:14', 'A_night', 2),
(8, '2015-04-13 06:23:14', 'A_great', 2),
(8, '2015-04-13 06:23:14', 'A_matter', 2),
(8, '2015-04-13 06:23:14', 'A_creat', 2),
(8, '2015-04-13 06:23:14', 'A_chanc', 2),
(8, '2015-04-13 06:23:14', 'A_doesnt', 2),
(6, '2015-04-13 06:22:50', 'C_css', 5),
(6, '2015-04-13 06:22:50', 'C_html', 5),
(6, '2015-04-13 06:22:50', 'A_design', 2),
(6, '2015-04-13 06:22:50', 'A_color', 2),
(6, '2015-04-13 06:22:50', 'A_web', 2),
(6, '2015-04-13 06:22:50', 'A_palett', 2),
(6, '2015-04-13 06:22:50', 'A_clean', 2),
(6, '2015-04-13 06:22:50', 'A_websit', 2),
(6, '2015-04-13 06:22:50', 'A_a', 2),
(6, '2015-04-13 06:22:50', 'A_fresh', 2),
(6, '2015-04-13 06:22:50', 'A_stand', 2),
(6, '2015-04-13 06:22:50', 'A_element', 2),
(6, '2015-04-13 06:22:50', 'A_15', 2),
(6, '2015-04-13 06:22:50', 'A_minim', 2),
(6, '2015-04-13 06:22:50', 'A_complex', 2),
(6, '2015-04-13 06:22:50', 'A_make', 2),
(6, '2015-04-13 06:22:50', 'A_tempt', 2),
(4, '2015-04-13 06:22:22', 'C_mobile', 5),
(4, '2015-04-13 06:22:22', 'C_usability', 5),
(4, '2015-04-13 06:22:22', 'A_googl', 2),
(4, '2015-04-13 06:22:22', 'A_typographi', 2),
(4, '2015-04-13 06:22:22', 'A_design', 2),
(4, '2015-04-13 06:22:22', 'A_web', 2),
(4, '2015-04-13 06:22:22', 'A_beauti', 2),
(4, '2015-04-13 06:22:22', 'A_servic', 2),
(4, '2015-04-13 06:22:22', 'A_font', 2),
(4, '2015-04-13 06:22:22', 'A_websit', 2),
(4, '2015-04-13 06:22:22', 'A_15', 2),
(4, '2015-04-13 06:22:22', 'A_import', 2),
(4, '2015-04-13 06:22:22', 'A_continu', 2),
(4, '2015-04-13 06:22:22', 'A_realiz', 2),
(1, '2015-04-13 06:03:03', 'C_css', 5),
(1, '2015-04-13 06:03:03', 'C_html', 5),
(1, '2015-04-13 06:03:03', 'C_inspiration', 5),
(1, '2015-04-13 06:03:03', 'A_wordpress', 2),
(1, '2015-04-13 06:03:03', 'A_blog', 2),
(1, '2015-04-13 06:03:03', 'A_world', 2),
(1, '2015-04-13 06:03:03', 'A_edit', 2),
(1, '2015-04-13 06:03:03', 'A_post', 2),
(1, '2015-04-13 06:03:03', 'A_delet', 2),
(1, '2015-04-13 06:03:03', 'A_start', 2),
(10, '2015-04-13 06:24:09', 'C_branding', 5),
(10, '2015-04-13 06:24:09', 'C_business', 5),
(10, '2015-04-13 06:24:09', 'C_html', 5),
(10, '2015-04-13 06:24:09', 'C_inspiration', 5),
(10, '2015-04-13 06:24:09', 'A_design', 2),
(10, '2015-04-13 06:24:09', 'A_world', 2),
(10, '2015-04-13 06:24:09', 'A_beginn', 2),
(10, '2015-04-13 06:24:09', 'A_tool', 2),
(10, '2015-04-13 06:24:09', 'A_develop', 2),
(10, '2015-04-13 06:24:09', 'A_resourc', 2),
(10, '2015-04-13 06:24:09', 'A_20', 2),
(10, '2015-04-13 06:24:09', 'A_skill', 2),
(10, '2015-04-13 06:24:09', 'A_basic', 2),
(10, '2015-04-13 06:24:09', 'A_feel', 2),
(10, '2015-04-13 06:24:09', 'A_start', 2),
(10, '2015-04-13 06:24:09', 'A_thrill', 2),
(10, '2015-04-13 06:24:09', 'A_intimid', 2),
(10, '2015-04-13 06:24:09', 'A_complet', 2),
(10, '2015-04-13 06:24:09', 'A_dont', 2),
(14, '2015-04-13 06:25:50', 'P_business', 10),
(14, '2015-04-13 06:25:50', 'P_css', 10),
(14, '2015-04-13 06:25:50', 'P_design', 10),
(14, '2015-04-13 06:25:50', 'P_illustration', 10),
(14, '2015-04-13 06:25:50', 'P_inspiration', 10),
(14, '2015-04-13 06:25:50', 'P_joomla', 10),
(14, '2015-04-13 06:25:50', 'P_photo', 10),
(14, '2015-04-13 06:25:50', 'P_theme', 10),
(14, '2015-04-13 06:25:50', 'P_web design', 10),
(14, '2015-04-13 06:25:50', 'P_wordpress', 10),
(14, '2015-04-13 06:25:50', 'C_inspiration', 5),
(14, '2015-04-13 06:25:50', 'C_margketing', 5),
(14, '2015-04-13 06:25:50', 'C_mobile', 5),
(14, '2015-04-13 06:25:50', 'C_usability', 5),
(14, '2015-04-13 06:25:50', 'A_diam', 2),
(14, '2015-04-13 06:25:50', 'A_ea', 2),
(14, '2015-04-13 06:25:50', 'A_dolor', 2),
(14, '2015-04-13 06:25:50', 'A_dui', 2),
(14, '2015-04-13 06:25:50', 'A_vero', 2),
(14, '2015-04-13 06:25:50', 'A_parallax', 2),
(14, '2015-04-13 06:25:50', 'A_erat', 2),
(14, '2015-04-13 06:25:50', 'A_quinta', 2),
(14, '2015-04-13 06:25:50', 'A_leger', 2),
(14, '2015-04-13 06:25:50', 'A_clari', 2),
(14, '2015-04-13 06:25:50', 'A_nam', 2),
(14, '2015-04-13 06:25:50', 'A_ii', 2),
(14, '2015-04-13 06:25:50', 'A_cum', 2),
(14, '2015-04-13 06:25:50', 'A_dome', 2),
(14, '2015-04-13 06:25:50', 'A_inspir', 2);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
 ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
 ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
 ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_popularpostsdata`
--
ALTER TABLE `wp_popularpostsdata`
 ADD PRIMARY KEY (`postid`);

--
-- Индексы таблицы `wp_popularpostssummary`
--
ALTER TABLE `wp_popularpostssummary`
 ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `ID_date` (`postid`,`view_date`), ADD KEY `postid` (`postid`), ADD KEY `last_viewed` (`last_viewed`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
 ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
 ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
 ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`), ADD KEY `name` (`name`);

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
 ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
 ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
 ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`);

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- Индексы таблицы `wp_wp_rp_tags`
--
ALTER TABLE `wp_wp_rp_tags`
 ADD KEY `post_id` (`post_id`), ADD KEY `label` (`label`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT для таблицы `wp_popularpostssummary`
--
ALTER TABLE `wp_popularpostssummary`
MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=189;
--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
