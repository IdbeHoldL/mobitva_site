<?php

/*====================================================
 Author: RooTM
------------------------------------------------------
 Web-site: http://weboss.net/
=====================================================*/

error_reporting(E_ALL ^ E_NOTICE);
@ini_set('display_errors', true);
@ini_set('html_errors', false);
@ini_set('error_reporting', E_ALL ^ E_NOTICE);

define('DATALIFEENGINE', true);
define('ROOT_DIR', dirname (__FILE__));
define('ENGINE_DIR', ROOT_DIR.'/engine');

@include (ENGINE_DIR . '/data/config.php');

  if (! $config['version_id']) die ( "Datalife Engine not installed. Please run DLE install.php" );

include ENGINE_DIR.'/classes/mysql.php';
include ENGINE_DIR.'/data/dbconfig.php';

  /*
	==========================================
	 Создание таблицы модуля
	==========================================
	*/

$tableSchema = array();

$tableSchema[] = "DROP TABLE IF EXISTS " . PREFIX . "_iChat";

$tableSchema[] = "CREATE TABLE " . PREFIX . "_iChat (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `author` varchar(40) NOT NULL default '',
  `email` varchar(40) NOT NULL default '',
  `message` text NOT NULL,
  `ip` varchar(16) NOT NULL default '',
  `user_group` smallint(5) NOT NULL default '4',
   PRIMARY KEY (`id`),
   FULLTEXT KEY `text` (`message`)
  ) TYPE=MyISAM /*!40101 DEFAULT CHARACTER SET " . COLLATE . " COLLATE " . COLLATE . "_general_ci */";


foreach($tableSchema as $table) {$db->query($table);}

echo <<<HTML
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Type" content="text/html; charset={$config['charset']}" />
<title>Установка iChat v.6.0</title>
</head>

<body>
<center>
В шаблон <strong>main.tpl</strong> в нужное место вставьте следующий код: <strong>{include file="engine/modules/iChat/run.php"}</strong><br />
<p><span style="color: #ff0000;"><strong>Установка "iChat v.6.0 by RooTM" завершена</strong></span></p>
<p>&nbsp;</p>
<strong>Сайт разработчика: <a href="http://weboss.net/" target="_blank"><span style="color: #ff0000;">http://weboss.net/</span></a></strong>
</center>
</body>

</html>
HTML;

?>