-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Мар 16 2013 г., 10:57
-- Версия сервера: 5.5.16
-- Версия PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mobitva_site`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dle_admin_logs`
--

CREATE TABLE IF NOT EXISTS `dle_admin_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL DEFAULT '',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(16) NOT NULL DEFAULT '',
  `action` int(11) NOT NULL DEFAULT '0',
  `extras` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `date` (`date`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=106 ;

--
-- Дамп данных таблицы `dle_admin_logs`
--

INSERT INTO `dle_admin_logs` (`id`, `name`, `date`, `ip`, `action`, `extras`) VALUES
(1, 'QEM', 1363172356, '127.0.0.1', 48, ''),
(2, 'QEM', 1363172461, '127.0.0.1', 70, 'nokiazavr/main.tpl'),
(3, 'QEM', 1363172505, '127.0.0.1', 70, 'nokiazavr/main.tpl'),
(4, 'QEM', 1363172732, '127.0.0.1', 70, 'nokiazavr/main.tpl'),
(5, 'QEM', 1363172770, '127.0.0.1', 70, 'nokiazavr/main.tpl'),
(6, 'QEM', 1363172990, '127.0.0.1', 59, 'redkie-veschi'),
(7, 'QEM', 1363173043, '127.0.0.1', 70, 'nokiazavr/static.tpl'),
(8, 'QEM', 1363173065, '127.0.0.1', 70, 'nokiazavr/static.tpl'),
(9, 'QEM', 1363173131, '127.0.0.1', 70, 'nokiazavr/main.tpl'),
(10, 'QEM', 1363173444, '127.0.0.1', 60, 'redkie-veschi'),
(11, 'QEM', 1363173458, '127.0.0.1', 60, 'redkie-veschi'),
(12, 'QEM', 1363173503, '127.0.0.1', 60, 'redkie-veschi'),
(13, 'QEM', 1363173552, '127.0.0.1', 60, 'redkie-veschi'),
(14, 'QEM', 1363173574, '127.0.0.1', 60, 'redkie-veschi'),
(15, 'QEM', 1363173586, '127.0.0.1', 60, 'redkie-veschi'),
(16, 'QEM', 1363173599, '127.0.0.1', 60, 'redkie-veschi'),
(17, 'QEM', 1363173639, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(18, 'QEM', 1363173723, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(19, 'QEM', 1363173802, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(20, 'QEM', 1363173885, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(21, 'QEM', 1363173910, '127.0.0.1', 60, 'redkie-veschi'),
(22, 'QEM', 1363173932, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(23, 'QEM', 1363174035, '127.0.0.1', 60, 'redkie-veschi'),
(24, 'QEM', 1363174102, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(25, 'QEM', 1363174303, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(26, 'QEM', 1363174415, '127.0.0.1', 60, 'redkie-veschi'),
(27, 'QEM', 1363174437, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(28, 'QEM', 1363174515, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(29, 'QEM', 1363174626, '127.0.0.1', 60, 'redkie-veschi'),
(30, 'QEM', 1363174645, '127.0.0.1', 60, 'redkie-veschi'),
(31, 'QEM', 1363174673, '127.0.0.1', 60, 'redkie-veschi'),
(32, 'QEM', 1363174683, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(33, 'QEM', 1363174897, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(34, 'QEM', 1363174935, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(35, 'QEM', 1363175198, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(36, 'QEM', 1363175238, '127.0.0.1', 60, 'redkie-veschi'),
(37, 'QEM', 1363175723, '127.0.0.1', 60, 'redkie-veschi'),
(38, 'QEM', 1363175900, '127.0.0.1', 60, 'redkie-veschi'),
(39, 'QEM', 1363190071, '127.0.0.1', 60, 'redkie-veschi'),
(40, 'QEM', 1363190119, '127.0.0.1', 60, 'redkie-veschi'),
(41, 'QEM', 1363190138, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(42, 'QEM', 1363190173, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(43, 'QEM', 1363190405, '127.0.0.1', 60, 'redkie-veschi'),
(44, 'QEM', 1363190455, '127.0.0.1', 60, 'redkie-veschi'),
(45, 'QEM', 1363190484, '127.0.0.1', 60, 'redkie-veschi'),
(46, 'QEM', 1363190495, '127.0.0.1', 60, 'redkie-veschi'),
(47, 'QEM', 1363190706, '127.0.0.1', 60, 'redkie-veschi'),
(48, 'QEM', 1363190718, '127.0.0.1', 60, 'redkie-veschi'),
(49, 'QEM', 1363190783, '127.0.0.1', 60, 'redkie-veschi'),
(50, 'QEM', 1363190821, '127.0.0.1', 60, 'redkie-veschi'),
(51, 'QEM', 1363190886, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(52, 'QEM', 1363190898, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(53, 'QEM', 1363190913, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(54, 'QEM', 1363190928, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(55, 'QEM', 1363190990, '127.0.0.1', 60, 'redkie-veschi'),
(56, 'QEM', 1363191010, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(57, 'QEM', 1363191025, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(58, 'QEM', 1363191040, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(59, 'QEM', 1363191090, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(60, 'QEM', 1363191104, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(61, 'QEM', 1363191173, '127.0.0.1', 64, 'QEM'),
(62, 'QEM', 1363258722, '127.0.0.1', 70, 'nokiazavr/fullstory.tpl'),
(63, 'QEM', 1363259086, '127.0.0.1', 70, 'nokiazavr/fullstory.tpl'),
(64, 'QEM', 1363259189, '127.0.0.1', 70, 'nokiazavr/fullstory.tpl'),
(65, 'QEM', 1363259250, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(66, 'QEM', 1363259293, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(67, 'QEM', 1363259310, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(68, 'QEM', 1363259724, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(69, 'QEM', 1363260053, '127.0.0.1', 70, 'Default/style/engine.css'),
(70, 'QEM', 1363260156, '127.0.0.1', 70, 'Default/style/engine.css'),
(71, 'QEM', 1363260228, '127.0.0.1', 70, 'Default/style/engine.css'),
(72, 'QEM', 1363260242, '127.0.0.1', 70, 'Default/style/engine.css'),
(73, 'QEM', 1363260609, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(74, 'QEM', 1363260673, '127.0.0.1', 70, 'nokiazavr/css/engine.css'),
(75, 'QEM', 1363283170, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(76, 'QEM', 1363283233, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(77, 'QEM', 1363283296, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(78, 'QEM', 1363283896, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(79, 'QEM', 1363283900, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(80, 'QEM', 1363283911, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(81, 'QEM', 1363283927, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(82, 'QEM', 1363283943, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(83, 'QEM', 1363283963, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(84, 'QEM', 1363364566, '127.0.0.1', 48, ''),
(85, 'QEM', 1363364707, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(86, 'QEM', 1363364739, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(87, 'QEM', 1363364752, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(88, 'QEM', 1363364784, '127.0.0.1', 70, 'nokiazavr/styles.css'),
(89, 'QEM', 1363365162, '127.0.0.1', 82, ''),
(90, 'QEM', 1363365308, '127.0.0.1', 48, ''),
(91, 'QEM', 1363365800, '127.0.0.1', 48, ''),
(92, 'QEM', 1363366917, '127.0.0.1', 70, 'nokiazavr/css/engine.css'),
(93, 'QEM', 1363367316, '127.0.0.1', 70, 'nokiazavr/userinfo.tpl'),
(94, 'QEM', 1363367366, '127.0.0.1', 70, 'nokiazavr/userinfo.tpl'),
(95, 'QEM', 1363367465, '127.0.0.1', 70, 'nokiazavr/userinfo.tpl'),
(96, 'QEM', 1363367507, '127.0.0.1', 70, 'nokiazavr/userinfo.tpl'),
(97, 'QEM', 1363367593, '127.0.0.1', 70, 'nokiazavr/userinfo.tpl'),
(98, 'QEM', 1363367661, '127.0.0.1', 70, 'nokiazavr/userinfo.tpl'),
(99, 'QEM', 1363368054, '127.0.0.1', 70, 'nokiazavr/userinfo.tpl'),
(100, 'QEM', 1363368373, '127.0.0.1', 82, ''),
(101, 'QEM', 1363368630, '127.0.0.1', 70, 'nokiazavr/addcomments.tpl'),
(102, 'QEM', 1363425910, '127.0.0.1', 60, 'redkie-veschi'),
(103, 'QEM', 1363426856, '127.0.0.1', 60, 'redkie-veschi'),
(104, 'QEM', 1363426901, '127.0.0.1', 60, 'redkie-veschi'),
(105, 'QEM', 1363427628, '127.0.0.1', 60, 'redkie-veschi');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_admin_sections`
--

