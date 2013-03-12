<table width="100%">
[not-logged]
                                      <tr>
                                        <td width="130" height="25">Ваше имя:</td>
                                        <td><input type="text" maxlength="35" name="name" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">E-Mail:</td>
                                        <td><input type="text" maxlength="35" name="email" class="f_input" /></td>
                                      </tr>
[/not-logged]
                                      <tr>
                                        <td width="130" height="25">Заголовок:</td>
                                        <td><input type="text" maxlength="45" name="subject" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">Получатель:</td>
                                        <td>{recipient}</td>
                                      </tr>
                                      <tr>
                                        <td width="130">Сообщение:</td>
                                        <td><textarea name="message" style="width:420px; height:160px" rows="" cols="" class="f_textarea"></textarea></td>
                                      </tr>
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
                                      <tr>
									  <td colspan="2">
									  <div id="sec-code">
                                       <input type="text" onblur="if (this.value=='') {this.value='Код';}" onfocus="if (this.value=='Код') {this.value='';}" value="Код" style="width: 150px; height: 44px; margin-right: 10px; font-size: 28px; padding-top: 4px;" class="com-add" id="sec_code" name="sec_code"/>
                                       {code}
                                      </div>
                                      </td>
									  </tr>
									  [/sec_code]
										[recaptcha]
										<tr>
										<td>&nbsp;</td>
										<td><br />Введите два слова, показанных на изображении:<br />{recaptcha}</td>
										</tr>
										[/recaptcha]
									  </table>
                                      <div align="center" style="margin-top:20px">
									  <input name="send_btn" type="image" src="{THEME}/images/commentsubmitbutton.jpg" alt="Отправить"alt="Отправить" />
                                      </div>