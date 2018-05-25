<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>晚上次什么</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<link rel="stylesheet" href="../CSS/kinerLottery.css">
	<script type="text/javascript" src="../js/lib/jquery/jquery-1.7.1.js"></script>
	<script type="text/javascript" src="../js/lib/jquery/jquery-extend.js"></script>
</head>
<body>

<div id="box" class="box">
	<div class="outer KinerLottery KinerLotteryContent">
		<img src="../images/zhuanpan.png">
	</div>
	<!-- 大专盘分为三种状态：活动未开始（no-start）、活动进行中(start)、活动结束(completed),
	可通过切换class进行切换状态，js会根据这3个class进行匹配状态 -->
	<div class="inner KinerLotteryBtn start"></div>
</div>

<script src="../js/zepto.min.js"></script>
<script src="../js/kinerLottery.js"></script>
<script>
	/**
	 * 根据转盘旋转角度判断获得什么奖品
	 * @param deg
	 * @returns {*}
	 */
	var whichAward = function(deg) {
		if ((deg > 330 && deg <= 360) || (deg >= 0 && deg <= 30)) { //10流量
			return "小可爱的亲亲";
		} else if ((deg > 30 && deg <= 90)) { //IPhone 7
			return "可爱多";
		} else if (deg > 90 && deg <= 150) { //30流量
			return "烧烤";
		} else if (deg > 150 && deg <= 210) { //5元话费
			return "火锅";
		} else if (deg > 210 && deg <= 270) { //IPad mini 4
			return "小龙虾";
		} else if (deg > 270 && deg <= 330) { //20元话费
			return "猪油渣";
		}else{
			return "小可爱的亲亲";
		}
	}
	var KinerLottery = new KinerLottery({
		rotateNum: 5, //转盘转动圈数
		body: "#box", //大转盘整体的选择符或zepto对象
		direction: 0, //0为顺时针转动,1为逆时针转动
		disabledHandler: function(key) {
			switch (key) {
				case "noStart":
					alert("活动尚未开始");
					break;
				case "completed":
					alert("活动已结束");
					break;
			}
		}, //禁止抽奖时回调
		clickCallback: function() {
			//此处访问接口获取奖品
			function random() {
				return Math.floor(Math.random() * 60)-30;
			}
			this.goKinerLottery(random());
		}, //点击抽奖按钮,再次回调中实现访问后台获取抽奖结果,拿到抽奖结果后显示抽奖画面
		KinerLotteryHandler: function(deg) {
			alert("成功得到" + whichAward(deg)+"! 其他不存在的");
		} //抽奖结束回调
	});
</script>

</body>
</html>
