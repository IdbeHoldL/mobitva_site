<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
{headers}
<link href="{THEME}/css/engine.css" rel="stylesheet" type="text/css" />
<link href="{THEME}/styles.css" rel="stylesheet" type="text/css" />
<!--[if IE 6]>
  <script src="{THEME}/js/DD_belatedPNG_0.0.8a-min.js"></script>
   <script>
    DD_belatedPNG.fix('.leftbarheader, a');
   </script>

   <style type="text/css">
    #menu li {
       display:inline;
       margin:0;
    }
  #menu a:hover, #menu a.active { background: none;}
  .day-current {background: url({THEME}/images/calendar_today_iefixbg.jpg) no-repeat 50% 0;}
  a.readmore, .searchbtnright {width:expression(document.body.clientWidth > 90? "90px": "auto" );}
  .articlecontent .quote, .article-mods {margin-right: -20px;}
  .quotetext {height: 1px;}
   </style>
<![endif]-->
</head>
<body>
{AJAX}
 <div id="bottombg">
 <div id="wrap">
  <div id="cornerleft"><div id="cornerright">
    <div id="header">
     <a href="/">Мой любимый ГС. Все для ГС, бесплатно</a>
       
     <form id="search" onsubmit="javascript: showBusyLayer()" method="post" action=''>
        <input type="hidden" name="do" value="search" />
        <input type="hidden" name="subaction" value="search" />
      <input class="searchbtn" type="image" src="{THEME}/images/searchbuttom.png" alt="Поиск" />
    <div class="header-inpleftbg"><div class="header-inprightbg"><input class="header-search" name="story" value="Что ищем?" onfocus="if (this.value=='Что ищем?') {this.value='';}" onblur="if (this.value=='') {this.value='Что ищем?';}" /></div></div>
       </form>    
  </div> <!-- #header -->
  
    <div id="menu">
     <ul>
      <li id="first"><a class="active" href="http://localhost/info2/">Главная страница</a></li>
    <li><a href="/index.php?do=register">Регистрация</a></li>
    <li><a href="/index.php?do=addnews">Контакты</a></li>
    <li><a href="/index.php?subaction=newposts">FAQ по сайту</a></li>

     </ul>
  </div> <!-- #menu -->
  
    <div id="container">
   <div id="content">
    
    <div class="bannerarea">
       
    </div> 

  {info}
  {content}
    
     </div>
   </div>
    <div class="leftbar">
  
   <div class="leftbarheader">
   <h2>Меню</h2>
   </div>
   <div class="leftbarcontent">
    <ul class="menulist">
      <li><a href="/">Главная</a></li>
     <li><a href="/soft/">Галерея персонажей</a></li>
           <li><a href="/icq/210-bayanicq-02f.html">Статьи от murdoc33</a></li>
     <li><a href="/games/">Видео о мобитве</a></li>
     <li><a href="/wallpapers/">Скриншотница</a></li>
      <li><a href="/redkie-veschi.html">Редкие вещи</a></li>
     <li><a href="/faq/">Бот для Мобитвы 0.98</a></li>
     <li><a href="/index.php?do=feedback">Конфиги для бота 0.98</a></li>
      <li><a href="/index.php?do=feedback">Загрузки</a></li>
      <li><a href="/index.php?do=feedback">Форум</a></li>
    </ul>
   </div>
   <div class="leftbarbottom"></div> 
   
   <div class="leftbarheader">
    <h2>Чат</h2>
   </div>
   <div class="barcontentchat">
     <div class="backgroundchat">
     {include file="http://localhost/engine/modules/iChat/show.php"}
     </div>
   </div>
   <div class="leftbarbottom"></div>
      
<div class="leftbarheader">
   <h2>Администрация</h2>
   </div> 
   <div class="leftbarcontent">
   <p align="center">Блок администрации</p>
   </div> 
   <div class="leftbarbottom"></div>  

       <div class="leftbarheader">
   <h2>Статистика</h2>
   </div>
   <div class="leftbarcontent">
   </div> 
   <div class="leftbarbottom"></div>
        

    </div>
    <div class="rightbar">

<div class="rightbarheader">
   <h2>Авторизация</h2>
    
   </div> 
      
   <div class="rightbarcontent">
     <p>{login}</p>
   </div>
   <div class="rightbarbottom"></div>

     <div class="rightbarheader">
    <h2>Статьи</h2>
   </div> <!-- .rightbarheader -->
   <div class="rightbarcontent">
     <p><a href=""><h3>Урон ИНФО</h3></a></p>
     
     <p><a href="http://localhost/info2/articles/10-stili-i-ih-osobennosti.html"><h3>Стили и их особенности</h3></a></p>
  
     <p><a href="http://localhost/info2/articles/"><h2>Все статьи...</h2></a></p>
   </div>
   <div class="rightbarbottom"></div>
   
        <div class="rightbarheader">
   <h2>Опрос</h2>
   </div>
   <div class="rightbarcontent">
              {vote}
   </div>
   <div class="rightbarbottom"></div> 
  
   
   <div class="rightbarheader">
    <h2>Реклама</h2>
   </div>
   <div class="rightbarcontent">
     <p>здесь будет реклама</p>
   </div>
   <div class="rightbarbottom"></div>
   
   <div class="clear"></div>
    </div>
  
    </div></div>
  </div> <!-- #wrap -->
   <div class="bottomwrap">
   </div>
  
   <div id="footer">
    <p class="footer14px">Copyright &copy; 2012. При копировании материалов, активная ссылка на источник обязательна!</p>
  </div>
  </div>
</body>
</html>