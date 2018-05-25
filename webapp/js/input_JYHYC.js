/**
 * Created by Du Dingyi on 2018/5/22.
 */ 
function JYHYC(){
	 var basePath=$("#basePath").val();
	 
	 var $yc_pihao = $("#yc_pihao_str"),
        $xingz = $("#xingzf"),
        $wate_cont = $("#wate_contf"),
        $impure = $("#impuref"),
        $acidInsolubleAshf = $("#acidInsolubleAshf"),
        $ash = $("#ashf"),
        $Pb = $("#Pbf"),
        $Cd = $("#Cdf"),
        $As = $("#Asf"),
        $Cu = $("#Cuf"),
        $Hg = $("#Hgf"),
        $SO2 = $("#SO2f"),
        $gzlys = $("#gzlysf"),
        $gzmxcg = $("#gzmxcgf"),
        $lys = $("#lysf"),
        $xlys = $("#xlysf"),
        $ylys = $("#ylysf"),
        $mqzg = $("#mqzgf"),
	 	$HPLCf = $("#HPLCf");
	 	//alert($xingz.val());
	 	//alert($acidInsolubleAshf.val());
		if ( !/^Y\d{7}\b/.test($yc_pihao.val()) ) {   //判断是否为Y1801001格式
			// alert($cp_pihao);
			//alert($cp_pihao.val());
			//alert("2");
			alert("药材批号错误，请检查是否首字母为大写Y及数字位数正确");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($wate_cont.val()) ) {   //判断水分是否保留一位小数
			alert("水分输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($impure.val()) ) {   //判断杂质是否保留一位小数
			alert("杂质输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($acidInsolubleAshf.val()) ) {   //判断酸不溶性灰分是否保留一位小数
			alert("酸不溶性灰分输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($ash.val()) ) {   //判断总灰分是否保留一位小数
			alert("总灰分输入错误");
			return false;
		}	
		////////////////////////////////
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($Pb.val()) ) {   //判断铅是否保留一位小数
			alert("铅输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($Cd.val()) ) {   //判断镉是否保留一位小数
			alert("镉输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($As.val()) ) {   //判断砷是否保留一位小数
			alert("砷输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($Cu.val()) ) {   //判断铜是否保留一位小数
			alert("铜输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($Hg.val()) ) {   //判断汞是否保留一位小数
			alert("汞输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($SO2.val()) ) {   //判断二氧化硫是否保留一位小数
			alert("二氧化硫输入错误");
			return false;
		}
        //////////////////////////////////
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($gzlys.val()) ) {   //判断绿原酸干燥品是否保留一位小数
			alert("绿原酸干燥品输入错误");
			return false;
		}
		//   /^[0-9]+(\.\d{1,3})?$/    保留最多三位小数
		if ( !/^[0-9]+(.[0-9]{3})?$/.test($gzmxcg.val()) ) {   //判断木犀草苷干燥品是否保留三位小数
			alert("木犀草苷干燥品输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($lys.val()) ) {   //判断绿原酸提取量是否保留一位小数
			alert("绿原酸提取量输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{2})?$/.test($xlys.val()) ) {   //判断新绿原酸提取量是否保留两位小数
			alert("新绿原酸提取量输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{2})?$/.test($ylys.val()) ) {   //判断隐绿原酸提取量是否保留两位小数
			alert("隐绿原酸提取量输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{1})?$/.test($mqzg.val()) ) {   //判断断氧化马钱子苷提取量是否保留一位小数
			alert("断氧化马钱子苷提取量输入错误");
			return false;
		}
		if ( !/^[0-9]+(.[0-9]{2})?$/.test($HPLCf.val()) ) {   //判断指纹图谱HPLC是否保留两位小数
			alert("指纹图谱HPLC输入错误");
			return false;
		}
		
		/* var $yc_pihao = $("#yc_pihao_str"),
	        $xingz = $("#xingzf"),
	        $wate_cont = $("#wate_contf"),
	        $impure = $("#impuref"),
	        $acidInsolubleAshf = $("#acidInsolubleAshf"),
	        $ash = $("#ashf"),
	        $Pb = $("#Pbf"),
	        $Cd = $("#Cdf"),
	        $As = $("#Asf"),
	        $Cu = $("#Cuf"),
	        $Hg = $("#Hgf"),
	        $SO2 = $("#SO2f"),
	        $gzlys = $("#gzlysf"),
	        $gzmxcg = $("#gzmxcgf"),
	        $lys = $("#lysf"),
	        $xlys = $("#xlysf"),
	        $ylys = $("#ylysf"),
	        $mqzg = $("#mqzgf"),
		 	$HPLCf = $("#HPLCf");*/
		 	
        var url = basePath + "inputYuanliao/JYHYC.do",
            data = {};
        data.yc_pihao = $yc_pihao.val();
        data.xingz = $xingz.val();
        data.wate_cont = $wate_cont.val();
        data.impure = $impure.val();
        data.acidInsolubleAshf = $acidInsolubleAshf.val();
        data.ash = $ash.val();
        data.Pb = $Pb.val();
        data.Cd = $Cd.val();
        data.As = $As.val();
        data.Cu = $Cu.val();
        data.Hg = $Hg.val();
        data.SO2 = $SO2.val();
        data.gzlys = $gzlys.val();
        data.gzmxcg = $gzmxcg.val();
        data.lys = $lys.val();
        data.xlys = $xlys.val();
        data.ylys = $ylys.val();
        data.mqzg = $mqzg.val();
        data.HPLCf = $HPLCf.val();
        
        $.ajax({
            type: 'POST',
            url: url,
            data: data,
            async: false,
            dataType: 'text',
            success:function(data) {
                //alert($.trim(data.response));
            	//console.log("1");
            	alert("金银花药材质量数据添加成功");
            	//console.log("2");
            },
            error:function(){
            	alert("添加失败，请检查数据库连接");
		    }
        });



}
