$(document).ready(function() {
	$("a[no]").click(
			function() {
				var no = $(this).attr("no");
				var employee_Name = $(".employee_Name").val().trim();
				var employee_Id_Number = $(".employee_Id_Number").val().trim();
				location.href = $(".path").val()
						+ "/employee/query.html?currentPageNo=" + no
						+ "&employee_Name=" + employee_Name+"&employee_Id_Number="+employee_Id_Number;
			})
	$(".queryBtn").click(
			function() {
				var employee_Name = $(".employee_Name").val().trim();
				var employee_Id_Number = $(".employee_Id_Number").val().trim();
				location.href = $(".path").val()
						+ "/employee/query.html?employee_Name="
						+ employee_Name+"&employee_Id_Number="+employee_Id_Number;
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
				var employee_Name = $(".employee_Name").val().trim();
				var employee_Id_Number = $(".employee_Id_Number").val().trim();
				location.href = $(".path").val()
						+ "/employee/query.html?currentPageNo=" + go
						+ "&employee_Name=" + employee_Name+"&employee_Id_Number="+employee_Id_Number;

			})
			$(".deleteBtn").click(function() {
				var bo=confirm("您确定要删除吗？");
				if(bo==false){
					return;
				}
				var id=$(this).prev().val();
				$.post($(".path").val()+"/employee/removeInfo","id="+id,function(result){
					if(result>0){
						alert("删除成功！");
						location.href=$(".path").val()+"/employee/query.html";
					}else{
						alert("删除失败！");
						return;
					}
					
				})
			})
})