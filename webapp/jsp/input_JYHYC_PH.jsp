<%@   page   language="java"   contentType="text/html;   charset=utf-8"%>
<%
String path2 = request.getContextPath();
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div id="JYHYC_PH">
	<dd id="JYHYC_ZJTPH">
		<i class="w200 dis-ib">中间体批号：</i>
		<input class="defaultOption" id="JYHYC_ZJTPH_STR" placeholder="示例:Z180101" maxlength="7" onkeyup="inputstring(this)">
	</dd>
	<dd id="JYHYC_YCPH" >
		<i class="w200 dis-ib">药材批号：</i>
		<label>
			<input class="defaultOption" id="JYHYC_YCPH_STR" placeholder="示例:Y1801001" maxlength="8" onkeyup="inputstring(this)">
		</label>
	</dd>
</div>