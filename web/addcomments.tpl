  <div class="comment-add">
[not-logged]
<input style="margin-right: 9px;" type="text" name="name" id="name" class="com-add" value="���" onfocus="if (this.value=='���') {this.value='';}" onblur="if (this.value=='') {this.value='���';}"/>
<input type="text" name="mail" id="mail" class="com-add" value="E-Mail" onfocus="if (this.value=='E-Mail') {this.value='';}" onblur="if (this.value=='') {this.value='E-Mail';}"/>
<div class="clear"></div>
[/not-logged]  
<div class="bbeditorbtns">
{editor}
</div>
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
   <div id="sec-code">
   <input type="text" name="sec_code" id="sec_code" class="com-add" style="width:150px; height: 44px; margin-right: 10px; font-size: 28px; padding-top: 4px;" value="���" onfocus="if (this.value=='���') {this.value='';}" onblur="if (this.value=='') {this.value='���';}"/>
   {sec_code}
   </div>
[/sec_code]
[recaptcha]
<tr>
<td colspan="2" height="25"><strong>������� ��� �����, ���������� �� �����������:</strong></td>
</tr>
<tr>
<td colspan="2" height="25">{recaptcha}</td>
</tr>
[/recaptcha]
    <div align="center" style="margin-top: 20px;">
	 <input style="border: none;" onclick="doAddComments();return false;" name="submit" type="image" src="{THEME}/images/commentsubmitbutton.jpg" alt="���������" /></div>
	</div>