$(document).ready(function() {
	$("a[no]").click(
			function() {
				var no = $(this).attr("no");
				var petName = $(".petName").val().trim();
				var customerName = $(".customerName").val().trim();
				location.href = $(".path").val()
						+ "/pet/query.html?currentPageNo=" + no
						+ "&petName=" + petName+"&customerName="+customerName;
			})
	$(".queryBtn").click(
			function() {
				var petName = $(".petName").val().trim();
				var customerName = $(".customerName").val().trim();
				location.href = $(".path").val()
						+ "/pet/query.html?petName="
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
				var customerName = $(".customerName").val().trim();
				location.href = $(".path").val()
						+ "/pet/query.html?currentPageNo=" + go
						+ "&petName=" + petName+"&customerName="+customerName;

			})
	
	
	$(".luRu").click(function() {
		var petName=$(".petName").val().trim();
		var petAge=$(".petAge").val().trim();
		var petGender=$(".petGender").val();
		var customerId=$(".customerId").val();
		var petShape=$(".petShape").val();
		var petVarieties=$(".petVarieties").val();
		var petWeight=$(".petWeight").val().trim();
		if(petName==""){
			alert("宠物名称不能为空！");
			return;
		}
		if(petAge==""){
			alert("宠物年龄不能为空！");
			return;
		}
		if(isNaN(petAge)){
			alert("宠物年龄必须为数字！");
			return;
		}
		if(petAge<=0){
			alert("请正确输入宠物年龄！");
			return;
		}
		if(petGender=="请选择"){
			alert("请选择宠物性别！");
			return;
		}
		if(petWeight==""){
			alert("宠物重量不能为空！");
			return;
		}
		if(isNaN(petWeight)){
			alert("宠物重量必须是数字！");
			return;
		}
		if(petWeight<=0){
			alert("请正确输入宠物重量！");
			return;
		}
		var json={
				"petName":petName,
				"petAge":petAge,
				"petGender":petGender,
				"customerId":customerId,
				"petShape":petShape,
				"petVarieties":petVarieties,
				"petWeight":petWeight
		}
		$.post($(".path").val()+"/pet/insertInfo",json,function(result){
			if(result>0){
				alert("录入成功！");
				return
			}else{
				alert("录入失败！");
				return;
			}
			
		})
		
	})
	$(".resetBtn").click(function() {
	$(".petName").val("");
	$(".petAge").val("");
	$(".petGender").val("请选择");
	$(".petWeight").val("");
	})
	$(".deleteBtn").click(function() {
		var bo=confirm("您确定要删除吗？");
		if(bo==false){
			return;
		}
		var id = $(this).prev().val();
		$.post($(".path").val()+"/pet/removeInfo","id="+id,function(result){
			if(result>0){
				alert("删除成功！");
				location.href=$(".path").val()+"/pet/query.html";
			}else{
				alert("删除失败！");
				return;
			}
			
		})
	})
	
})