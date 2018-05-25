/**
 * Created by Du Dingyi on 2018/5/22.
 */
function JYHYC_PH() {
	var basePath = $("#basePath").val();

	var $JYHYC_ZJTPH_STR = $("#JYHYC_ZJTPH_STR");
	var $JYHYC_YCPH_STR = $("#JYHYC_YCPH_STR");
	//alert($JYHYC_ZJTPH_STR.val());
	//alert($JYHYC_YCPH_STR.val());
	
	
	if ( !/^Z\d{6}\b/.test($JYHYC_ZJTPH_STR.val()) ) {   //判断是否为Z180101格式
		// alert($cp_pihao);
		//alert("1");
		alert("中间体批号错误，请检查是否首字母为大写Z及数字位数正确");
		return false;
	}
	if ( !/^Y\d{7}\b/.test($JYHYC_YCPH_STR.val()) ) {   //判断是否为Y1801001格式
		// alert($cp_pihao);
		//alert($cp_pihao.val());
		//alert("2");
		alert("药材批号错误，请检查是否首字母为大写Y及数字位数正确");
		return false;
	}
	//alert("3");
	var url = basePath + "inputYuanliao/JYHYC_PH.do";
	var data = {};
	data.JYHYC_ZJTPH_STR = $JYHYC_ZJTPH_STR.val();
	data.JYHYC_YCPH_STR = $JYHYC_YCPH_STR.val();

	$.ajax({
		type : 'POST',
		url : url,
		data : data,
		async : false,
		dataType : 'text',
		success : function(data) {
			// alert($.trim(data.response));
			// console.log("1");
			alert("添加成功");
			// console.log("2");
		},
		error : function() {
			alert("添加失败，请检查数据库连接");
		}
	});

}
