   <input type="text" style="margin-left: 5px;" id="searchinput" name="lostname" value="����� ��� E-Mail" onfocus="if (this.value=='����� ��� E-Mail') {this.value='';}" onblur="if (this.value=='') {this.value='����� ��� E-Mail';}"/>
   [sec_code]
   <div id="sec-code">
   <input type="text" name="sec_code" id="sec_code" class="com-add" style="width:150px; height: 44px; margin-right: 10px; font-size: 28px; padding-top: 4px;" value="���" onfocus="if (this.value=='���') {this.value='';}" onblur="if (this.value=='') {this.value='���';}"/>
   {code}
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
	 <input style="border: none;"  name="submit" type="image" src="{THEME}/images/commentsubmitbutton.jpg" alt="���������" />
	</div>