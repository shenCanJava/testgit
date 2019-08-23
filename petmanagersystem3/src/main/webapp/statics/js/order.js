$(document).ready(function() {
			$("a[no]").click(
					function() {
						var no = $(this).attr("no");
						var petName = $(".petName").val().trim();
						var employee_Name = $(".employee_Name").val().trim();
						location.href = $(".path").val()
								+ "/order/query.html?currentPageNo=" + no
								+ "&petName=" + petName+"&employee_Name="+employee_Name;
					})
			$(".queryBtn").click(
					function() {
						var petName = $(".petName").val().trim();
						var employee_Name = $(".employee_Name").val().trim();
						location.href = $(".path").val()
								+ "/order/query.html?petName="
								+ petName+"&employee_Name="+employee_Name;
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
						var petName = $(".petName").val().trim();
						var employee_Name = $(".employee_Name").val().trim();
						location.href = $(".path").val()
								+ "/order/query.html?currentPageNo=" + go
								+ "&petName=" + petName+"&employee_Name="+employee_Name;

					})
					$(".petTable tr:gt(0)").each(function() {
						var text = $(this).find("td:eq(5)").text().trim();
						if(text=="已结算"){
							$(this).find("td:eq(7)").find(".jieSuanBtn").attr("disabled","disabled");
						}
					})
					$(".jieSuanBtn").click(function() {
						var $this=$(this);
						var bo=confirm("您确定要结算吗？");
						if(bo==false){
							return;
						}
						var id=$(this).prev().val();
						var customerId=$(this).prev().prev().val();
						var money=$(this).parent("td").prev().prev().prev().text().trim();
						$.post($(".path").val()+"/order/jieSuan","id="+id+"&customerId="+customerId+"&money="+money,function(result){
							if(result>0){
								$this.parent("td").prev().prev().text("已结算");
								$this.attr("disabled","disabled");
							}else{
								alert("余额不足，请及时充值！");
								return;
							}
							
						})
						
					})
})