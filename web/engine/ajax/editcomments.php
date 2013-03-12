<?php
/*
=====================================================
 DataLife Engine - by SoftNews Media Group 
-----------------------------------------------------
 http://dle-news.ru/
-----------------------------------------------------
 Copyright (c) 2004,2011 SoftNews Media Group
=====================================================
 ������ ��� ������� ���������� �������
=====================================================
 ����: editcomments.php
-----------------------------------------------------
 ����������: AJAX ��� ��������������
=====================================================
*/
@session_start();
@error_reporting ( E_ALL ^ E_WARNING ^ E_NOTICE );
@ini_set ( 'display_errors', true );
@ini_set ( 'html_errors', false );
@ini_set ( 'error_reporting', E_ALL ^ E_WARNING ^ E_NOTICE );

define( 'DATALIFEENGINE', true );
define( 'ROOT_DIR', substr( dirname(  __FILE__ ), 0, -12 ) );
define( 'ENGINE_DIR', ROOT_DIR . '/engine' );

include ENGINE_DIR . '/data/config.php';

if( $config['http_home_url'] == "" ) {
	
	$config['http_home_url'] = explode( "engine/ajax/editcomments.php", $_SERVER['PHP_SELF'] );
	$config['http_home_url'] = reset( $config['http_home_url'] );
	$config['http_home_url'] = "http://" . $_SERVER['HTTP_HOST'] . $config['http_home_url'];

}

require_once ENGINE_DIR . '/classes/mysql.php';
require_once ENGINE_DIR . '/data/dbconfig.php';
require_once ENGINE_DIR . '/modules/functions.php';

$_COOKIE['dle_skin'] = trim(totranslit( $_COOKIE['dle_skin'], false, false ));
$_TIME = time () + ($config['date_adjust'] * 60);

if( $_COOKIE['dle_skin'] ) {
	if( @is_dir( ROOT_DIR . '/templates/' . $_COOKIE['dle_skin'] ) ) {
		$config['skin'] = $_COOKIE['dle_skin'];
	}
}

if( $config["lang_" . $config['skin']] ) {
	
	if ( file_exists( ROOT_DIR . '/language/' . $config["lang_" . $config['skin']] . '/website.lng' ) ) {
		@include_once (ROOT_DIR . '/language/' . $config["lang_" . $config['skin']] . '/website.lng');
	} else die("Language file not found");

} else {
	
	include_once ROOT_DIR . '/language/' . $config['langs'] . '/website.lng';

}

$config['charset'] = ($lang['charset'] != '') ? $lang['charset'] : $config['charset'];

require_once ENGINE_DIR . '/classes/parse.class.php';
require_once ENGINE_DIR . '/modules/sitelogin.php';


$area = totranslit($_REQUEST['area'], true, false);

if ( !$area) $area = "news";

$allowed_areas = array(

					'news' => array (
									'comments_table' => 'comments',
									),

					'ajax' => array (
									'comments_table' => 'comments',
									),

					'lastcomments' => array (
									'comments_table' => 'comments',
									),

				);

if (! is_array($allowed_areas[$area]) ) die( "error" );

$parse = new ParseFilter( );
$parse->safe_mode = true;

if( ! $is_logged ) die( "error" );

$id = intval( $_REQUEST['id'] );

if( ! $id ) die( "error" );

//################# ����������� ����� �������������
$user_group = get_vars( "usergroup" );

if( ! $user_group ) {
	$user_group = array ();
	
	$db->query( "SELECT * FROM " . USERPREFIX . "_usergroups ORDER BY id ASC" );
	
	while ( $row = $db->get_row() ) {
		
		$user_group[$row['id']] = array ();
		
		foreach ( $row as $key => $value ) {
			$user_group[$row['id']][$key] = stripslashes($value);
		}
	
	}
	set_vars( "usergroup", $user_group );
	$db->free();
}

$parse->allow_url = $user_group[$member_id['user_group']]['allow_url'];
$parse->allow_image = $user_group[$member_id['user_group']]['allow_image'];

