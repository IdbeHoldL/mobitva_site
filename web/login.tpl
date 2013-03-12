[not-group=5]
<center><img src="{foto}" alt="{login}" border="0" /></center>
[admin-link]<a href="{admin-link}" target="_blank"><font color=red>Админцентр</font></a>[/admin-link] </br>
<a class="catName" href="{profile-link}">Профиль</a> </br>
<a class="catName" href="{addnews-link}">Добавить новость</a> </br>
<a class="catName" href="{pm-link}">Личные сообщения ({new-pm} | {all-pm})</a> </br>
<a class="catName" href="{newposts-link}">Непрочитанное</a> </br>
<a class="catName" href="{favorites-link}">Закладки</a> </br>
<a class="catName" href="{stats-link}">Статистика</a></br>
<a class="catName" href="{logout-link}">Выход</a>
[/not-group]
[group=5]
<form method="post" action=''>
<input name="login" type="hidden" id="login" value="submit" />
<input class="a_field" name="login_name" type="text" value="Логин" onfocus="if (this.value=='Логин') {this.value='';}" onblur="if (this.value=='') {this.value='Логин';}" /><br />
<input class="a_field" type="password" name="login_password" value="Пароль" onfocus="if (this.value=='Пароль') {this.value='';}" onblur="if (this.value=='') {this.value='Пароль';}" />
<br/><center><input onclick="submit();" name="image" value="Вход" type="submit" /></center><br/>
	<a class="catName" href="index.php?do=register">Регистрация</a> | 
	<a class="catName" href="{lostpassword-link}">Напомнить пароль</a>
</form>
[/group]