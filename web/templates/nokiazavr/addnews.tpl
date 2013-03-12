                    <table width="100%">
                     <tr>
                      <td width="200">Введите заголовок:</td>
                      <td><input type="text" name="title" value="{title}" maxlength="150" /></td>
					 </tr>
					 <tr>
					  <td>Ключевые слова для облака тегов: </td>
					  <td><input type="text" name="tags" value="{tags}" maxlength="150" class="f_input" /></td>
					 </tr>
[urltag]
                     <tr>
					  <td>URL статьи:</td>
					  <td><input type="text" name="alt_name" value="{alt-name}" maxlength="150" class="f_input" /></td>
					 </tr>
[/urltag]
                     <tr><td>&nbsp;</td></tr>
					 <tr>
					  <td>Категория:</td>
					  <td>{category}</td>
					 </tr>
					{xfields}
					</table>
[not-wysywyg]
                        <p class="violet"><br />Коды: </p><br />
                        {bbcode}
[/not-wysywyg]

                        <br /><br /><p class="violet">Краткое содержание:</p><br />[not-wysywyg]<textarea name="short_story" id="short_story" onclick=setFieldName(this.name) style="width:98%; height:160px" class="f_textarea" />{short-story}</textarea>[/not-wysywyg]{shortarea}

                        <br /><br /><p class="violet">(необязательно) Полная новость:</p><br />
                        [not-wysywyg]<textarea name="full_story" id="full_story" onclick=setFieldName(this.name) style="width:98%; height:200px" class="f_textarea" />{full-story}</textarea>[/not-wysywyg]{fullarea}
[question]
						<tr>
							<td class="label">
								Вопрос:
							 </td>
							 <td>
								 <div>{question}</div>
							 </td>
						</tr>
						<tr>
							<td class="label">
								Ответ:<span class="impot">*</span>
							</td>
							<td>
								<div><input type="text" name="question_answer" id="question_answer" class="f_input" /></div>
							</td>
						</tr>
[/question]
[sec_code]            
				   <div id="sec-code">
				   <input type="text" name="sec_code" id="sec_code" class="com-add" style="width:150px; height: 44px; margin-right: 10px; font-size: 28px; padding-top: 4px;" value="Код" onfocus="if (this.value=='Код') {this.value='';}" onblur="if (this.value=='') {this.value='Код';}"/>
				   {sec_code}
				   </div>
[/sec_code]
[recaptcha]
					<tr>
					<td>&nbsp;</td>
					<td><br />Введите два слова, показанных на изображении:<br />{recaptcha}</td>
					</tr>
[/recaptcha]
{admintag}
                    <div align="center" style="margin-top: 20px"> 
                        <span class="searchbtnright"><span class="searchbtnleft"><input class="roundbtnstyle" type="submit" name="add" value="отправить" /></span></span>
                        <span class="searchbtnright"><span class="searchbtnleft"><input class="roundbtnstyle" type="button" name="nview" onclick="preview()" value="просмотр" /></span></span>
	                </div>