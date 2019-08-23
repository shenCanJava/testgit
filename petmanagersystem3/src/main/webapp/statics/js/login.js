$(document).ready(function() {
	$(".text").text("");
	$("#js-btn-login").click(function() {
		var administrators_Name=$(".administrators_Name").val().trim();
		var administrators_Password=$(".administrators_Password").val().trim();
		if(administrators_Name==""){
			alert("用户名不能为空！");
			return;
		}
		if(administrators_Password==""){
			alert("密码不能为空！");
			return;
		}
		$.post($(".path").val()+"/admin/login","administrators_Name="+administrators_Name+"&administrators_Password="+administrators_Password,function(result){
			if(result=="true"){
				location.href=$(".path").val()+"/index/toIndex.html";
			}else{
				$(".text").text("用户名或密码错误！");
			}
		})
	})
})