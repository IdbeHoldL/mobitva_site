          <div class="articleheader">
		  <h2>������������ ���������</h2>
		  <p>[inbox]�������� ���������[/inbox] &nbsp;&nbsp;&nbsp;&nbsp; [outbox]������������ ���������[/outbox] &nbsp;&nbsp;&nbsp;&nbsp; [new_pm]��������� ���������[/new_pm]</p>
          </div>	
          <div class="articlecontent">
		  [pmlist]
		  <div class="pm_status">
			<div class="pm_status_head">��������� �����</div>
			<div class="pm_status_content">����� ������������ ��������� ��������� ��:
			{pm-progress-bar}
			{proc-pm-limit}% �� ������ ({pm-limit} ���������)
				</div>
			</div>
		  {pmlist}
		  [/pmlist]
[newpm]
                                    <table width="480" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="80" height="25">����������:</td>
                                        <td width="400" height="25"><input type="text" name="name" value="{author}" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="80" height="25">����:</td>
                                        <td width="400" height="25"><input type="text" name="subj" value="{subj}" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td colspan="2">
										<div class="bbeditorbtns">
										{editor}
										<input type="checkbox" name="outboxcopy" value="1" /> ��������� ��������� � ����� "������������"<br /><br />
										</div>
                                        </td>
                                      </tr>
[question]
									<tr>
										<td class="label">
											������:
										</td>
										<td>
											<div>{question}</div>
										</td>
									</tr>
									<tr>
										<td class="label">
											�����:<span class="impot">*</span>
										</td>
										<td>
											<div><input type="text" name="question_answer" id="question_answer" class="f_input" /></div>
										</td>
									</tr>
[/question]
[sec_code]
                                      <tr>
                                        <td width="80" height="25">���:</td>
                                        <td width="400" height="25"><br />{sec_code}</td>
                                      </tr>
                                      <tr>
                                        <td width="80" height="25">������� ���:</td>
                                        <td width="400" height="25"><input type="text" name="sec_code" id="sec_code" style="width:115px" class="f_input" /></td>
                                      </tr>
[/sec_code]
[recaptcha]
										<tr>
										<td colspan="2" height="25"><strong>������� ��� �����, ���������� �� �����������:</strong></td>
										</tr>
										<tr>
										<td colspan="2" height="25">{recaptcha}</td>
										</tr>
[/recaptcha]
                                      <tr>
                                        <td colspan="2">
                                          <span class="searchbtnright"><span class="searchbtnleft"><input  type="submit" class="bbcodes roundbtnstyle" name="add" value="���������" ></span></span>&nbsp;&nbsp;<span class="searchbtnright"><span class="searchbtnleft"><input type="button" class="bbcodes roundbtnstyle" onclick="dlePMPreview()" value="��������" /></span></span>
                                        </td>
                                      </tr>
                                    </table>
[/newpm]
[readpm]
<p style="text-align:right; line-height: 150%;">��: {author}</p>
<p align="right">����: {subj}</p>
<p>&nbsp;</p>
<p>{text}<p>
<p class="msg-actions"><span class="searchbtnright"><span class="searchbtnleft">[reply]��������[/reply]</span></span> <span class="searchbtnright"><span class="searchbtnleft">[complaint]������������[/complaint]</span></span> <span class="searchbtnright"><span class="searchbtnleft">[ignore]������������[/ignore]</span></span> <span class="searchbtnright"><span class="searchbtnleft">[del]�������[/del]</span></span> </p>
[/readpm]
          </div>		  
		  <div class="articlebottom">
		  </div>