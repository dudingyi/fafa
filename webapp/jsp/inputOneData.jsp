<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- <link rel="shortcut icon" type="image/x-icon" href="icons/logo2-2.png"> -->
	<title>康缘PKS统计挖掘系统</title>
	<base href="<%=basePath%>">
	<link rel="stylesheet" type="text/css" href="CSS/global.css">
	<link rel="stylesheet" href="CSS/jquery-ui.min.css">
	<script type="text/javascript" src="js/lib/jquery/jquery-1.7.1.js" ></script>
	<script type="text/javascript" src="js/lib/jquery/jquery-ui.min.js"></script>
	<script type="text/javascript" src="js/inputOneData.js" ></script>
	<script type="text/javascript" src="js/input_JYHYC.js" ></script>
	<script type="text/javascript" src="js/input_JYHYC_PH.js" ></script>

</head>
<body style="background-color: #e4e4e4">
   <input id="pageName" value="dataAnalysis" type="hidden" />
   <c:import url="head.jsp"  charEncoding="UTF-8" />
	<div id="Bdy">
		<div class="bdy">
			<div class="main">	
				<div class="main_content">			
					<!-- *****************************************************数据输入 ***************************************************** -->
					<div id="trendAnalysisDiv" >
					<div class="intro intro-trend">
						<dl>
							<dt csstxt="数据录入" class="file-gnm">
								<i class="i iB i2"></i>
							</dt>
							<dd><i class="w200 dis-ib">选择:</i>
								<select class="defaultOption" id="midName" >
									<option value="1">金银花药材</option>
									<option value="2">金银花药材批号-中间体批号</option>
									<!-- <option value="3">青蒿药材</option> -->
								</select>
							</dd>
							<br>
							<br>
							<form id = "dataform">
								<c:import url="input_JYHYC.jsp"  charEncoding="UTF-8" />
								<c:import url="input_JYHYC_PH.jsp"  charEncoding="UTF-8" />
								<button type="button" id="save" class="orange-btn w200 mt15 floatRight trend-btn" >保存</button>
							    <br>
							    <br>
							</form>

						</dl>

					</div>
				</div>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" value="<%=basePath%>" id=basePath>

	<script language="JavaScript" type="text/javascript">
	    $(function() {
		var pageName = $("#pageName").val();
		loadHead(pageName);
	    });
		function clearNoNum(obj)
		{
			//先把非数字的都替换掉，除了数字和.
			obj.value = obj.value.replace(/[^\d.%]/g,"");
			////必须保证第一个为数字而不是.
			obj.value = obj.value.replace(/^\./g,"");
			////保证只有出现一个.而没有多个.
			obj.value = obj.value.replace(/\.{2,}/g,".");
			////保证.只出现一次，而不能出现两次以上
			obj.value = obj.value.replace(".","$#$").replace(/\./g,"").replace("$#$",".");
		}

		function inputstring(obj)
		{
			obj.value = obj.value.replace(/[^!-z\-]/g,"");
		}
	</script>

</body>
</html>