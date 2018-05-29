<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>康缘PKS统计挖掘系统</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="CSS/global.css">
	<script type="text/javascript" src="js/lib/jquery/jquery-1.7.1.js"></script>
	<script type="text/javascript" src="js/lib/jquery/jquery-extend.js"></script>
	<script type="text/javascript" src="js/lib/highcharts/highcharts.js"></script>
	<script type="text/javascript" src="js/lib/highcharts/exporting.js"></script>
</head>
<body>
	<input id="pageName" value="dataAnalysis" type="hidden"/>
	<c:import url="head.jsp"  charEncoding="UTF-8" />
	<div id="Bdy">
		<div class="bdy">
			<div class="main">	
				<div class="main_content">			
					<!-- *****************************************************导航说明  ***************************************************** -->
					<p class="title"><b>欢迎使用数据挖掘模块，以下是《数据挖掘模块使用说明》，请在第一次使用时详细阅读，谢谢！</b></p>
					<ul>
						<li id="trendAnalysis" class="navi_info">
							<button>  
								<i class="i i1"></i>
							</button>
							趋势显示:温度、压力、真空度、密度、流速、体积、质量（这两个都是数值，如何表示趋势）等进行趋势显示。
							
						</li>
						
					</ul>
				</div>
			</div>
		</div>
	</div>
	<input type="hidden" value="<%=basePath%>" id=basePath>
<script language="JavaScript" type="text/javascript">
$(function(){
	var pageName=$("#pageName").val();
	loadHead(pageName);
});


//获取image src路径
$(".navi_info").click(function(){
	var basePath=$("#basePath2").val();
	var id = $(this).attr("id");
	location.href = basePath + "jsp/" + id + ".jsp";	
});		
</script>



</body>

</html>