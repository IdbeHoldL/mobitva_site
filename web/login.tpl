[not-group=5]
<center><img src="{foto}" alt="{login}" border="0" /></center>
[admin-link]<a href="{admin-link}" target="_blank"><font color=red>����������</font></a>[/admin-link] </br>
<a class="catName" href="{profile-link}">�������</a> </br>
<a class="catName" href="{addnews-link}">�������� �������</a> </br>
<a class="catName" href="{pm-link}">������ ��������� ({new-pm} | {all-pm})</a> </br>
<a class="catName" href="{newposts-link}">�������������</a> </br>
<a class="catName" href="{favorites-link}">��������</a> </br>
<a class="catName" href="{stats-link}">����������</a></br>
<a class="catName" href="{logout-link}">�����</a>
[/not-group]
[group=5]
<form method="post" action=''>
<input name="login" type="hidden" id="login" value="submit" />
<input class="a_field" name="login_name" type="text" value="�����" onfocus="if (this.value=='�����') {this.value='';}" onblur="if (this.value=='') {this.value='�����';}" /><br />
<input class="a_field" type="password" name="login_password" value="������" onfocus="if (this.value=='������') {this.value='';}" onblur="if (this.value=='') {this.value='������';}" />
<br/><center><input onclick="submit();" name="image" value="����" type="submit" /></center><br/>
	<a class="catName" href="index.php?do=register">�����������</a> | 
	<a class="catName" href="{lostpassword-link}">��������� ������</a>
</form>
[/group]