<%@   page   language="java"   contentType="text/html;   charset=utf-8"%>
<%
String path2 = request.getContextPath();
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <!--顶部导航-->
	<div class="Tray">
		<div class="tray">
			<a href="#" title="康缘PKS统计挖掘系统" class="logo">康缘PKS统计挖掘系统</a>
			<ul class="nav">
				<li>
					<a href="<%=basePath2%>/jsp/dataAnalysis.jsp">统计分析</a>
				</li>
			</ul>
			<ul class="nav nav2">
				<li>欢迎您！kanion</li>
				<li></li>   		
			</ul>			
		</div>		
	</div>
	<!--工具栏-->
	<div class="Toolbar Toolbar2">
		<div class="toolbar" id="dataAnalysis" style="display: none">
			<ul class="tools" >
				<li id="inputOneData" class="tool">
					<button  id="analysisBtn" title="录入数据">
						<i class="i i13"></i>
					</button>	
				</li>
			</ul>			
		</div>
		
		<div class="toolbar" id="dataMining" style="display: none">
			<ul class="tools" >		
			</ul>				
		</div>

		<input type="hidden" value="<%=basePath2%>" id="basePath2">
	</div> 
	
	
<script language="JavaScript" type="text/javascript">
function loadHead(pageName){
	if(pageName=="dataAnalysis"){
		$("#dataAnalysis").show();
	}
	
	if(pageName=="dataMining"){
		alert("此模块正在开发中...")
		return;
	}
		
};

$(".tool").click(function(){
	var basePath=$("#basePath2").val();
	var id = $(this).attr("id");
	if(id==""){
		alert("此模块正在开发中...");
		return;
	}
	location.href = basePath + "jsp/" + id + ".jsp";
});	


</script>