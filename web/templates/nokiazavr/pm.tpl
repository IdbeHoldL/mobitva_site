          <div class="articleheader">
		  <h2>Персональные сообщения</h2>
		  <p>[inbox]Входящие сообщения[/inbox] &nbsp;&nbsp;&nbsp;&nbsp; [outbox]Отправленные сообщения[/outbox] &nbsp;&nbsp;&nbsp;&nbsp; [new_pm]Отправить сообщение[/new_pm]</p>
          </div>	
          <div class="articlecontent">
		  [pmlist]
		  <div class="pm_status">
			<div class="pm_status_head">Состояние папок</div>
			<div class="pm_status_content">Папки персональных сообщений заполнены на:
			{pm-progress-bar}
			{proc-pm-limit}% от лимита ({pm-limit} сообщений)
				</div>
			</div>
		  {pmlist}
		  [/pmlist]
[newpm]
                                    <table width="480" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="80" height="25">Получатель:</td>
                                        <td width="400" height="25"><input type="text" name="name" value="{author}" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="80" height="25">Тема:</td>
                                        <td width="400" height="25"><input type="text" name="subj" value="{subj}" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td colspan="2">
										<div class="bbeditorbtns">
										{editor}
										<input type="checkbox" name="outboxcopy" value="1" /> Сохранить сообщение в папке "Отправленные"<br /><br />
										</div>
                                        </td>
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
                                        <td width="80" height="25">Код:</td>
                                        <td width="400" height="25"><br />{sec_code}</td>
                                      </tr>
                                      <tr>
                                        <td width="80" height="25">Введите код:</td>
                                        <td width="400" height="25"><input type="text" name="sec_code" id="sec_code" style="width:115px" class="f_input" /></td>
                                      </tr>
[/sec_code]
[recaptcha]
										<tr>
										<td colspan="2" height="25"><strong>Введите два слова, показанных на изображении:</strong></td>
										</tr>
										<tr>
										<td colspan="2" height="25">{recaptcha}</td>
										</tr>
[/recaptcha]
                                      <tr>
                                        <td colspan="2">
                                          <span class="searchbtnright"><span class="searchbtnleft"><input  type="submit" class="bbcodes roundbtnstyle" name="add" value="Отправить" ></span></span>&nbsp;&nbsp;<span class="searchbtnright"><span class="searchbtnleft"><input type="button" class="bbcodes roundbtnstyle" onclick="dlePMPreview()" value="Просмотр" /></span></span>
                                        </td>
                                      </tr>
                                    </table>
[/newpm]
[readpm]
<p style="text-align:right; line-height: 150%;">От: {author}</p>
<p align="right">Тема: {subj}</p>
<p>&nbsp;</p>
<p>{text}<p>
<p class="msg-actions"><span class="searchbtnright"><span class="searchbtnleft">[reply]ответить[/reply]</span></span> <span class="searchbtnright"><span class="searchbtnleft">[complaint]пожаловаться[/complaint]</span></span> <span class="searchbtnright"><span class="searchbtnleft">[ignore]игнорировать[/ignore]</span></span> <span class="searchbtnright"><span class="searchbtnleft">[del]удалить[/del]</span></span> </p>
[/readpm]
          </div>		  
		  <div class="articlebottom">
		  </div>