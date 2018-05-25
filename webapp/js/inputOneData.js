/**
 * Created by Du Dingyi on 2018/5/22.
 */
$(document).ready(function() {
    var basePath=$("#basePath").val();
    var $midName = $("#midName");
    var $JYHYC = $('#JYHYC');
    var $JYHYC_PH = $('#JYHYC_PH');
    var $QHYC = $('#QHYC');
    
    
    
    changeInputItem("1");
    
    $("#midName").change(function() {
        var optionValue = $midName.val();
        changeInputItem(optionValue);
    });
    
    function changeInputItem(midValue) {
    	$JYHYC.hide();
    	$JYHYC_PH.hide();
	    $QHYC.hide();
    	document.getElementById("dataform").reset();
    	//alert("midValue"+midValue);
    	//var optionValue = midValue;
    	//alert("optionValue"+optionValue);
    	switch(parseInt(midValue))
    	{
	    	case 1:
	    		//alert("1");
	    		$JYHYC.show();
	    		break;
	    	case 2:
	    		//alert("2");
	    		$JYHYC_PH.show();
	    		break;
	    	case 3:
	    		//alert("3");
	    		$QHYC.show();
	    		break;
	    	default:
	    		//alert("default");
	    		break;
    	}
    	
    }
    
    $("#save").click(function() {
    	switch( parseInt($midName.val()) )
    	{
	    	case 1:
	    		//alert("JYHYC");
	    		JYHYC();
	    		break;
	    	case 2:
	    		//alert("JYHYC_PH");
	    		JYHYC_PH();
	    		break;
	    	case 3:
	    		alert("QHYC");
	    		break;
	    	default:
	    		break;
    	}
    });


});
