$(document).ready(function() {
	$(".luRuBtn").click(function() {
		var customerName = $(".customerName").val().trim();
		var customerPhone = $(".customerPhone").val().trim();
		var customerGender = $(".customerGender").val();
		var customerAge = $(".customerAge").val().trim();
		var customerAddress = $(".customerAddress").val().trim();
		var integral = $(".integral").val().trim();
		var customerMember = $(".customerMember").val();
		var balance = $(".balance").val().trim();
		if (customerName == "") {
			alert("客户姓名不能为空！");
			return;
		}
		if (customerPhone == "") {
			alert("联系方式不能为空！");
			return;
		}
		if (customerGender == "请选择") {
			alert("请选择性别！");
			return;
		}
		if (customerAge == "") {
			alert("年龄不能为空！");
			return;
		}
		if (isNaN(customerAge)) {
			alert("年龄必须是数字！");
			return;
		}
		if (customerAddress == "") {
			alert("地址不能为空！");
			return;
		}
		if (integral == "") {
			alert("积分不能为空！");
			return;
		}
		if (isNaN(integral)) {
			alert("积分必须是数字！");
			return;
		}
		if (balance == "") {
			alert("余额不能为空！");
			return;
		}
		if (isNaN(balance)) {
			alert("余额必须是数字！");
			return;
		}
		var json={
				"customerName":customerName,
				"customerPhone":customerPhone,
				"customerGender":customerGender,
				"customerAge":customerAge,
				"customerAddress":customerAddress,
				"integral":integral,
				"customerMember":customerMember,
				"balance":balance
		}
		$.post($(".path").val()+"/customer/insert",json,function(result){
			if(result>0){
				alert("录入成功！");
				return;
			}else{
				alert("录入失败！");
				return;
			}
		})
	})
	$(".resetBtn").click(function() {
		$(".customerName").val("");
		$(".customerPhone").val("");
		$(".customerGender").val("请选择");
		$(".customerAge").val("");
		$(".customerAddress").val("");
		$(".integral").val("");
		$(".customerMember").val("0");
		$(".balance").val("");
	})
})