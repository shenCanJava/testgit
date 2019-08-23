$(document).ready(function() {
	$(".queryBtn").click(function() {
		var productName=$(".productName").val().trim();
		location.href=$(".path").val()+"/product/query.html?productName="+productName;
	})
	$(".shangBtn").click(function() {
		var id=$(this).prev().val();
		$.post($(".path").val()+"/product/shangJia","id="+id,function(result){
			if(result>0){
				location.href=$(".path").val()+"/product/query.html";
			}
		})
	})
	$(".xiaBtn").click(function() {
		var id=$(this).prev().prev().val();
		$.post($(".path").val()+"/product/xiaJia","id="+id,function(result){
			if(result>0){
				location.href=$(".path").val()+"/product/query.html";
			}
		})
	})
})