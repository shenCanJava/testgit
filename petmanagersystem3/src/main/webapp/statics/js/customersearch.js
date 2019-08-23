$(document).ready(
		function() {
			$(".customerInfoTable tr:odd").css("background-color", "white");
			$("a[no]").click(
					function() {
						var no = $(this).attr("no");
						var customerName = $(".customerName").val().trim();
						location.href = $(".path").val()
								+ "/customer/query.html?currentPageNo=" + no
								+ "&customerName=" + customerName;
					})
			$(".queryBtn").click(
					function() {
						var customerName = $(".customerName").val().trim();
						location.href = $(".path").val()
								+ "/customer/query.html?customerName="
								+ customerName;
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
						var customerName = $(".customerName").val().trim();
						location.href = $(".path").val()
								+ "/customer/query.html?currentPageNo=" + go
								+ "&customerName=" + customerName;

					})
			$(".updateBtn").click(
					function() {
						var id = $(this).prev().val();
						$.post($(".path").val() + "/customer/queryEntityInfo",
								"id=" + id, function(result) {
									$(".id").val(result.id);
									$(".customerName1")
											.val(result.customerName);
									$(".customerPhone").val(
											result.customerPhone);
									$(".customerGender").val(
											result.customerGender);
									$(".customerAge").val(result.customerAge);
									$(".customerAddress").val(
											result.customerAddress);
									$(".integral").val(result.integral);
									$(".customerMember").val(
											result.customerMember);
									$(".balance").val(result.balance);
								})
					})
			$(".resetBtn").click(function() {
				$(".id").val("");
				$(".customerName1").val("");
				$(".customerPhone").val("");
				$(".customerGender").val("请选择");
				$(".customerAge").val("");
				$(".customerAddress").val("");
				$(".integral").val("");
				$(".customerMember").val("0");
				$(".balance").val("");
			})
			$(".updateBtn1").click(
					function() {
						var id = $(".id").val();
						var customerName = $(".customerName1").val().trim();
						var customerPhone = $(".customerPhone").val().trim();
						var customerGender = $(".customerGender").val().trim();
						var customerAge = $(".customerAge").val().trim();
						var customerAddress = $(".customerAddress").val()
								.trim();
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
						var json = {
							"id" : id,
							"customerName" : customerName,
							"customerPhone" : customerPhone,
							"customerGender" : customerGender,
							"customerAge" : customerAge,
							"customerAddress" : customerAddress,
							"integral" : integral,
							"customerMember" : customerMember,
							"balance" : balance
						}
						$.post($(".path").val() + "/customer/updateInfo", json,
								function(result) {
									if (result > 0) {
										alert("修改成功！");
										return;
									} else {
										alert("修改失败！");
										return;
									}
								})
					})
			$(".deleteBtn").click(
					function() {
						var bo = confirm("您确定要删除吗？");
						if (bo == false) {
							return;
						}
						var id = $(this).prev().prev().val();
						var $tr = $(this);
						$.post($(".path").val() + "/customer/removeInfo", "id="
								+ id, function(result) {
							if (result > 0) {
								alert("删除成功！");
								location.href = $(".path").val()
										+ "/customer/query.html";
								return;
							} else {
								alert("删除失败！");
								return;
							}

						})
					})
			$(".removeBtn").click(function() {
				var array = new Array();
				$.each($("input[name='ids']:checked"), function(index, d) {
					array[index] = $(d).val();
				});
				if(array==""){
					alert("请选择删除的信息！");
					return;
				}
				$.post($(".path").val()+"/customer/removeInfoByIds","ids="+array,function(result){
					if(result>0){
						alert("删除成功！");
						location.href = $(".path").val()
						+ "/customer/query.html";
						return;
					}else{
						alert("删除失败！");
						return;
					}
				})
				

			})

		})