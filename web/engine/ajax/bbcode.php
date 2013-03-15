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
 Назначение: Панель BB кодов
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

        $output .= "<td style=\"padding:2px;\" align=\"center\"><a href=\"#\" onClick=\"dle_smiley(':$smile:'); return false;\"><img style=\"border: none;\" alt=\"$smile\" src=\"".$config['http_home_url']."engine/data/emoticons/$smile.gif\" /></a></td>";

		if ($i%4 == 0 AND $i < $count_smilies) $output .= "</tr><tr>";

    }

	$output .= "</tr></table>";

if ($addtype == "addnews") {

   $addform = "document.ajaxnews".$id; 
   $startform = "dleeditnews".$id;

$code = <<<HTML
<div style="width: 350px; overflow: hidden; border:1px solid #BBB; background-image:url('{THEME}/bbcodes/bg.gif');">
<div id="b_b" class="editor_button" onclick="simpletag('b')"><img title="$lang[bb_t_b]" src="{THEME}/bbcodes/b.gif" width="23" height="25" border="0"></div>
<div id="b_i" class="editor_button" onclick="simpletag('i')"><img title="$lang[bb_t_i]" src="{THEME}/bbcodes/i.gif" width="23" height="25" border="0"></div>
<div id="b_u" class="editor_button" onclick="simpletag('u')"><img title="$lang[bb_t_u]" src="{THEME}/bbcodes/u.gif" width="23" height="25" border="0"></div>
<div id="b_s" class="editor_button" onclick="simpletag('s')"><img title="$lang[bb_t_s]" src="{THEME}/bbcodes/s.gif" width="23" height="25" border="0"></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div class="editor_button" onclick=tag_image()><img title="$lang[bb_b_img]" src="{THEME}/bbcodes/image.gif" width="23" height="25" border="0"></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div class="editor_button"  onclick="tag_url()"><img title="$lang[bb_t_url]" src="{THEME}/bbcodes/link.gif" width="23" height="25" border="0"></div>
<div class="editor_button"  onclick="tag_leech()"><img title="$lang[bb_t_leech]" src="{THEME}/bbcodes/leech.gif" width="23" height="25" border="0"></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div class="editor_button"  onclick="tag_email()"><img title="$lang[bb_t_m]" src="{THEME}/bbcodes/email.gif" width="23" height="25" border="0"></div>
<div class="editor_button" onclick="tag_video()"><img title="$lang[bb_t_video]" src="{THEME}/bbcodes/mp.gif" width="23" height="25" border="0"></div>
<div class="editor_button" onclick="tag_audio()"><img src="{THEME}/bbcodes/mp3.gif" width="23" height="25" border="0"></div>
<div id="b_hide" class="editor_button" onclick="simpletag('hide')"><img title="$lang[bb_t_hide]" src="{THEME}/bbcodes/hide.gif" width="23" height="25" border="0"></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div id="b_emo" class="editor_button"  onclick="ins_emo(this);"><img title="$lang[bb_t_emo]" src="{THEME}/bbcodes/emo.gif" width="23" height="25" border="0"></div>
<div id="b_color" class="editor_button" onclick="ins_color(this);"><img src="{THEME}/bbcodes/color.gif" width="23" height="25" border="0"></div>
<div id="b_spoiler" class="editor_button" onclick="simpletag('spoiler')"><img src="{THEME}/bbcodes/spoiler.gif" width="23" height="25" border="0"></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div class="editor_button" onclick="tag_flash()"><img src="{THEME}/bbcodes/flash.gif" width="23" height="25" border="0" alt="" /></div>
<div class="editor_button_brk"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div class="editor_button" style="padding-top:4px;width:120px;"><select name="bbfont" class="editor_button" onchange="insert_font(this.options[this.selectedIndex].value, 'font')"><option value='0'>{$lang['bb_t_font']}</option><option value='Arial'>Arial</option><option value='Arial Black'>Arial Black</option><option value='Century Gothic'>Century Gothic</option><option value='Courier New'>Courier New</option><option value='Georgia'>Georgia</option><option value='Impact'>Impact</option><option value='System'>System</option><option value='Tahoma'>Tahoma</option><option value='Times New Roman'>Times New Roman</option><option value='Verdana'>Verdana</option></select></div>
<div class="editor_button" style="padding-top:4px;width:65px;"><select name="bbsize" class="editor_button" onchange="insert_font(this.options[this.selectedIndex].value, 'size')"><option value='0'>{$lang['bb_t_size']}</option><option value='1'>1</option><option value='2'>2</option><option value='3'>3</option><option value='4'>4</option><option value='5'>5</option><option value='6'>6</option><option value='7'>7</option></select></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div id="b_left" class="editor_button" onclick="simpletag('left')"><img title="$lang[bb_t_l]" src="{THEME}/bbcodes/l.gif" width="23" height="25" border="0"></div>
<div id="b_center" class="editor_button" onclick="simpletag('center')"><img title="$lang[bb_t_c]" src="{THEME}/bbcodes/c.gif" width="23" height="25" border="0"></div>
<div id="b_right" class="editor_button" onclick="simpletag('right')"><img title="$lang[bb_t_r]" src="{THEME}/bbcodes/r.gif" width="23" height="25" border="0"></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div id="b_list" class="editor_button" onclick="tag_list('list')"><img src="{THEME}/bbcodes/list.gif" width="23" height="25" border="0"></div>
<div id="b_ol" class="editor_button" onclick="tag_list('ol')"><img src="{THEME}/bbcodes/ol.gif" width="23" height="25" border="0"></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div id="b_quote" class="editor_button" onclick="simpletag('quote')"><img title="$lang[bb_t_quote]" src="{THEME}/bbcodes/quote.gif" width="23" height="25" border="0"></div>
<div id="b_code" class="editor_button" onclick="simpletag('code')"><img title="$lang[bb_t_code]" src="{THEME}/bbcodes/code.gif" width="23" height="25" border="0"></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div class="editor_button" onclick="pagebreak()"><img title="$lang[bb_t_br]" src="{THEME}/bbcodes/pbreak.gif" width="23" height="25" border="0"></div>
<div class="editor_button" onclick="pagelink()"><img title="$lang[bb_t_p]" src="{THEME}/bbcodes/page.gif" width="23" height="25" border="0"></div>
<div class="editor_button" style="padding-left:7px;"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
<div class="editor_button" onclick="tag_youtube()"><img src="{THEME}/bbcodes/youtube.gif" width="23" height="25" border="0" alt="" /></div>
<div class="editor_button"><img src="{THEME}/bbcodes/brkspace.gif" width="5" height="25" border="0"></div>
</div>
<div id="dle_emos" style="display: none;" title="{$lang['bb_t_emo']}"><div style="width:100%;height:100%;overflow: auto;">{$output}</div></div>
HTML;

}
else {

   $addform = "document.getElementById( 'dlemasscomments' )"; 
   $startform = "dleeditcomments".$id;

   if ($user_group[$member_id['user_group']]['allow_url'])
   {
      $url_link = "<td><a onclick=\"tag_url()\" style=\"width: 20px; height: 20px; display: block; float: left;\" title=\"Добавить ссылку\" id=\"click_linkmessage\" class=\"editor_click\"></a></td>";
   } 
   else {$url_link = "";}

   if ($user_group[$member_id['user_group']]['allow_image'])
   {
      $image_link = "<td><a onclick=\"tag_image()\" style=\"width: 20px; height: 20px; display: block; float: left;\" title=\"Добавить рисунок\" id=\"click_imgmessage\" class=\"editor_click\"></a></td>";
   } 
   else $image_link = "";

$code = <<<HTML
<div style="background: url({THEME}/images/editor/background_silver.jpg);" class="editorBars" id="topmenu_message">
<div style="height: 22px; display: block; width: 350px; max-width: 350px;">
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
HTML;
}


$script_code = @file_get_contents(ENGINE_DIR."/classes/js/bbcodes.js");
$script_code .= <<<HTML

-->
</SCRIPT>
HTML;

$code = str_replace ("{THEME}", $config['http_home_url'] . 'templates/' . $config['skin'], $code);


$bb_code = <<<HTML
<SCRIPT type=text/javascript>
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

{$script_code}
{$code}
HTML;

?>