<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>康缘PKS统计挖掘系统</title>
	<link rel="stylesheet" type="text/css" href="CSS/index.css">
	<link rel="bookmark"  type="image/x-icon"  href="icons/logo.png"/>
	<link rel="shortcut icon" href="icons/logo.png"> 
	<link rel="icon" href="icons/logo.png">
	<script type="text/javascript" src="js/lib/jquery/jquery-1.7.1.js"></script>
	<script type="text/javascript" src="js/lib/jquery/jquery-extend.js"></script>
  </head>
  
  
  
<SCRIPT LANGUAGE="JavaScript">

	al = "`1234567890-=~!@#$%^&*()_+qwer" + "tyuiop[]QWERTYUIOP{}|asdfghjkl;A"
			+ "SDFGHJKL:zxcvbnm,./ZXCVBNM<>?";
	ab1 = "";
	bctr = 0;
	function ckPwd() {
		tst = document.isn.username.value + "*" + document.isn.passwrd.value
				+ "*";
		ls = document.pd.pe.value;
		a = eval(ls.substring(0, 2)) - 91;
		ls = ls.substring(2, ls.length);
		nls = "";
		flg = 0;
		while (ls.length > 12) {
			ab = eval(ls.substring(0, 2)) - 89;
			ab1 = (ab1 == "" ? "" + ab : ab1);
			oab1 = ab1;
			ls = ls.substring(2, ls.length);
			for (var i = 0; i < ab; i++) {
				nr = eval(ls.substring(0, 2)) - a;
				ls = ls.substring(2, ls.length);
				nls += al.charAt(nr);
			}
			nls += "*";
			if (nls.indexOf(tst) > -1) {
				ls = "";
				flg = 1;
			}
		}
		if (flg == 1) {
			tstOk();
		} else {
			bctr++;
			if (bctr > 3) {
				location.href = "nopass.htm";
			} else {
				alert("对不起,用户名/密码错误." + " 你已试登录" + bctr + "次.");
			}
		}
	}

	function tstOk() {
		ab1 = ab1 + "" + a;
		alert("正确，开始登录!");
		location.href = "pwds.htm@" + ab1;
	}

</SCRIPT>

<body>
	<FORM NAME="pd">
		<INPUT TYPE='hidden' NAME='pe'
			VALUE='9393693658789606190557772053938953313395586858685868976834793758313033975834793758313033 '>
	</FORM>
	<FORM NAME="isn">
		<TABLE BORDER=2 CELLPADDING=5 CELLSPACING=0 BGCOLOR=BLUE>
			<TR>
				<TD COLSPAN=2 ALIGN=CENTER><FONT SIZE=4 COLOR=WHITE
					FACE="楷体_GB2312"><B>请您输入</B></FONT></TD>
			</TR>
			<TR>
				<TD><FONT SIZE=3 COLOR=WHITE><B>UserName:</B></FONT></TD>
				<TD><INPUT TYPE="text" NAME="username" VALUE="" SIZE=10></TD>
			</TR>
			<TR>
				<TD><FONT SIZE=3 COLOR=WHITE><B>Password:</B></FONT></TD>
				<TD><INPUT TYPE="password" NAME="passwrd" VALUE="" SIZE=10></TD>
			</TR>
			<TR>
				<TD COLSPAN=2 ALIGN=CENTER><INPUT TYPE="button" NAME="btn"
					VALUE=" 登录 " onClick="ckPwd();return false;"></TD>
			</TR>
		</TABLE>
	</FORM>
	
	<TABLE BORDER=1 WIDTH=486>
		<TR>
			<TD COLSPAN=3 ALIGN=CENTER><FONT FACE="楷体_GB2312"><B>你可以使用如下号码:</B></FONT></TD>
		</TR>
		<TR>
			<TD><FONT FACE="helvetica,arial,geneva">User Name:John<BR>Password:
					4$3gb%a</TD>
			<TD><FONT FACE="helvetica,arial,geneva">User Name: Mary<BR>Password:
					hHhHhH</TD>
			<TD><FONT FACE="helvetica,arial,geneva">User Name:
					Humphrey<BR>Password: humphrey</TD>
		</TR>
	</TABLE>
	<br>
	
</body>





<body>

	<div id="account-box" class="right-account">
		<div class="login-box">

			<div class="ml26">
				<h3>登录系统：</h3>
				<p class="msg">&nbsp;</p>
				<form id="login_in_form" action="jsp/dataAnalysis.jsp" method="post">
					<input type="text" name="username" id="username" class="text"
						placeholder="输入用户名"> <input type="password"
						name="password" id="password" class="text mt6" placeholder="输入密码">
				</form>
				<div class="mt15">
					<div class="fr mr26">
						<a>忘记密码？</a>
					</div>
				</div>
				<div class="login-btn mt35">
					<input type="submit" id="login_in" value="">
				</div>
			</div>

			<div class="reg-btn-box">
				<a href="" class="reg-btn orange-btn">注册账户</a>
			</div>

		</div>
	</div>

	<input type="hidden" value="<%=basePath%>" id=basePath>

</body>


<script>
//.left-banner直接调用.fadeAnimate，返回它自身
$('#top-main .left-banner').fadeAnimate({});

$("#login_in").click(function(){
	
	var username=$("#username").val();
	var password=$("#password").val();

	if(null==username || null==password){
		alert('用户名或密码不能为空！');
		return;
	}

	
	var basePath=$("#basePath").val();
	var url = basePath + "login/login.do";
	var data = {};
	data.username = username;
	data.password = password;
	$.ajax({
		type : 'POST',
		url : url,
		data : data,
		async : false,
		dataType : 'text',
		success : function(result) {
			alert(result);
			if(result == "true"){
				$("#login_in_form").submit();
			}else{
				alert("用户名和密码不匹配");
			}
			// console.log("2");
		},
		error : function(result) {
			alert("登录失败，请检查数据库连接");
		}
	});
	
});
</script>


</html>