CREATE TABLE IF NOT EXISTS `dle_admin_sections` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `allow_groups` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_banned`
--

CREATE TABLE IF NOT EXISTS `dle_banned` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `users_id` mediumint(8) NOT NULL DEFAULT '0',
  `descr` text NOT NULL,
  `date` varchar(15) NOT NULL DEFAULT '',
  `days` smallint(4) NOT NULL DEFAULT '0',
  `ip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_banners`
--

CREATE TABLE IF NOT EXISTS `dle_banners` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `banner_tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `code` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `short_place` tinyint(1) NOT NULL DEFAULT '0',
  `bstick` tinyint(1) NOT NULL DEFAULT '0',
  `main` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dle_banners`
--

INSERT INTO `dle_banners` (`id`, `banner_tag`, `descr`, `code`, `approve`, `short_place`, `bstick`, `main`, `category`, `grouplevel`, `start`, `end`) VALUES
(1, 'header', 'Верхний баннер', '<div align="center"><a href="http://loadpays.com/s.php?f=1373" target="_blank"><img src="http://mobitva.local/templates/Default/images/Banner468-100.gif" style="border: none;" alt="" /></a></div>', 1, 0, 0, 0, '0', 'all', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_category`
--

CREATE TABLE IF NOT EXISTS `dle_category` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `parentid` smallint(5) NOT NULL DEFAULT '0',
  `posi` smallint(5) NOT NULL DEFAULT '1',
  `name` varchar(50) NOT NULL DEFAULT '',
  `alt_name` varchar(50) NOT NULL DEFAULT '',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `skin` varchar(50) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `news_sort` varchar(10) NOT NULL DEFAULT '',
  `news_msort` varchar(4) NOT NULL DEFAULT '',
  `news_number` smallint(5) NOT NULL DEFAULT '0',
  `short_tpl` varchar(40) NOT NULL DEFAULT '',
  `full_tpl` varchar(40) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dle_category`
--

INSERT INTO `dle_category` (`id`, `parentid`, `posi`, `name`, `alt_name`, `icon`, `skin`, `descr`, `keywords`, `news_sort`, `news_msort`, `news_number`, `short_tpl`, `full_tpl`, `metatitle`) VALUES
(1, 0, 1, 'Информация', 'main', '', '', '', '', '', '', 0, '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_comments`
--

CREATE TABLE IF NOT EXISTS `dle_comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `autor` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(40) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `is_register` tinyint(1) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `post_id` (`post_id`),
  KEY `approve` (`approve`),
  FULLTEXT KEY `text` (`text`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `dle_comments`
--

INSERT INTO `dle_comments` (`id`, `post_id`, `user_id`, `date`, `autor`, `email`, `text`, `ip`, `is_register`, `approve`) VALUES
(4, 1, 1, '2013-03-15 17:17:25', 'QEM', 'qem-19@mail.ru', '<p>иди в шляпу <!--smile:no--><img style="vertical-align: middle;border: none;" alt="no" src="http://mobitva.local/engine/data/emoticons/no.gif" /><!--/smile-->, хрен</p>\n<p><br /><br /></p>\n\n\n\n&nbsp;\n\n\n\n\n\n\n&nbsp;', '127.0.0.1', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_complaint`
--

