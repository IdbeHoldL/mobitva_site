                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="20" align="left" valign="top" class="abl31">&nbsp;</td>
                            <td align="left" valign="top" class="stext">

                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
[registration]
                                      <tr>
                                        <td colspan="2"><strong>������������, ��������� ���������� ������ �����!</strong><br /><br />����������� �� ����� ����� �������� ��� ���� ��� ����������� ����������. �� ������� ��������� ������� �� ����, ��������� ���� �����������, ������������� ������� ����� � ������ ������.<br /><br />� ������ ������������� ������� � ������������, ���������� � �������������� �����.<br /><br /></td>
                                      </tr>
[/registration]
[validation]
                                      <tr>
                                        <td colspan="2"><strong>��������� ����������</strong>,<br /><br />��� ������� ��� ��������������� �� ����� �����, ������ ���������� � ��� �������� ��������, ������� ��������� �������������� ���� � ����� �������.<br /><br /></td>
                                      </tr>
[/validation]
[registration]
                                      <tr>
                                        <td width="130" height="25">�����:</td>
                                        <td width="100%"><input type="text" name="name" id='name' class="f_input" /> <input style="background: transparent;" title="��������� ����������� ������ ��� �����������" onclick="CheckLogin(); return false;" type="button" value="��������� ���" /><div id='result-registration'></div></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">������:</td>
                                        <td><input type="password" name="password1" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25" nowrap>��������� ������:&nbsp;</td>
                                        <td><input type="password" name="password2" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">��� E-Mail:</td>
                                        <td><input type="text" name="email" class="f_input" /></td>
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
                                        <td colspan="2" height="25"><strong>������������� ���� ������������</strong></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">��� ������������:</td>
                                        <td>{reg_code}</td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">������� ���:</td>
                                        <td><input type="text" name="sec_code" style="width:115px" class="f_input" /></td>
                                      </tr>
[/sec_code]
[recaptcha]
									<tr>
									<td>&nbsp;</td>
									<td><br />������� ��� �����, ���������� �� �����������:<br />{recaptcha}</td>
									</tr>
[/recaptcha]
[/registration]
[validation]
                                      <tr>
                                        <td width="130" height="25">���� ���:</td>
                                        <td  width="100%"><input type="text" name="fullname" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25"><nobr>����� ����������:��</nobr></td>
                                        <td><input type="text" name="land" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">����� ICQ:</td>
                                        <td><input type="text" name="icq" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">����:</td>
                                        <td><input type="file" name="image" style="width:304px; height:18px" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">� ����:</td>
                                        <td><textarea name="info" style="width:320px; height:70px" rows="" cols="" class="f_textarea"></textarea></td>
                                      </tr>
{xfields}
[/validation]
                                     
                                    </table>
                            </td>
                          </tr>
                        </table>
						<div align="center" style="margin-top:20px;">
                         <input type="image"  style="border: none;" src="{THEME}/images/commentsubmitbutton.jpg" name="submit" alt="���������" />
						</div>