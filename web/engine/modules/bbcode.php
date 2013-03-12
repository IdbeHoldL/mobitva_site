<?PHP
/*
=====================================================
 DataLife Engine - by SoftNews Media Group 
-----------------------------------------------------
 http://dle-news.ru/
-----------------------------------------------------
 Copyright (c) 2004,2011 SoftNews Media Group
=====================================================
 Данный код защищен авторскими правами
=====================================================
 Файл: bbcode.php
-----------------------------------------------------
 Назначение: подключение основных компонентов
=====================================================
*/
if(!defined('DATALIFEENGINE'))
{
  die("Hacking attempt!");
}

	$i = 0;
	$output = "<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\" width=\"100%\"><tr>";

    $smilies = explode(",", $config['smilies']);
	$count_smilies = count($smilies);

    foreach($smilies as $smile)
    {
        $i++; $smile = trim($smile);

        $output .= "<td style=\"padding:2px;\" align=\"center\"><a href=\"#\" onclick=\"dle_smiley(':$smile:'); return false;\"><img style=\"border: none;\" alt=\"$smile\" src=\"".$config['http_home_url']."engine/data/emoticons/$smile.gif\" /></a></td>";

		if ($i%4 == 0 AND $i < $count_smilies) $output .= "</tr><tr>";

    }

	$output .= "</tr></table>";

if (isset($addtype) AND $addtype == "addnews") {

   $startform = "short_story"; 
   $addform = "document.entryform";

   if ($is_logged AND $user_group[$member_id['user_group']]['allow_image_upload'] OR ($is_logged AND $member_id['user_group'] == 1))
   {
      $image_upload = "<td><a onclick=\"tag_image()\" style=\"width: 20px; height: 20px; display: block; float: left;\" title=\"Добавить рисунок\" id=\"click_imgmessage\" class=\"editor_click\"></a></td>";
   } 
   else {$image_upload = "";}

   $add_id = (isset($_REQUEST['id'])) ? intval($_REQUEST['id']) : '';

$code = <<<HTML
<div style="background: url({THEME}/images/editor/background_silver.jpg);" class="editorBars" id="topmenu_message">
<div style="height: 22px; display: block; width: 450px; max-width: 450px;">
<span style="clear: left"><table cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td><img src="{THEME}/images/editor/seperator2.png" alt=""></td>
<td><a onclick="simpletag('b')" style="width: 20px; height: 20px; display: block; float: left;" title="Полужирный" id="click_bmessage" class="editor_click"></a></td>
<td><a onclick="simpletag('i')" style="width: 20px; height: 20px; display: block; float: left;" title="Курсив" id="click_imessage" class="editor_click"></a></td>
<td><a onclick="simpletag('u')" style="width: 20px; height: 20px; display: block; float: left;" title="Подчеркнутый" id="click_umessage" class="editor_click"></a></td>
<td><a onclick="simpletag('s')" style="width: 20px; height: 20px; display: block; float: left;" title="Перечеркнутый" id="click_smessage" class="editor_click"></a></td>
<td><img src="{THEME}/images/editor/seperator.png" alt="" style="margin: px;"></td>
<td><a onclick="simpletag('left')" style="width: 20px; height: 20px; display: block; float: left;" title="По левому краю" id="click_leftmessage" class="editor_click"></a></td>
<td><a onclick="simpletag('center')" style="width: 20px; height: 20px; display: block; float: left;" title="По центру" id="click_centermessage" class="editor_click"></a></td>
<td><a onclick="simpletag('right')" style="width: 20px; height: 20px; display: block; float: left;" title="По правому краю" id="click_rightmessage" class="editor_click"></a></td>
<td><img src="{THEME}/images/editor/seperator.png" alt="" style="margin: px;"></td>
<td><a onclick="ins_color(this);" style="width: 20px; height: 20px; display: block; float: left;" title="Цвет шрифта" id="click_colormessage" class="editor_click"></a></td>
<td><a onclick="ins_emo(this);" style="width: 20px; height: 20px; display: block; float: left;" title="Добавить смайл" id="click_smilesmessage" class="editor_click"></a></td>
<td><a onclick=\"tag_url()\" style=\"width: 20px; height: 20px; display: block; float: left;\" title=\"Добавить ссылку\" id=\"click_linkmessage\" class=\"editor_click\"></a></td>
{$image_link}
<td><a onclick="tag_list('list')" style="width: 20px; height: 20px; display: block; float: left;" title="Маркированный список" id="click_limessage" class="editor_click"></a></td>
<td><a onclick="simpletag('code')" style="width: 20px; height: 20px; display: block; float: left;" title="Код" id="click_codemessage" class="editor_click"></a></td>
<td><a onclick="translit()" style="width: 20px; height: 20px; display: block; float: left;" title="Вставить транслит" id="click_translitmessage" class="editor_click"></a></td>
<td><a onclick="simpletag('quote')" style="width: 20px; height: 20px; display: block; float: left;" title="Цитата" id="click_citemessage" class="editor_click"></a></td>
<td><a onclick="simpletag('hide')" style="width: 20px; height: 20px; display: block; float: left;" title="Скрытый текст" id="click_hidemessage" class="editor_click"></a></td>
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
<div id="dle_emos" style="display: none;" title="{$lang['bb_t_emo']}"><div style="width:100%;height:100%;overflow: auto;">{$output}</div></div>
HTML;

}
else {

  $startform = "comments"; 
  $addform = "document.getElementById( 'dle-comments-form' )";
  $add_id = false;

   if ($user_group[$member_id['user_group']]['allow_url'])
   {
      $url_link = "<td><a onclick=\"tag_url()\" style=\"width: 20px; height: 20px; display: block; float: left;\" title=\"Добавить ссылку\" id=\"click_linkmessage\" class=\"editor_click\"></a></td>";
   } 
   else $url_link = "";

   if ($user_group[$member_id['user_group']]['allow_image'])
   {
      $image_link = "<td><a onclick=\"tag_image()\" style=\"width: 20px; height: 20px; display: block; float: left;\" title=\"Добавить рисунок\" id=\"click_imgmessage\" class=\"editor_click\"></a></td>";
   } 
   else $image_link = "";

$code = <<<HTML
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
<div style="background: url({THEME}/images/editor/background_silver.jpg);" class="editorBars" id="topmenu_message">
<div style="height: 22px; display: block; width: 450px; max-width: 450px;">
<span style="clear: left"><table cellpadding="0" cellspacing="0">
<tbody>
<tr>
<td><img src="{THEME}/images/editor/seperator2.png" alt=""></td>
<td><a onclick="simpletag('b')" style="width: 20px; height: 20px; display: block; float: left;" title="Полужирный" id="click_bmessage" class="editor_click"></a></td>
<td><a onclick="simpletag('i')" style="width: 20px; height: 20px; display: block; float: left;" title="Курсив" id="click_imessage" class="editor_click"></a></td>
<td><a onclick="simpletag('u')" style="width: 20px; height: 20px; display: block; float: left;" title="Подчеркнутый" id="click_umessage" class="editor_click"></a></td>
<td><a onclick="simpletag('s')" style="width: 20px; height: 20px; display: block; float: left;" title="Перечеркнутый" id="click_smessage" class="editor_click"></a></td>
<td><img src="{THEME}/images/editor/seperator.png" alt="" style="margin: px;"></td>
<td><a onclick="simpletag('left')" style="width: 20px; height: 20px; display: block; float: left;" title="По левому краю" id="click_leftmessage" class="editor_click"></a></td>
<td><a onclick="simpletag('center')" style="width: 20px; height: 20px; display: block; float: left;" title="По центру" id="click_centermessage" class="editor_click"></a></td>
<td><a onclick="simpletag('right')" style="width: 20px; height: 20px; display: block; float: left;" title="По правому краю" id="click_rightmessage" class="editor_click"></a></td>
<td><img src="{THEME}/images/editor/seperator.png" alt="" style="margin: px;"></td>
<td><a onclick="ins_color(this);" style="width: 20px; height: 20px; display: block; float: left;" title="Цвет шрифта" id="click_colormessage" class="editor_click"></a></td>
<td><a onclick="ins_emo(this);" style="width: 20px; height: 20px; display: block; float: left;" title="Добавить смайл" id="click_smilesmessage" class="editor_click"></a></td>
{$url_link}
{$image_link}
<td><a onclick="tag_list('list')" style="width: 20px; height: 20px; display: block; float: left;" title="Маркированный список" id="click_limessage" class="editor_click"></a></td>
<td><a onclick="simpletag('code')" style="width: 20px; height: 20px; display: block; float: left;" title="Код" id="click_codemessage" class="editor_click"></a></td>
<td><a onclick="translit()" style="width: 20px; height: 20px; display: block; float: left;" title="Вставить транслит" id="click_translitmessage" class="editor_click"></a></td>
<td><a onclick="simpletag('quote')" style="width: 20px; height: 20px; display: block; float: left;" title="Цитата" id="click_citemessage" class="editor_click"></a></td>
<td><a onclick="simpletag('hide')" style="width: 20px; height: 20px; display: block; float: left;" title="Скрытый текст" id="click_hidemessage" class="editor_click"></a></td>
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
<div id="dle_emos" style="display: none;" title="{$lang['bb_t_emo']}"><div style="width:100%;height:100%;overflow: auto;">{$output}</div></div>
<textarea id="comments" name="comments" cols="" rows="" style="height: 164px; max-height: 220px;width: 450px; max-width: 450px;" class="main_editor"></textarea>
<div class="resizeBar" id="resize_message">
<img src="{THEME}/images/editor/pixel.gif" alt="">
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
HTML;
}
$js_array[] = "engine/classes/js/bbcodes.js";