CREATE TABLE IF NOT EXISTS `dle_complaint` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL DEFAULT '0',
  `c_id` int(10) NOT NULL DEFAULT '0',
  `n_id` int(10) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `from` varchar(40) NOT NULL DEFAULT '',
  `to` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `c_id` (`c_id`),
  KEY `p_id` (`p_id`),
  KEY `n_id` (`n_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_email`
--

CREATE TABLE IF NOT EXISTS `dle_email` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `dle_email`
--

INSERT INTO `dle_email` (`id`, `name`, `template`) VALUES
(1, 'reg_mail', '{%username%},\r\n\r\nЭто письмо отправлено с сайта http://mobitva.local/\r\n\r\nВы получили это письмо, так как этот e-mail адрес был использован при регистрации на сайте. Если Вы не регистрировались на этом сайте, просто проигнорируйте это письмо и удалите его. Вы больше не получите такого письма.\r\n\r\n------------------------------------------------\r\nВаш логин и пароль на сайте:\r\n------------------------------------------------\r\n\r\nЛогин: {%username%}\r\nПароль: {%password%}\r\n\r\n------------------------------------------------\r\nИнструкция по активации\r\n------------------------------------------------\r\n\r\nБлагодарим Вас за регистрацию.\r\nМы требуем от Вас подтверждения Вашей регистрации, для проверки того, что введённый Вами e-mail адрес - реальный. Это требуется для защиты от нежелательных злоупотреблений и спама.\r\n\r\nДля активации Вашего аккаунта, зайдите по следующей ссылке:\r\n\r\n{%validationlink%}\r\n\r\nЕсли и при этих действиях ничего не получилось, возможно Ваш аккаунт удалён. В этом случае, обратитесь к Администратору, для разрешения проблемы.\r\n\r\nС уважением,\r\n\r\nАдминистрация http://mobitva.local/.'),
(2, 'feed_mail', '{%username_to%},\r\n\r\nДанное письмо вам отправил {%username_from%} с сайта http://mobitva.local/\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\n------------------------------------------------\r\nПомните, что администрация сайта не несет ответственности за содержание данного письма\r\n\r\nС уважением,\r\n\r\nАдминистрация http://mobitva.local/'),
(3, 'lost_mail', 'Уважаемый {%username%},\r\n\r\nВы сделали запрос на получение забытого пароля на сайте http://mobitva.local/ Однако в целях безопасности все пароли хранятся в зашифрованном виде, поэтому мы не можем сообщить вам ваш старый пароль, поэтому если вы хотите сгенерировать новый пароль, зайдите по следующей ссылке: \r\n\r\n{%lostlink%}\r\n\r\nЕсли вы не делали запроса для получения пароля, то просто удалите данное письмо, ваш пароль храниться в надежном месте, и недоступен посторонним лицам.\r\n\r\nIP адрес отправителя: {%ip%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://mobitva.local/'),
(4, 'new_news', 'Уважаемый администратор,\r\n\r\nуведомляем вас о том, что на сайт  http://mobitva.local/ была добавлена новость, которая в данный момент ожидает модерации.\r\n\r\n------------------------------------------------\r\nКраткая информация о новости\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nЗаголовок новости: {%title%}\r\nКатегория: {%category%}\r\nДата добавления: {%date%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://mobitva.local/'),
(5, 'comments', 'Уважаемый {%username_to%},\r\n\r\nуведомляем вас о том, что на сайт  http://mobitva.local/ был добавлен комментарий к новости, на которую вы были подписаны.\r\n\r\n------------------------------------------------\r\nКраткая информация о комментарии\r\n------------------------------------------------\r\n\r\nАвтор: {%username%}\r\nДата добавления: {%date%}\r\nСсылка на новость: {%link%}\r\n\r\n------------------------------------------------\r\nТекст комментария\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\n------------------------------------------------\r\n\r\nЕсли вы не хотите больше получать уведомлений о новых комментариях к данной новости, то проследуйте по данной ссылке: {%unsubscribe%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://mobitva.local/'),
(6, 'pm', 'Уважаемый {%username%},\r\n\r\nуведомляем вас о том, что на сайте  http://mobitva.local/ вам было отправлено персональное сообщение.\r\n\r\n------------------------------------------------\r\nКраткая информация о сообщении\r\n------------------------------------------------\r\n\r\nОтправитель: {%fromusername%}\r\nДата  получения: {%date%}\r\nЗаголовок: {%title%}\r\n\r\n------------------------------------------------\r\nТекст сообщения\r\n------------------------------------------------\r\n\r\n{%text%}\r\n\r\nС уважением,\r\n\r\nАдминистрация http://mobitva.local/');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_files`
--

CREATE TABLE IF NOT EXISTS `dle_files` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `name` varchar(250) NOT NULL DEFAULT '',
  `onserver` varchar(250) NOT NULL DEFAULT '',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `dcount` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_flood`
--

CREATE TABLE IF NOT EXISTS `dle_flood` (
  `f_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  `id` varchar(20) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`f_id`),
  KEY `ip` (`ip`),
  KEY `id` (`id`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_ignore_list`
--

CREATE TABLE IF NOT EXISTS `dle_ignore_list` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL DEFAULT '0',
  `user_from` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_images`
--

CREATE TABLE IF NOT EXISTS `dle_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `images` text NOT NULL,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `author` (`author`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_login_log`
--

CREATE TABLE IF NOT EXISTS `dle_login_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `count` smallint(6) NOT NULL DEFAULT '0',
  `date` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip` (`ip`),
  KEY `date` (`date`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_logs`
--

CREATE TABLE IF NOT EXISTS `dle_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) NOT NULL DEFAULT '0',
  `member` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `member` (`member`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_lostdb`
--

CREATE TABLE IF NOT EXISTS `dle_lostdb` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `lostname` mediumint(8) NOT NULL DEFAULT '0',
  `lostid` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `lostid` (`lostid`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_mail_log`
--

CREATE TABLE IF NOT EXISTS `dle_mail_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `mail` varchar(50) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `hash` (`hash`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_notice`
--

CREATE TABLE IF NOT EXISTS `dle_notice` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `notice` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_pm`
--

CREATE TABLE IF NOT EXISTS `dle_pm` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subj` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `user` mediumint(8) NOT NULL DEFAULT '0',
  `user_from` varchar(50) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `pm_read` char(3) NOT NULL DEFAULT '',
  `folder` varchar(10) NOT NULL DEFAULT '',
  `reply` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `folder` (`folder`),
  KEY `user` (`user`),
  KEY `user_from` (`user_from`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_poll`
--

CREATE TABLE IF NOT EXISTS `dle_poll` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `frage` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `votes` mediumint(8) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_poll_log`
--

CREATE TABLE IF NOT EXISTS `dle_poll_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `news_id` int(10) unsigned NOT NULL DEFAULT '0',
  `member` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`,`member`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post`
--

CREATE TABLE IF NOT EXISTS `dle_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `autor` varchar(40) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `short_story` text NOT NULL,
  `full_story` text NOT NULL,
  `xfields` text NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `descr` varchar(200) NOT NULL DEFAULT '',
  `keywords` text NOT NULL,
  `category` varchar(200) NOT NULL DEFAULT '0',
  `alt_name` varchar(200) NOT NULL DEFAULT '',
  `comm_num` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allow_rate` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `approve` tinyint(1) NOT NULL DEFAULT '0',
  `fixed` tinyint(1) NOT NULL DEFAULT '0',
  `rating` smallint(5) NOT NULL DEFAULT '0',
  `allow_br` tinyint(1) NOT NULL DEFAULT '1',
  `vote_num` smallint(5) unsigned NOT NULL DEFAULT '0',
  `news_read` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `votes` tinyint(1) NOT NULL DEFAULT '0',
  `access` varchar(150) NOT NULL DEFAULT '',
  `symbol` varchar(3) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '1',
  `editdate` varchar(15) NOT NULL DEFAULT '',
  `editor` varchar(40) NOT NULL DEFAULT '',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `view_edit` tinyint(1) NOT NULL DEFAULT '0',
  `tags` varchar(255) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `autor` (`autor`),
  KEY `alt_name` (`alt_name`),
  KEY `category` (`category`),
  KEY `approve` (`approve`),
  KEY `allow_main` (`allow_main`),
  KEY `date` (`date`),
  KEY `symbol` (`symbol`),
  KEY `comm_num` (`comm_num`),
  KEY `tags` (`tags`),
  FULLTEXT KEY `short_story` (`short_story`,`full_story`,`xfields`,`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `dle_post`
--

INSERT INTO `dle_post` (`id`, `autor`, `date`, `short_story`, `full_story`, `xfields`, `title`, `descr`, `keywords`, `category`, `alt_name`, `comm_num`, `allow_comm`, `allow_main`, `allow_rate`, `approve`, `fixed`, `rating`, `allow_br`, `vote_num`, `news_read`, `votes`, `access`, `symbol`, `flag`, `editdate`, `editor`, `reason`, `view_edit`, `tags`, `metatitle`) VALUES
(1, 'QEM', '2013-03-13 11:57:14', '<div align="center"><img src="http://mobitva.local/uploads/boxsmall.jpg" alt="" /></div>Добро пожаловать на демонстрационную страницу движка DataLife Engine. DataLife Engine это многопользовательский новостной движок, обладающий большими функциональными возможностями. Движок предназначен в первую очередь для создание новостных блогов и сайтов с большим информационным контекстом. Однако он имеет большое количество настроек, которые позволяют использовать его практически для любых целей. Движок может быть интегрирован практически в любой существующий дизайн, и не имеет никаких ограничений по созданию шаблонов для него. Еще одной ключевой особенностью DataLife Engine является низкая нагрузка на системные ресурсы, Даже при очень большой аудитории сайта нагрузка не сервер будет минимальной, и вы не будете испытывать каких-либо проблем с отображением информации. Движок оптимизирован под поисковые системы. Обо всех функциональных особенностях вы сможете прочитать на <a href="http://dle-news.ru/" target="_blank">нашей странице</a>.<br /><br />Обсуждение скрипта по всем вопросам ведется <a href="http://forum.dle-news.ru/index.php" target="_blank">здесь</a>. Так же там Вы сможете получить оперативную помощь.', '', '', 'Добро пожаловать', '', '', '1', 'post1', 1, 1, 1, 1, 1, 0, 0, 1, 0, 65, 0, '', '', 1, '', '', '', 0, 'по, новости', ''),
(2, 'QEM', '2013-03-13 11:56:54', 'Уважаемые вебмастера хотим для вас сделать небольшое дополнение. Прежде чем обратиться с каким-либо вопросом в службу поддержки скрипта, убедитесь что вы тщательно прочитали документацию по скрипту и не нашли там для вас необходимого ответа. Мы оставляем за собой право игнорировать вопросы, поступившие к нам от пользователей, использующих некоммерческую версию скрипта или не оплативших лицензию, включающую в себя службу технической поддержки. Вы можете приобрести один из двух типов лицензии на DataLife Engine по вашему желанию:<br /><br />- <b>Базовая лицензия.</b> Стоимость данной лицензии составляет: <span style="color:red">59$</span>. При приобретении данной лицензии вы также получаете возможность получения бесплатно новых версий скрипта в течении <b>одного года</b>.<br /><br />- <b>Расширенная лицензия.</b> Стоимость данной лицензии составляет: <span style="color:red">78$</span>. При приобретении данной лицензии вы получаете все что входит в базовую лицензию, а также дополнительно входит служба технической поддержки скрипта и разрешение на снятие копирайтов на скрипт с пользовательской части (видимой для обычных посетителей сайта).<br /><br /><b>Срок действия лицензии</b> составляет <span style="color:#FF0000">1 год</span>, в течении которого вы бесплатно будете получать все последующие версии скрипта и обновления, а в случае приобретения расширенной лицензии, и тех. поддержку. После окончания срока лицензии вы можете ее продлить, либо использовать пожизненно бесплатно актуальную на тот момент времени версию скрипта. В случае если вы захотите продлить лицензию для получения новых версий скрипта, то стоимость продления лицензии на год, составляет <span style="color:red">39$</span><br /><br /><b>Как оплатить скрипт вы можете прочитать на</b> <a href="http://dle-news.ru/price.html" target="_blank">http://dle-news.ru/price.html</a><br /><br />Помните что лицензия выдается только на один домен (проект) и не может использоваться на других сайтах, а также запрещена передача вашего файла лицензии третьим лицам.<br /><br /><b>С уважением,<br /><br />SoftNews Media Group</b>', '', '', 'Приобретение и оплата скрипта', '', '', '1', 'post2', 0, 1, 1, 1, 1, 0, 0, 1, 0, 2, 0, '', '', 1, '', '', '', 0, 'по, новости', ''),
(3, 'QEM', '2013-03-13 11:56:24', '<br /><div align="center"><a href="http://www.dletemplates.com/" target="_blank"><img src="http://mobitva.local/uploads/dlelogo.gif" alt="" /></a></div><br />Совместно с нашими партнерами <a href="http://www.dletemplates.com/" target="_blank">www.dletemplates.com</a> мы рады предложить вам  также высококачественные шаблоны, специально подготовленные для использования под управлением DataLife Engine. Предлагаемые шаблоны созданы на высоком качественном уровне опытными дизайнерами и программистами. Каждый из предлагаемых шаблонов полностью настроен и готов к использованию сразу же после его установки на сервер. Помимо того что все шаблоны уже подготовлены к использованию на портале, вы получаете также все исходные материалы, которые были использованы при создании шаблона.<br /><br />Если вы еще только раздумываете как будет выглядеть ваш сайт и желаете воспользоваться услугами профессионалов по вполне разумным ценам, то мы рекомендуем вам обратиться к нашим партнерам <a href="http://www.dletemplates.com/" target="_blank">www.dletemplates.com</a>, которые в сжатые строки создадут для вас персональный макет вашего сайта, а также подготовят его непосредственно к работе с движком. Также на сайте оказываются услуги по интеграции уже готового Вашего макета в движок.', '', '', 'Шаблоны для DataLife Engine', '', '', '1', 'post3', 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', '', 1, '', '', '', 0, 'по, шаблоны', ''),
(4, 'QEM', '2013-03-13 11:56:04', '<b>Техническая поддержка скрипта</b> осуществляется силами <a href="http://forum.dle-news.ru/index.php" target="_blank">форума поддержки</a>, а также по E-Mail. По мере поступления возникших у вас вопросов мы стараемся ответить на все ваши вопросы, но в связи с большим количеством посетителей, это не всегда является возможным. Поэтому введена дополнительная услуга платной поддержки скрипта. Стоимость данной услуги составляет дополнительно <!--colorstart:#FF0000--><span style="color:#FF0000"><!--/colorstart-->19 $<!--colorend--></span><!--/colorend--> одноразово на весь срок действия лицензии.<br /><br /><b>Услуги по дополнительной поддержки скрипта включают в себя:</b><br /><br />1. Приоритетное получение ответа на вопросы, которые задают пользователи впервые столкнувшиеся со скриптом и естественно не знающие всех нюансов работы скрипта. В компетенции службы поддержки находится только помощь только по непосредственным сбоям самого скрипта, в случае если причиной некорректной работы скрипта явился ваш шаблон, не соответствующий требованиям скрипта, то в поддержке вам может быть отказано.<br /><br />2. Также вы получаете возможность одноразовой установки скрипта вам на сервер, включая настройку его до полной работоспособности с учетом текущих настроек сервера (иногда нужно верно отключить поддержку ЧПУ, включение специальных директив для Русского Апача, для верной загрузки картинок и прочее...).<br /><br />3. Вы получаете консультационную поддержку по работе со структурой скрипта, например у вас есть желание добавить небольшие изменения в скрипт для более удобной работы для вас, вы сможете сэкономить время на поиске нужного куска кода просто спросив у нас. Вам будет предоставлена консультация где это копать и как вообще лучше реализовать поставленную задачу. (Внимание мы не пишем за вас дополнительные модули, а только помогаем вам лучше разобраться со структурой скрипта, поэтому всегда задавайте вопросы по существу, вопросы типа: "как мне сделать такую фишку" могут быть проигнорированы службой поддержки).<br /><br />4. Еще одна из часто возникающих проблем это некорректное обновление скрипта, например во время обновления произошел сбой сервера, часть новых данных была внесена в базу и настройки, часть нет, в итоге вы получаете нерабочий скрипт, со всеми вытекающими последствиями. В данном случае для вас будет проведена ручная коррекция поврежденной структуры базы данных.<br /><br />В случае если вы не являетесь подписчиком дополнительной службы поддержки, ваши вопросы могут быть проигнорированы и оставлены без ответа.<br /><br /><b>С уважением,<br /><br />SoftNews Media Group</b>', '', '', 'Осуществление технической поддержки скрипта', '', '', '1', 'post4', 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, '', '', 1, '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_post_log`
--

CREATE TABLE IF NOT EXISTS `dle_post_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `expires` varchar(15) NOT NULL DEFAULT '',
  `action` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `expires` (`expires`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_question`
--

CREATE TABLE IF NOT EXISTS `dle_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL DEFAULT '',
  `answer` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_rss`
--

CREATE TABLE IF NOT EXISTS `dle_rss` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `allow_main` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '0',
  `allow_comm` tinyint(1) NOT NULL DEFAULT '0',
  `text_type` tinyint(1) NOT NULL DEFAULT '0',
  `date` tinyint(1) NOT NULL DEFAULT '0',
  `search` text NOT NULL,
  `max_news` tinyint(3) NOT NULL DEFAULT '0',
  `cookie` text NOT NULL,
  `category` smallint(5) NOT NULL DEFAULT '0',
  `lastdate` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dle_rss`
--

INSERT INTO `dle_rss` (`id`, `url`, `description`, `allow_main`, `allow_rating`, `allow_comm`, `text_type`, `date`, `search`, `max_news`, `cookie`, `category`, `lastdate`) VALUES
(1, 'http://dle-news.ru/rss.xml', 'Официальный сайт DataLife Engine', 1, 1, 1, 1, 1, '<div id="news-id-{skip}">{get}</div><br /><br /></td>', 5, '', 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_rssinform`
--

CREATE TABLE IF NOT EXISTS `dle_rssinform` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `tag` varchar(40) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `category` varchar(200) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `template` varchar(40) NOT NULL DEFAULT '',
  `news_max` smallint(5) NOT NULL DEFAULT '0',
  `tmax` smallint(5) NOT NULL DEFAULT '0',
  `dmax` smallint(5) NOT NULL DEFAULT '0',
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `rss_date_format` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dle_rssinform`
--

INSERT INTO `dle_rssinform` (`id`, `tag`, `descr`, `category`, `url`, `template`, `news_max`, `tmax`, `dmax`, `approve`, `rss_date_format`) VALUES
(1, 'dle', 'Новости с Яндекса', '0', 'http://news.yandex.ru/index.rss', 'informer', 3, 0, 200, 1, 'j F Y H:i');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_sendlog`
--

CREATE TABLE IF NOT EXISTS `dle_sendlog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(20) NOT NULL DEFAULT '',
  `flag` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `date` (`date`),
  KEY `flag` (`flag`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_static`
--

CREATE TABLE IF NOT EXISTS `dle_static` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(255) NOT NULL DEFAULT '',
  `template` text NOT NULL,
  `allow_br` tinyint(1) NOT NULL DEFAULT '0',
  `allow_template` tinyint(1) NOT NULL DEFAULT '0',
  `grouplevel` varchar(100) NOT NULL DEFAULT 'all',
  `tpl` varchar(40) NOT NULL DEFAULT '',
  `metadescr` varchar(200) NOT NULL DEFAULT '',
  `metakeys` text NOT NULL,
  `views` mediumint(8) NOT NULL DEFAULT '0',
  `template_folder` varchar(50) NOT NULL DEFAULT '',
  `date` varchar(15) NOT NULL DEFAULT '',
  `metatitle` varchar(255) NOT NULL DEFAULT '',
  `allow_count` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  FULLTEXT KEY `template` (`template`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `dle_static`
--

INSERT INTO `dle_static` (`id`, `name`, `descr`, `template`, `allow_br`, `allow_template`, `grouplevel`, `tpl`, `metadescr`, `metakeys`, `views`, `template_folder`, `date`, `metatitle`, `allow_count`) VALUES
(1, 'dle-rules-page', 'Общие правила на сайте', '<b>Общие правила поведения на сайте:</b><br /><br />Начнем с того, что на сайте общаются сотни людей, разных религий и взглядов, и все они являются полноправными посетителями нашего сайта, поэтому если мы хотим чтобы это сообщество людей функционировало нам и необходимы правила. Мы настоятельно рекомендуем прочитать настоящие правила, это займет у вас всего минут пять, но сбережет нам и вам время и поможет сделать сайт более интересным и организованным.<br /><br />Начнем с того, что на нашем сайте нужно вести себя уважительно ко всем посетителям сайта. Не надо оскорблений по отношению к участникам, это всегда лишнее. Если есть претензии - обращайтесь к Админам или Модераторам (воспользуйтесь личными сообщениями). Оскорбление других посетителей считается у нас одним из самых тяжких нарушений и строго наказывается администрацией. <b>У нас строго запрещен расизм, религиозные и политические высказывания.</b> Заранее благодарим вас за понимание и за желание сделать наш сайт более вежливым и дружелюбным.<br /><br /><b>На сайте строго запрещено:</b> <br /><br />- сообщения, не относящиеся к содержанию статьи или к контексту обсуждения<br />- оскорбление и угрозы в адрес посетителей сайта<br />- в комментариях запрещаются выражения, содержащие ненормативную лексику, унижающие человеческое достоинство, разжигающие межнациональную рознь<br />- спам, а также реклама любых товаров и услуг, иных ресурсов, СМИ или событий, не относящихся к контексту обсуждения статьи<br /><br />Давайте будем уважать друг друга и сайт, на который Вы и другие читатели приходят пообщаться и высказать свои мысли. Администрация сайта оставляет за собой право удалять комментарии или часть комментариев, если они не соответствуют данным требованиям.<br /><br />При нарушении правил вам может быть дано <b>предупреждение</b>. В некоторых случаях может быть дан бан <b>без предупреждений</b>. По вопросам снятия бана писать администратору.<br /><br /><b>Оскорбление</b> администраторов или модераторов также караются <b>баном</b> - уважайте чужой труд.<br /><br /><div align="center">{ACCEPT-DECLINE}</div>', 1, 1, 'all', '', 'Общие правила', 'Общие правила', 0, '', '1363172234', '', 1),
(2, 'redkie-veschi', 'Древний сет', '<table style=\\"margin-left: auto; margin-right: auto;\\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div class=\\"main_redkie\\">\r\n<div class=\\"title_redkie\\">Эсток</div>\r\n<div class=\\"bg_redkie\\">\r\n<div class=\\"block_img_redkie\\">\r\n<div class=\\"img_redkie\\"><img src=\\"templates/nokiazavr/images/redkie/104.png\\" alt=\\"\\" /></div>\r\n</div>\r\n<div class=\\"peregorodka\\"></div>\r\n<div class=\\"stat_redkie\\">\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td width=\\"75\\">Точность:</td>\r\n<td><img src=\\"templates/nokiazavr/images/redkie/179.png\\" alt=\\"\\" width=\\"15\\" height=\\"15\\" /></td>\r\n<td><strong>+25</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\\"75\\">Оглушение:</td>\r\n<td><img src=\\"templates/nokiazavr/images/redkie/183.png\\" alt=\\"\\" width=\\"15\\" height=\\"15\\" /></td>\r\n<td><strong>-28</strong></td>\r\n</tr>\r\n<tr>\r\n<td width=\\"75\\">Уворот:</td>\r\n<td><img src=\\"templates/nokiazavr/images/redkie/184.png\\" alt=\\"\\" width=\\"15\\" height=\\"15\\" /></td>\r\n<td><strong>-8</strong></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class=\\"peregorodka\\"></div>\r\n<div class=\\"effect_redkie\\">Проникающий урон <strong> +10</strong></div>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n<tr class=\\"tr_redkie\\">\r\n<td class=\\"td_redkie\\">\r\n<div class=\\"main_redkie\\">\r\n<div class=\\"title_redkie\\">Древняя Кираса</div>\r\n<div class=\\"bg_redkie\\">\r\n<div class=\\"block_img_redkie\\">\r\n<div class=\\"img_redkie\\"><img src=\\"templates/nokiazavr/images/redkie/41.png\\" alt=\\"\\" /></div>\r\n</div>\r\n<div class=\\"peregorodka\\"></div>\r\n<div class=\\"stat_redkie\\"></div>\r\n<div class=\\"peregorodka\\"></div>\r\n<div class=\\"effect_redkie\\"></div>\r\n</div>\r\n</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>&nbsp;</p>\r\n<!--?php $i=1; echo $i; ?-->', 2, 1, 'all', '', 'ololo', 'сдарова', 70, '', '1363172990', '', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_static_files`
--

CREATE TABLE IF NOT EXISTS `dle_static_files` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `static_id` mediumint(8) NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL DEFAULT '',
  `date` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `onserver` varchar(255) NOT NULL DEFAULT '',
  `dcount` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `static_id` (`static_id`),
  KEY `onserver` (`onserver`),
  KEY `author` (`author`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_subscribe`
--

CREATE TABLE IF NOT EXISTS `dle_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_tags`
--

CREATE TABLE IF NOT EXISTS `dle_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `news_id` (`news_id`),
  KEY `tag` (`tag`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `dle_tags`
--

INSERT INTO `dle_tags` (`id`, `news_id`, `tag`) VALUES
(1, 1, 'по'),
(2, 2, 'по'),
(3, 3, 'по'),
(4, 1, 'новости'),
(5, 2, 'новости'),
(6, 3, 'шаблоны');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_usergroups`
--

CREATE TABLE IF NOT EXISTS `dle_usergroups` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(32) NOT NULL DEFAULT '',
  `allow_cats` text NOT NULL,
  `allow_adds` tinyint(1) NOT NULL DEFAULT '1',
  `cat_add` text NOT NULL,
  `allow_admin` tinyint(1) NOT NULL DEFAULT '0',
  `allow_addc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_editc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_delc` tinyint(1) NOT NULL DEFAULT '0',
  `edit_allc` tinyint(1) NOT NULL DEFAULT '0',
  `del_allc` tinyint(1) NOT NULL DEFAULT '0',
  `moderation` tinyint(1) NOT NULL DEFAULT '0',
  `allow_all_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_edit` tinyint(1) NOT NULL DEFAULT '0',
  `allow_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm` smallint(5) NOT NULL DEFAULT '0',
  `max_foto` varchar(10) NOT NULL DEFAULT '',
  `allow_files` tinyint(1) NOT NULL DEFAULT '0',
  `allow_hide` tinyint(1) NOT NULL DEFAULT '1',
  `allow_short` tinyint(1) NOT NULL DEFAULT '0',
  `time_limit` tinyint(1) NOT NULL DEFAULT '0',
  `rid` smallint(5) NOT NULL DEFAULT '0',
  `allow_fixed` tinyint(1) NOT NULL DEFAULT '0',
  `allow_feed` tinyint(1) NOT NULL DEFAULT '1',
  `allow_search` tinyint(1) NOT NULL DEFAULT '1',
  `allow_poll` tinyint(1) NOT NULL DEFAULT '1',
  `allow_main` tinyint(1) NOT NULL DEFAULT '1',
  `captcha` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(200) NOT NULL DEFAULT '',
  `allow_modc` tinyint(1) NOT NULL DEFAULT '0',
  `allow_rating` tinyint(1) NOT NULL DEFAULT '1',
  `allow_offline` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_file_upload` tinyint(1) NOT NULL DEFAULT '0',
  `allow_signature` tinyint(1) NOT NULL DEFAULT '0',
  `allow_url` tinyint(1) NOT NULL DEFAULT '1',
  `news_sec_code` tinyint(1) NOT NULL DEFAULT '1',
  `allow_image` tinyint(1) NOT NULL DEFAULT '0',
  `max_signature` smallint(6) NOT NULL DEFAULT '0',
  `max_info` smallint(6) NOT NULL DEFAULT '0',
  `admin_addnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editnews` tinyint(1) NOT NULL DEFAULT '0',
  `admin_comments` tinyint(1) NOT NULL DEFAULT '0',
  `admin_categories` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editusers` tinyint(1) NOT NULL DEFAULT '0',
  `admin_wordfilter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_xfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_userfields` tinyint(1) NOT NULL DEFAULT '0',
  `admin_static` tinyint(1) NOT NULL DEFAULT '0',
  `admin_editvote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `admin_blockip` tinyint(1) NOT NULL DEFAULT '0',
  `admin_banners` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rss` tinyint(1) NOT NULL DEFAULT '0',
  `admin_iptools` tinyint(1) NOT NULL DEFAULT '0',
  `admin_rssinform` tinyint(1) NOT NULL DEFAULT '0',
  `admin_googlemap` tinyint(1) NOT NULL DEFAULT '0',
  `allow_html` tinyint(1) NOT NULL DEFAULT '1',
  `group_prefix` text NOT NULL,
  `group_suffix` text NOT NULL,
  `allow_subscribe` tinyint(1) NOT NULL DEFAULT '0',
  `allow_image_size` tinyint(1) NOT NULL DEFAULT '0',
  `cat_allow_addnews` text NOT NULL,
  `flood_news` smallint(6) NOT NULL DEFAULT '0',
  `max_day_news` smallint(6) NOT NULL DEFAULT '0',
  `force_leech` tinyint(1) NOT NULL DEFAULT '0',
  `edit_limit` smallint(6) NOT NULL DEFAULT '0',
  `captcha_pm` tinyint(1) NOT NULL DEFAULT '0',
  `max_pm_day` smallint(6) NOT NULL DEFAULT '0',
  `max_mail_day` smallint(6) NOT NULL DEFAULT '0',
  `admin_tagscloud` tinyint(1) NOT NULL DEFAULT '0',
  `allow_vote` tinyint(1) NOT NULL DEFAULT '0',
  `admin_complaint` tinyint(1) NOT NULL DEFAULT '0',
  `news_question` tinyint(1) NOT NULL DEFAULT '0',
  `comments_question` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `dle_usergroups`
--

INSERT INTO `dle_usergroups` (`id`, `group_name`, `allow_cats`, `allow_adds`, `cat_add`, `allow_admin`, `allow_addc`, `allow_editc`, `allow_delc`, `edit_allc`, `del_allc`, `moderation`, `allow_all_edit`, `allow_edit`, `allow_pm`, `max_pm`, `max_foto`, `allow_files`, `allow_hide`, `allow_short`, `time_limit`, `rid`, `allow_fixed`, `allow_feed`, `allow_search`, `allow_poll`, `allow_main`, `captcha`, `icon`, `allow_modc`, `allow_rating`, `allow_offline`, `allow_image_upload`, `allow_file_upload`, `allow_signature`, `allow_url`, `news_sec_code`, `allow_image`, `max_signature`, `max_info`, `admin_addnews`, `admin_editnews`, `admin_comments`, `admin_categories`, `admin_editusers`, `admin_wordfilter`, `admin_xfields`, `admin_userfields`, `admin_static`, `admin_editvote`, `admin_newsletter`, `admin_blockip`, `admin_banners`, `admin_rss`, `admin_iptools`, `admin_rssinform`, `admin_googlemap`, `allow_html`, `group_prefix`, `group_suffix`, `allow_subscribe`, `allow_image_size`, `cat_allow_addnews`, `flood_news`, `max_day_news`, `force_leech`, `edit_limit`, `captcha_pm`, `max_pm_day`, `max_mail_day`, `admin_tagscloud`, `allow_vote`, `admin_complaint`, `news_question`, `comments_question`) VALUES
(1, 'Администраторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_1.gif', 0, 1, 1, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '<b><span style="color:red">', '</span></b>', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0),
(2, 'Главные редакторы', 'all', 1, 'all', 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 50, '101', 1, 1, 1, 0, 2, 1, 1, 1, 1, 1, 0, '{THEME}/images/icon_2.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(3, 'Журналисты', 'all', 1, 'all', 1, 1, 1, 1, 0, 0, 1, 0, 1, 1, 50, '101', 1, 1, 1, 0, 3, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_3.gif', 0, 1, 0, 1, 1, 1, 1, 0, 1, 500, 1000, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 1, 'all', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0),
(4, 'Посетители', 'all', 1, 'all', 0, 1, 1, 1, 0, 0, 0, 0, 0, 1, 20, '101', 1, 1, 1, 0, 4, 0, 1, 1, 1, 1, 0, '{THEME}/images/icon_4.gif', 0, 1, 0, 1, 0, 1, 1, 1, 0, 500, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '', '', 1, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0),
(5, 'Гости', 'all', 0, 'all', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0', 1, 0, 1, 0, 5, 0, 1, 1, 1, 0, 1, '{THEME}/images/icon_5.gif', 0, 1, 0, 0, 0, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 'all', 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `dle_users`
--

CREATE TABLE IF NOT EXISTS `dle_users` (
  `email` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `user_id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `news_num` smallint(6) NOT NULL DEFAULT '0',
  `comm_num` mediumint(8) NOT NULL DEFAULT '0',
  `user_group` smallint(5) NOT NULL DEFAULT '4',
  `lastdate` varchar(20) DEFAULT NULL,
  `reg_date` varchar(20) DEFAULT NULL,
  `banned` varchar(5) NOT NULL DEFAULT '',
  `allow_mail` tinyint(1) NOT NULL DEFAULT '1',
  `info` text NOT NULL,
  `signature` text NOT NULL,
  `foto` varchar(30) NOT NULL DEFAULT '',
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `land` varchar(100) NOT NULL DEFAULT '',
  `icq` varchar(20) NOT NULL DEFAULT '',
  `favorites` text NOT NULL,
  `pm_all` smallint(5) NOT NULL DEFAULT '0',
  `pm_unread` smallint(5) NOT NULL DEFAULT '0',
  `time_limit` varchar(20) NOT NULL DEFAULT '',
  `xfields` text NOT NULL,
  `allowed_ip` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(32) NOT NULL DEFAULT '',
  `logged_ip` varchar(16) NOT NULL DEFAULT '',
  `restricted` tinyint(1) NOT NULL DEFAULT '0',
  `restricted_days` smallint(4) NOT NULL DEFAULT '0',
  `restricted_date` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dle_users`
--

INSERT INTO `dle_users` (`email`, `password`, `name`, `user_id`, `news_num`, `comm_num`, `user_group`, `lastdate`, `reg_date`, `banned`, `allow_mail`, `info`, `signature`, `foto`, `fullname`, `land`, `icq`, `favorites`, `pm_all`, `pm_unread`, `time_limit`, `xfields`, `allowed_ip`, `hash`, `logged_ip`, `restricted`, `restricted_days`, `restricted_date`) VALUES
('qem-19@mail.ru', 'f2de743528a6e36e171667e19028cbc1', 'QEM', 1, 4, 1, 1, '1363367525', '1363172234', '', 1, '', '', 'foto_1.jpg', '', '', '', '', 0, 0, '', '', '', '', '127.0.0.1', 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_views`
--

CREATE TABLE IF NOT EXISTS `dle_views` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `news_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `dle_vote`
--

CREATE TABLE IF NOT EXISTS `dle_vote` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `category` text NOT NULL,
  `vote_num` mediumint(8) NOT NULL DEFAULT '0',
  `date` varchar(25) NOT NULL DEFAULT '0',
  `title` varchar(200) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `approve` tinyint(1) NOT NULL DEFAULT '1',
  `start` varchar(15) NOT NULL DEFAULT '',
  `end` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `approve` (`approve`)
) ENGINE=MyISAM  DEFAULT CHARSET=cp1251 AUTO_INCREMENT=2 ;

--
-- Дамп данных таблицы `dle_vote`
--

INSERT INTO `dle_vote` (`id`, `category`, `vote_num`, `date`, `title`, `body`, `approve`, `start`, `end`) VALUES
(1, 'all', 0, '2013-03-13 11:57:14', 'Оцените работу движка', 'Лучший из новостных<br />Неплохой движок<br />Устраивает ... но ...<br />Встречал и получше<br />Совсем не понравился', 1, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `dle_vote_result`
--

CREATE TABLE IF NOT EXISTS `dle_vote_result` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ip` varchar(16) NOT NULL DEFAULT '',
  `name` varchar(40) NOT NULL DEFAULT '',
  `vote_id` mediumint(8) NOT NULL DEFAULT '0',
  `answer` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `answer` (`answer`),
  KEY `vote_id` (`vote_id`),
  KEY `ip` (`ip`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
