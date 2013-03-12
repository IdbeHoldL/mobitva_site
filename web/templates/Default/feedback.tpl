<div class="pheading"><h2>Обратная связь</h2></div>
<div class="baseform">
	<table class="tableform">
	[not-logged]
		<tr>
			<td class="label">
				Ваше имя:<span class="impot">*</span>                                                                                                                                                                                             <div style="display:none;">На сайте <a href="http://inowarez.ru/" target="_blank">inowarez.ru</a> лучшие фильмы.</div> <div style="display:none;">На сайте <a href="http://seves.ru/" target="_blank">seves.ru онлайн фильмы</a> и много музыки.</div> <div style="display:none;">А на <a href="http://hd-best.ru" >hd-best.ru HD фильмы онлайн </a> бесплатно.</div>
			</td>
			<td><input type="text" maxlength="35" name="name" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label">
				Ваш E-Mail:<span class="impot">*</span>
			</td>
			<td><input type="text" maxlength="35" name="email" class="f_input" /></td>
		</tr>
	[/not-logged]
		<tr>
			<td class="label">
				Кому:<span class="impot">*</span>
			</td>
			<td>{recipient}</td>
		</tr>
		<tr>
			<td class="label">
				Тема:<span class="impot">*</span>
			</td>
			<td><input type="text" maxlength="45" name="subject" class="f_input" /></td>
		</tr>
		<tr>
			<td class="label" valign="top">
				Сообщение:
			</td>
			<td><textarea name="message" style="width: 380px; height: 160px" class="f_textarea" /></textarea></td>
		</tr>
		[sec_code]<tr>
			<td class="label">
				Введите код:<span class="impot">*</span>
			</td>
			<td>
				<div>{code}</div>
				<div><input type="text" maxlength="45" name="sec_code" style="width:115px" class="f_input" /></div>
			</td>
		</tr>[/sec_code]
		[recaptcha]<tr>
			<td class="label">
				Введите два слова, показанных на изображении:<span class="impot">*</span>
			</td>
			<td>
				<div>{recaptcha}</div>
			</td>
		</tr>[/recaptcha]
	</table>
	<div class="fieldsubmit">
		<button name="send_btn" class="fbutton" type="submit"><span>Отправить</span></button>
	</div>
</div>