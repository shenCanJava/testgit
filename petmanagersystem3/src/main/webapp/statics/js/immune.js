$(document).ready(function() {
	$("a[no]").click(
					function() {
						var no = $(this).attr("no");
						var petName = $(".petName").val().trim();
						var customerName=$(".customerName").val().trim();
						location.href = $(".path").val()
								+ "/immune/query.html?currentPageNo=" + no
								+ "&petName=" + petName+"&customerName="+customerName;
					})
			$(".queryBtn").click(
					function() {
						var petName = $(".petName").val().trim();
						var customerName=$(".customerName").val().trim();
						location.href = $(".path").val()
								+ "/immune/query.html?petName="
								+ petName+"&customerName="+customerName;
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
						var customerName=$(".customerName").val().trim();
						location.href = $(".path").val()
								+ "/immune/query.html?currentPageNo=" + go
								+ "&petName=" + petName+"&customerName="+customerName;

					})
					$(".deleteBtn").click(function() {
						var bo=confirm("您确定要删除吗？");
						if(bo==false){
							return;
						}
						var id=$(this).prev().val();
						$.post($(".path").val()+"/immune/removeInfo","id="+id,function(result){
							if(result>0){
								alert("删除成功！");
								location.href=$(".path").val()+"/immune/query.html";
							}else{
								alert("删除失败！");
								return;
							}
						})
					})
})
