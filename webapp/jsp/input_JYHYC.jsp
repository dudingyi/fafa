<%@   page   language="java"   contentType="text/html;   charset=utf-8"%>
<%
String path2 = request.getContextPath();
String basePath2 = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path2+"/";
%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<div id="JYHYC">
	<!-- <dd id="cp_pihao">
		<i class="w200 dis-ib">产品批号：</i>
		<input class="defaultOption" id="cp_pihao_str" maxlength="16" onkeyup="inputstring(this)">
	</dd> -->
	<dd id="yc_pihao" >
		<i class="w200 dis-ib">药材批号：</i>
		<label>
			<input class="defaultOption" id="yc_pihao_str" placeholder="示例:Y1801001" maxlength="8" onkeyup="inputstring(this)">
		</label>
	</dd>
	<dd id="xingz">
		<i class="w200 dis-ib">性状及鉴别：</i>
		<select class="defaultOption" id="xingzf" >
			<option value="是">是</option>
			<option value="否">否</option>
		</select>
	</dd>
	<dd id="wate_cont">
		<i class="w200 dis-ib">水分：</i>
		<label>
			<input class="defaultOption" id="wate_contf" maxlength="8" placeholder="≤12.0%(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<dd id="impure">
		<i class="w200 dis-ib">杂质：</i>
		<label>
			<input class="defaultOption" id="impuref" maxlength="8" placeholder="≤3.0%(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<dd id="acidInsolubleAsh">
		<i class="w200 dis-ib">酸不溶性灰分：</i>
		<label>
			<input class="defaultOption" id="acidInsolubleAshf" maxlength="8" placeholder="≤3.0%(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<dd id="ash">
		<i class="w200 dis-ib">总灰分：</i>
		<label>
			<input class="defaultOption" id="ashf" maxlength="8" placeholder="≤10.0%(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<br>
	
	<dd id="metal">
		<i class="w200 dis-ib">重金属及有害元素：</i>
	</dd>
	<dd id="Pb">
		<i class="w200 dis-ib">铅：</i>
		<label>
			<input class="defaultOption" id="Pbf" maxlength="8" placeholder="≤5.0mg/kg(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">mg/kg</i>
	</dd>
	<dd id="Cd">
		<i class="w200 dis-ib">镉：</i>
		<label>
			<input class="defaultOption" id="Cdf" maxlength="8" placeholder="≤0.3mg/kg(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">mg/kg</i>
	</dd>
	<dd id="As">
		<i class="w200 dis-ib">砷：</i>
		<label>
			<input class="defaultOption" id="Asf" maxlength="8" placeholder="≤2.0mg/kg(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">mg/kg</i>
	</dd>
	<dd id="Cu">
		<i class="w200 dis-ib">铜：</i>
		<label>
			<input class="defaultOption" id="Cuf"  maxlength="8" placeholder="≤20.0mg/kg(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">mg/kg</i>
	</dd>
	<dd id="Hg">
		<i class="w200 dis-ib">汞：</i>
		<label>
			<input class="defaultOption" id="Hgf"  maxlength="8" placeholder="≤0.2mg/kg(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">mg/kg</i>
	</dd>
	<br>
	
	<dd id="SO2">
		<i class="w200 dis-ib">二氧化硫残余物：</i>
		<label>
			<input class="defaultOption" id="SO2f"  maxlength="8" placeholder="≤150.0mg/kg(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">mg/kg</i>
	</dd>
	<br>
	
	<dd id="content">
		<i class="w200 dis-ib">含量测定（干燥品）：</i>
	</dd>
	<dd id="gzlys">
		<i class="w200 dis-ib">绿原酸：</i>
		<label>
			<input class="defaultOption" id="gzlysf"  maxlength="8" placeholder="≥2.8%(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<dd id="gzmxcg">
		<i class="w200 dis-ib">木犀草苷：</i>
		<label>
			<input class="defaultOption" id="gzmxcgf"  maxlength="8" placeholder="≥0.050%(保留三位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<br>
	
	<dd id="extraction">
		<i class="w200 dis-ib">提取量：</i>
	</dd>
	<dd id="lys">
		<i class="w200 dis-ib">绿原酸：</i>
		<label>
			<input class="defaultOption" id="lysf"  maxlength="8" placeholder="≥2.0%(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<dd id="xlys">
		<i class="w200 dis-ib">新绿原酸：</i>
		<label>
			<input class="defaultOption" id="xlysf"  maxlength="8" placeholder="≥0.05%(保留两位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<dd id="ylys">
		<i class="w200 dis-ib">隐绿原酸：</i>
		<label>
			<input class="defaultOption" id="ylysf"  maxlength="8" placeholder="≥0.05%(保留两位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<dd id="mqzg">
		<i class="w200 dis-ib">断氧化马钱子苷：</i>
		<label>
			<input class="defaultOption" id="mqzgf"  maxlength="8" placeholder="≥0.2%(保留一位小数)" onkeyup="clearNoNum(this)">
		</label>
		<i class="w200 dis-ib">%</i>
	</dd>
	<br>
	
	<dd id="HPLC">
		<i class="w200 dis-ib">指纹图谱HPLC：</i>
		<label>
			<input class="defaultOption" id="HPLCf"  maxlength="8" placeholder=">0.95(保留两位小数)" onkeyup="clearNoNum(this)">
		</label>
	</dd>
</div>