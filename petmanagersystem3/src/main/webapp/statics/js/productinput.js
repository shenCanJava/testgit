$(document).ready(function() {
	$(".luRu").click(function() {
		var productName = $(".productName").val().trim();
		var purchasePrice = $(".purchasePrice").val().trim();
		var price = $(".price").val().trim();
		var specifications = $(".specifications").val().trim();
		var type = $(".type").val().trim();
		var stock = $(".stock").val().trim();
		if (productName == "") {
			alert("产品名不能为空！");
			return;
		}
		if (purchasePrice == "") {
			alert("产品进价不能为空！");
			return;
		}
		if (isNaN(purchasePrice)) {
			alert("产品进价必须是数字！");
			return;
		}
		if (purchasePrice <= 0) {
			alert("请输入正确进价！");
			return;
		}
		if (price == "") {
			alert("产品售价不能为空！");
			return;
		}
		if (isNaN(price)) {
			alert("产品售价必须是数字！");
			return;
		}
		if (price < purchasePrice) {
			alert("这么卖就赔本了！");
			return;
		}
		if (specifications == "") {
			alert("产品规格不能为空！");
			return;
		}

		if (type == "") {
			alert("产品类型不能为空！");
			return;
		}
		if (stock == "") {
			alert("入库数量不能为空！");
			return;
		}
		if (stock <= 0) {
			alert("请输入正确入库数量！");
		}
		var json={
				"productName":productName,
				"purchasePrice":purchasePrice,
				"price":price,
				"specifications":specifications,
				"type":type,
				"stock":stock
		}
		$.post($(".path").val()+"/product/insertInfo",json,function(result){
			if(result>0){
				alert("录入成功！");
			}else{
				alert("录入失败！");
				return;
			}
		})
	})

	$(".resetBtn").click(function() {
		$(".productName").val("");
		$(".purchasePrice").val("");
		$(".price").val("");
		$(".specifications").val("");
		$(".type").val("");
		$(".stock").val("");
	})

})