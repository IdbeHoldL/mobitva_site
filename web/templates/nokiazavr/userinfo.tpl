     <div class="comments">
   <div class="com-top"></div>
   
   <div class="com-content">
     
     <div class="com-left">
       <img class="avatar" src="{foto}" />
     <p>{usertitle}</p>
     </div>
     <div class="comment">
                                  <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                      <tr>
                                        <td align="left" valign="top" style="padding-left:5px;">������ ���: {fullname}
                                          <br />���� �����������: {registration}
                                          <br />��������� ���������: {lastdate}
                                          <br />������: {status} [time_limit] � ������ ��: {time_limit}[/time_limit]
                                          <br />����� ����������: {land}
                                          <br />����� ICQ: {icq}
                                          <br />������� � ����:<br />{info}
                      <br /><br />���������� ����������:  {news-num} [ {news} ] [rss]<img src="{THEME}/images/rss_icon.gif" border="0" />[/rss]
                                          <br />���������� ������������: {comm-num} [ {comments} ]
                      <br /><br />�����: [ {email} ] [ {pm} ] 
                      <br />[not-logged] [ {edituser} ] [/not-logged]
                                        </td>
                                      </tr>
                                    </table>
     </div>
    </div>
       <div class="com-bottom"></div>
</div>

[not-logged]
<div id="options" style="display:none;">
   <div class="comments">
   <div class="com-top"></div>
   
   <div class="com-content">
     
     <div class="com-left"></div>
                                    <table border="0" cellspacing="0" cellpadding="0" id="useroptions">
                                      <tr>
                                        <td width="130" height="25">��� E-Mail:</td>
                                        <td width="350"><input type="text" name="email" value="{editmail}" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130">&nbsp;</td>
                                        <td>{hidemail}<br /><input type="checkbox" name="subscribe" value="1" /> ���������� �� ����������� ��������</td>
                                      </tr>
                                      <tr>
                                        <td width="130">&nbsp;</td>
                                        <td>&nbsp;</td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">���� ���:</td>
                                        <td><input type="text" name="fullname" value="{fullname}" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25"><nobr>����� ����������:  </nobr></td>
                                        <td><input type="text" name="land" value="{land}" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">����� ICQ:</td>
                                        <td><input type="text" name="icq" value="{icq}" class="f_input" /></td>
                                      </tr>
                    <tr>
                                        <td width="130" height="25">������ ������������:</td>
                                        <td>{ignore-list}</td>
                                      </tr>
                                      <tr>
                                        <td width="130">&nbsp;</td>
                                        <td>&nbsp;</td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">������ ������:</td>
                                        <td><input type="password" name="altpass" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">����� ������:</td>
                                        <td><input type="password" name="password1" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">���������:</td>
                                        <td><input type="password" name="password2" class="f_input" /></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">���������� �� IP:</td>
                                        <td><textarea name="allowed_ip" style="width:320px; height:70px" rows="" cols="" class="f_textarea">{allowed-ip}</textarea><br />��� ������� IP: <strong>{ip}</strong><br /><br /><font style="color:red;">* ��������! ������ ��������� ��� ��������� ������ ���������. ������ � ������ �������� ����� �������� ������ � ���� IP-������ ��� �������, ������� �� �������. <br /><br />�� ������ ������� ��������� IP-�������, �� ������ ������ � ������ ������.<br />������: 192.48.25.71 ��� 129.42.*.*</font></td>
                                      </tr>
                                      <tr>
                                        <td width="130">&nbsp;</td>
                                        <td>&nbsp;</td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">����:</td>
                                        <td><input type="file" name="image" style="width:304px; border: 1px solid;" class="f_input" /></td>
                                      </tr>
                    <tr>
                                        <td width="130" height="25">������:</td>
                                        <td>������ <a href="http://www.gravatar.com/" target="_blank">Gravatar</a>: <input type="text" name="gravatar" value="{gravatar}" class="f_input" /> (������� E-mail �� ������ �������)</td>
                                      </tr>
                                      <tr>
                                        <td width="130">&nbsp;</td>
                                        <td><input type="checkbox" name="del_foto" value="yes" />  ������� ����������</td>
                                      </tr>
                                      <tr>
                                        <td width="130">&nbsp;</td>
                                        <td>&nbsp;</td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">� ����:</td>
                                        <td style="padding-bottom:5px;"><textarea name="info" style="width:320px; height:70px" rows="" cols="" class="f_textarea">{editinfo}</textarea></td>
                                      </tr>
                                      <tr>
                                        <td width="130" height="25">�������:</td>
                                        <td><textarea name="signature" style="width:320px; height:70px" rows="" cols="" class="f_textarea">{editsignature}</textarea></td>
                                      </tr>
                    {xfields}
                                      <tr>
                                        <td width="130">&nbsp;</td>
                                        <td height="25"><div align="center" style="margin-top:20px;">
                    <input type="image"  style="border: none;" src="{THEME}/images/commentsubmitbutton.png" name="submit" alt="���������" />
                                          <input name="submit" type="hidden" id="submit" value="submit" />
                                          </div></td>
                                      </tr>
                                    </table>
</div>
     <div class="com-bottom"></div>
    </div>
  
</div>
[/not-logged] 