if( $_REQUEST['action'] == "edit" ) {
	$row = $db->super_query( "SELECT id, date, autor, text, is_register FROM " . PREFIX . "_{$allowed_areas[$area]['comments_table']} where id = '$id'" );
	
	if( $id != $row['id'] ) die( "error" );

	$row['date'] = strtotime( $row['date'] );	
	$have_perm = 0;
	
	if( $is_logged and (($member_id['name'] == $row['autor'] and $row['is_register'] and $user_group[$member_id['user_group']]['allow_editc']) or $user_group[$member_id['user_group']]['edit_allc']) ) {
		$have_perm = 1;
	}

	if ( $user_group[$member_id['user_group']]['edit_limit'] AND (($row['date'] + ($user_group[$member_id['user_group']]['edit_limit'] * 60)) < $_TIME) ) {
		$have_perm = 0;
	}
	
	if( ! $have_perm ) die( "error" );
	
	if( $config['allow_comments_wysiwyg'] != "yes" ) {
		
		include_once ENGINE_DIR . '/ajax/bbcode.php';
		
		$comm_txt = $parse->decodeBBCodes( $row['text'], false );
	
	} else {
		
		$comm_txt = $parse->decodeBBCodes( $row['text'], true, "yes" );
		
		if( $user_group[$member_id['user_group']]['allow_url'] ) $link_icon = "link,dle_leech,separator,";
		else $link_icon = "";
		if( $user_group[$member_id['user_group']]['allow_image'] ) $link_icon .= "image,";
		
		$bb_code = <<<HTML

<script type="text/javascript">
	$('#dleeditcomments{$id}').tinymce({
		script_url : '{$config['http_home_url']}engine/editor/jscripts/tiny_mce/tiny_mce.js',
		theme : "advanced",
		skin : "cirkuit",
		language : "{$lang['wysiwyg_language']}",
		width : "99%",
		height : "220",
		plugins : "safari,emotions,inlinepopups",
		convert_urls : false,
		force_p_newlines : false,
		force_br_newlines : true,
		dialog_type : 'window',
		extended_valid_elements : "div[align|class|style|id|title]",

		// Theme options
		theme_advanced_buttons1 : "bold,italic,underline,separator,strikethrough,justifyleft,justifycenter,justifyright, justifyfull,bullist,numlist,separator,{$link_icon}emotions,dle_quote,dle_hide",
		theme_advanced_buttons2 : "",
		theme_advanced_buttons3 : "",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",


		// Example content CSS (should be your site CSS)
		content_css : "{$config['http_home_url']}engine/editor/css/content.css",

		setup : function(ed) {
		        // Add a custom button
			ed.addButton('dle_quote', {
			title : '{$lang['bb_t_quote']}',
			image : '{$config['http_home_url']}engine/editor/jscripts/tiny_mce/themes/advanced/img/dle_quote.gif',
			onclick : function() {
				// Add you own code to execute something on click
				ed.execCommand('mceReplaceContent',false,'[quote]{\$selection}[/quote]');
			}
	           });

			ed.addButton('dle_hide', {
			title : '{$lang['bb_t_hide']}',
			image : '{$config['http_home_url']}engine/editor/jscripts/tiny_mce/themes/advanced/img/dle_hide.gif',
			onclick : function() {
				// Add you own code to execute something on click
				ed.execCommand('mceReplaceContent',false,'[hide]{\$selection}[/hide]');
			}
	           });

			ed.addButton('dle_leech', {
			title : '{$lang['bb_t_leech']}',
			image : '{$config['http_home_url']}engine/editor/jscripts/tiny_mce/themes/advanced/img/dle_leech.gif',
			onclick : function() {
				ed.execCommand('mceReplaceContent',false,"[leech=http://]{\$selection}[/leech]");
			}
	           });

   		 }


	});
</script>
HTML;
	
	}
	
	$buffer = <<<HTML
<table width="100%" align="center">
<tbody><tr>
<td width="250" valign="top">
<div class="smilesbox" id="smilesbox">
<table align="center">
<tbody>
<tr>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':girl_ang:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/girl_ang.gif" alt="O:-)" title="O:-)"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':smile:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/smile.gif" alt=":-)" title=":-)"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':sad:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/sad.gif" alt=":-(" title=":-("></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':wink:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/wink.gif" alt=";-)" title=";-)"></td></tr>
<tr><td align="center" width="39" height="39"><img onclick="dle_smiley(':dash:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/dash.gif" alt="DASH" title="DASH"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':crazy:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/crazy.gif" alt="Crazy" title="Crazy"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':gamer:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/gamer.gif" alt="Gamer" title="Gamer"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':bomb:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/bomb.gif" alt="Bomb" title="Bomb"></td></tr>
<tr><td align="center" width="39" height="39"><img onclick="dle_smiley(':nea:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/nea.gif" alt="Nea" title="Nea"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':russian_:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/russian_.gif" alt="Russian" title="Russian"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':ireful:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/ireful.gif" alt="ireful" title="ireful"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':lol:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/lol.gif" alt="Lol" title="Lol"></td></tr>
<tr><td align="center" width="39" height="39"><img onclick="dle_smiley(':morning:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/morning.gif" alt="Morning" title="Morning"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':pardon:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/pardon.gif" alt="Pardon" title="Pardon"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':shout:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/shout.gif" alt="Shout" title="Shout"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':drinks:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/drinks.gif" alt="BEER" title="BEER"></td></tr>
<tr><td align="center" width="39" height="39"><img onclick="dle_smiley(':sarcasti:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/sarcasti.gif" alt="Sarcasti" title="Sarcasti"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':negative:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/negative.gif" alt="Negative" title="Negative"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':i_am_so_:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/i_am_so_.gif" alt="I am so" title="I am so"></td>
<td align="center" width="39" height="39"><img onclick="dle_smiley(':hang:'); return false;" style="cursor: pointer;" src="/engine/data/emoticons/hang.gif" alt="HANG" title="HANG"></td></tr>
</tbody>
</table>
</div>
</td>
<td valign="top">
<div class="editorbox">
<table cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td>
{$bb_code}
</tr>
</tbody>
</table>
</span>
<span style="border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; position: absolute; display: none; " id="other_buttons_top_message" class="other_bar">
<table cellpadding="0" cellspacing="0" style="background: url({THEME}/images/editor/background_silver.jpg);">
<tbody>
<tr></tr>
</tbody>
</table>
</span>
</div>
</div>
<textarea name="dleeditcomments{$id}" id="dleeditcomments{$id}" onclick="setNewField(this.name, document.getElementById( 'dlemasscomments' ) )" style="height: 164px; max-height: 220px;width: 450px; max-width: 450px;" class="main_editor">{$comm_txt}</textarea>
<div class="resizeBar" id="resize_message">
</div>
</td>
</tr>
</tbody>
</table>
</div>
</td>
</tr>
</tbody>
</table>
<br>
<div align="right" style="width:99%;padding-top:5px;"><input class=bbcodes title="$lang[bb_t_apply]" type=button onclick="ajax_save_comm_edit('{$id}', '{$area}'); return false;" value="$lang[bb_b_apply]">
<input class=bbcodes title="$lang[bb_t_cancel]" type=button onclick="ajax_cancel_comm_edit('{$id}'); return false;" value="$lang[bb_b_cancel]">
</div></div>
HTML;
} elseif( $_REQUEST['action'] == "save" ) {
	$row = $db->super_query( "SELECT id, post_id, date, autor, text, is_register, approve FROM " . PREFIX . "_{$allowed_areas[$area]['comments_table']} where id = '$id'" );
	
	if( $id != $row['id'] ) die( "error" );
	
	$have_perm = 0;
	$row['date'] = strtotime( $row['date'] );
	
	if( $is_logged AND (($member_id['name'] == $row['autor'] AND $row['is_register'] AND $user_group[$member_id['user_group']]['allow_editc']) OR $user_group[$member_id['user_group']]['edit_allc'] OR $user_group[$member_id['user_group']]['admin_comments']) ) {
		$have_perm = 1;
	}

	if ( $user_group[$member_id['user_group']]['edit_limit'] AND (($row['date'] + ($user_group[$member_id['user_group']]['edit_limit'] * 60)) < $_TIME) ) {
		$have_perm = 0;
	}	

	if( ! $have_perm ) die( "error" );
	
	if( $config['allow_comments_wysiwyg'] == "yes" ) {
		
		$parse->wysiwyg = true;
		$use_html = true;
		
		$parse->ParseFilter( Array ('div','span','p','br','strong','em','ul','li','ol'), Array (), 0, 1 );
		
		if( $user_group[$member_id['user_group']]['allow_url'] ) $parse->tagsArray[] = 'a';
		if( $user_group[$member_id['user_group']]['allow_image'] ) $parse->tagsArray[] = 'img';
	
	} else
		$use_html = false;
	
	$comm_txt = trim( $parse->BB_Parse( $parse->process( convert_unicode( $_POST['comm_txt'], $config['charset'] ) ), $use_html ) );
	
	if( $parse->not_allowed_tags ) {
		die( "error" );
	}

	if( $parse->not_allowed_text ) {
		die( "error" );
	}
	
	if( dle_strlen( $comm_txt, $config['charset'] ) > $config['comments_maxlen'] ) {
		
		die( "error" );
	
	}
	
	if( $comm_txt == "" ) {
		
		die( "error" );
	
	}

	if( intval($config['comments_minlen']) AND dle_strlen( $comm_txt, $config['charset'] ) < $config['comments_minlen'] ) {
	
		die( "error" );
	
	}

	//* ����������� ������� ����
	if( intval( $config['auto_wrap'] ) ) {
		
		$comm_txt = preg_split( '((>)|(<))', $comm_txt, - 1, PREG_SPLIT_DELIM_CAPTURE );
		$n = count( $comm_txt );
		
		for($i = 0; $i < $n; $i ++) {
			if( $comm_txt[$i] == "<" ) {
				$i ++;
				continue;
			}
			
			$comm_txt[$i] = preg_replace( "#([^\s\n\r]{" . intval( $config['auto_wrap'] ) . "})#i", "\\1<br />", $comm_txt[$i] );
		}
		
		$comm_txt = join( "", $comm_txt );
	
	}
	
	$comm_update = $db->safesql( $comm_txt );
	
	$db->query( "UPDATE " . PREFIX . "_{$allowed_areas[$area]['comments_table']} SET text='$comm_update', approve='1' WHERE id = '$id'" );
	
	if( ! $row['approve'] ) $db->query( "UPDATE " . PREFIX . "_post SET comm_num=comm_num+1 WHERE id='{$row['post_id']}'" );
	
	$comm_txt = str_replace( "[hide]", "", str_replace( "[/hide]", "", $comm_txt) );
	$buffer = stripslashes( $comm_txt );

	$buffer= str_replace( '{THEME}', $config['http_home_url'] . 'templates/' . $config['skin'], $buffer );


} else
	die( "error" );

$db->close();

@header( "Content-type: text/html; charset=" . $config['charset'] );
echo $buffer;
?>