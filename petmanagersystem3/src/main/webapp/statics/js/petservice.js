$(document).ready(function() {
	$("a[no]").click(
			function() {
				var no = $(this).attr("no");
				location.href = $(".path").val()
						+ "/petServiceInfo/query.html?currentPageNo=" + no;
			})
	$(".tiao").click(
			function() {
				var go = $(".go").val().trim();
				if (go == "") {
					alert("请输入页码！");
					return;
				}
				if (isNaN(go)) {
					alert("请输入数字！");
					$(".go").val("");
					return;
				}
				var lastPage = $(".lastPage").val();
				if (go < 1) {
					alert("页码不能小于1！");
					$(".go").val("");
					return;
				}
				if (go > lastPage) {
					alert("请输入正确页码！");
					$(".go").val("");
					return;
				}
				location.href = $(".path").val()
						+ "/petServiceInfo/query.html?currentPageNo=" + go;

			})
	
	$(".saveBtn").click(function() {
		var serviceName=$(".serviceName").val().trim();
		var smallShortPrice=$(".smallShortPrice").val().trim();
		var smallLongPrice=$(".smallLongPrice").val().trim();
		var mediumShortPrice=$(".mediumShortPrice").val().trim();
		var mediumLongPrice=$(".mediumLongPrice").val().trim();
		var bigShortPrice=$(".bigShortPrice").val().trim();
		var bigLongShortPrice=$(".bigLongShortPrice").val().trim();
		if(serviceName==""){
			alert("服务名称不能为空！");
			return;
		}
		if(smallShortPrice==""){
			alert("小型短毛价格不能为空！");
			return;
		}
		if(isNaN(smallShortPrice)){
			alert("小型短毛价格必须为数字！");
			return;
		}
		if(smallShortPrice<=0){
			alert("请正确填写价格！");
			return;
		}
		
		if(smallLongPrice==""){
			alert("小型长毛价格不能为空！");
			return;
		}
		if(isNaN(smallLongPrice)){
			alert("小型长毛价格必须为数字！");
			return;
		}
		if(smallLongPrice<=0){
			alert("请正确填写价格！");
			return;
		}
		
		if(mediumShortPrice==""){
			alert("中型短毛价格不能为空！");
			return;
		}
		if(isNaN(mediumShortPrice)){
			alert("中型短毛价格必须为数字！");
			return;
		}
		if(mediumShortPrice<=0){
			alert("请正确填写价格！");
			return;
		}
		if(mediumLongPrice==""){
			alert("中型长毛价格不能为空！");
			return;
		}
		if(isNaN(mediumLongPrice)){
			alert("中型长毛价格必须为数字！");
			return;
		}
		if(mediumLongPrice<=0){
			alert("请正确填写价格！");
			return;
		}
		if(bigShortPrice==""){
			alert("大型短毛价格不能为空！");
			return;
		}
		if(isNaN(bigShortPrice)){
			alert("大型短毛价格必须为数字！");
			return;
		}
		if(bigShortPrice<=0){
			alert("请正确填写价格！");
			return;
		}
		if(bigLongShortPrice==""){
			alert("大型长毛价格不能为空！");
			return;
		}
		if(isNaN(bigLongShortPrice)){
			alert("大型长毛价格必须为数字！");
			return;
		}
		if(bigLongShortPrice<=0){
			alert("请正确填写价格！");
			return;
		}
		var json={
				"serviceName":serviceName,
				"smallShortPrice":smallShortPrice,
				"smallLongPrice":smallLongPrice,
				"mediumShortPrice":mediumShortPrice,
				"mediumLongPrice":mediumLongPrice,
				"bigShortPrice":bigShortPrice,
				"bigLongShortPrice":bigLongShortPrice
		}
		$.post($(".path").val()+"/petServiceInfo/insertInfo",json,function(result){
			if(result>0){
				alert("增加成功！");
				location.href=$(".path").val()+"/petServiceInfo/query.html";
			}else{
				alert("增加失败！");
				return;
			}
		})
	})
	$(".resetBtn").click(function() {
		$(".serviceName").val("");
		$(".smallShortPrice").val("");
		$(".smallLongPrice").val("");
		$(".mediumShortPrice").val("");
		$(".mediumLongPrice").val("");
		$(".bigShortPrice").val("");
		$(".bigLongShortPrice").val("");
	})
	$(".deleteBtn").click(function() {
		var bo=confirm("你确定要删除吗？");
		if(bo==false){
			return;
		}
		var id=$(this).prev().val();
		$.post($(".path").val()+"/petServiceInfo/removeInfo","id="+id,function(result){
			if(result>0){
				alert("删除成功！");
				location.href=$(".path").val()+"/petServiceInfo/query.html";
			}else{
				alert("删除失败！");
				return;
			}
		})
	})
	
})