$bb_code = <<<HTML
<script language="javascript" type="text/javascript">
<!--
var text_enter_url       = "$lang[bb_url]";
var text_enter_size       = "$lang[bb_flash]";
var text_enter_flash       = "$lang[bb_flash_url]";
var text_enter_page      = "$lang[bb_page]";
var text_enter_url_name  = "$lang[bb_url_name]";
var text_enter_page_name = "$lang[bb_page_name]";
var text_enter_image    = "$lang[bb_image]";
var text_enter_email    = "$lang[bb_email]";
var text_code           = "$lang[bb_code]";
var text_quote          = "$lang[bb_quote]";
var error_no_url        = "$lang[bb_no_url]";
var error_no_title      = "$lang[bb_no_title]";
var error_no_email      = "$lang[bb_no_email]";
var prompt_start        = "$lang[bb_prompt_start]";
var img_title   		= "$lang[bb_img_title]";
var email_title  	    = "$lang[bb_email_title]";
var text_pages  	    = "$lang[bb_bb_page]";
var image_align  	    = "{$config['image_align']}";
var bb_t_emo  	        = "{$lang['bb_t_emo']}";
var bb_t_col  	        = "{$lang['bb_t_col']}";
var text_enter_list     = "{$lang['bb_list_item']}";

var selField  = "{$startform}";
var fombj    = {$addform};

function image_upload()
{

window.open('{$config['http_home_url']}engine/images.php?area=' + selField + '&add_id={$add_id}', '_Addimage', 'toolbar=0,location=0,status=0, left=0, top=0, menubar=0,scrollbars=yes,resizable=0,width=640,height=550');    

}
-->
</script>
{$code}
HTML;
?>