$(document).ready(function() {
	$(".updateBtn").click(function() {
		var employee_Number= $(".employee_Number").val().trim();
		var employee_Name = $(".employee_Name").val().trim();
		var employee_Sex = $(".employee_Sex").val();
		var employee_Age = $(".employee_Age").val().trim();
		var employee_BornDate = $(".employee_BornDate").val().trim();
		var employee_Id_Number = $(".employee_Id_Number").val().trim();
		var employee_EmailAddress = $(".employee_EmailAddress").val().trim();
		var employee_Phone = $(".employee_Phone").val().trim();
		var employee_Address = $(".employee_Address").val().trim();
		var employee_Native_Place = $(".employee_Native_Place").val().trim();
		var employee_Entry_Time = $(".employee_Entry_Time").val().trim();
		var employee_Wages = $(".employee_Wages").val().trim();
		var employee_Status = $(".employee_Status").val();
		if(employee_Name==""){
			alert("员工姓名不能为空！");
			return;
		}
		if(employee_Sex=="请选择"){
			alert("请选择性别！");
			return;
		}
		if(employee_Age==""){
			alert("请输入年龄！");
			return;
		}
		if(isNaN(employee_Age)){
			alert("年龄必须是数字！");
			return;
		}
		if(employee_BornDate==""){
		alert("出生日期不能为空！");
		return;
	}
		if(employee_Id_Number==""){
			alert("身份证号不能为空！");
			return;
		}
		if(employee_Id_Number.length!=18){
			alert("身份证号必须为18位！");
			return;
		}
		if(employee_EmailAddress==""){
			alert("邮箱地址不能为空！");
			return;
		}
		if(employee_Phone==""){
			alert("联系电话不能为空！");
			return;
		}
		if(employee_Address==""){
			alert("家庭住址不能为空！");
			return;
		}
		if(employee_Native_Place==""){
			alert("籍贯不能为空！");
			return;
		}
		if(employee_Entry_Time==""){
    		alert("入职时间不能为空！");
    		return;
    	}
		if(employee_Wages==""){
    		alert("工资不能为空！");
    		return;
    	}
    	if(isNaN(employee_Wages)){
    		alert("工资必须为数字！");
    		return;
    	}
    	var json={
    			"employee_Number":employee_Number,
    			"employee_Name":employee_Name,
    			"employee_Sex":employee_Sex,
    			"employee_Age":employee_Age,
    			"employee_BornDate":employee_BornDate,
    			"employee_Id_Number":employee_Id_Number,
    			"employee_EmailAddress":employee_EmailAddress,
    			"employee_Phone":employee_Phone,
    			"employee_Address":employee_Address,
    			"employee_Native_Place":employee_Native_Place,
    			"employee_Entry_Time":employee_Entry_Time,
    			"employee_Wages":employee_Wages,
    			"employee_Status":employee_Status
    	}
    	$.post($(".path").val()+"/employee/updateInfo",json,function(result){
    		if(result>0){
    			alert("修改成功！");
        		location.href=$(".path").val()+"/employee/query.html";
    		}else{
    			alert("修改失败！");
    			return;
    		}
    	})
	})
	
	
	$(".resetBtn").click(function() {
		$(".employee_Name").val("");
		$(".employee_Sex").val("请选择");
		$(".employee_Age").val("");
		$(".employee_BornDate").val("");
		$(".employee_Id_Number").val("");
		$(".employee_EmailAddress").val("");
		$(".employee_Phone").val("");
		$(".employee_Address").val("");
		$(".employee_Native_Place").val("");
		$(".employee_Entry_Time").val("");
		$(".employee_Wages").val("");
		$(".employee_Status").val("1");

	})
})