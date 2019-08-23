$(document).ready(function() {
	$(".submitBtn").click(function() {
		var employee_Name=$(".employee_Name").val().trim();
		var employee_Age=$(".employee_Age").val().trim();
		var employee_Native_Place=$(".employee_Native_Place").val().trim();
		var employee_Id_Number=$(".employee_Id_Number").val().trim();
		var employee_EmailAddress=$(".employee_EmailAddress").val().trim();
		var employee_Phone=$(".employee_Phone").val().trim();
		var employee_Address=$(".employee_Address").val().trim();
		var employee_BornDate=$(".employee_BornDate").val();
		var employee_Entry_Time=$(".employee_Entry_Time").val();
		var employee_Wages=$(".employee_Wages").val().trim();
		var remark=$(".remark").val().trim();
		if(employee_Name==""){
			alert("员工姓名不能为空！");
			return;
		}
		if(employee_Age==""){
			alert("员工年龄不能为空！");
			return;
		}
		if(isNaN(employee_Age)){
			alert("员工年龄必须是数字！");
			return;
		}
		if(employee_Age<=0){
			alert("请正确填写员工年龄！");
			return;
		}
		if(employee_Native_Place==""){
			alert("籍贯不能为空！");
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
		if(employee_BornDate==""){
			alert("出生日期不能为空！");
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
    			"employee_Name":employee_Name,
    			"employee_Age":employee_Age,
    			"employee_Native_Place":employee_Native_Place,
    			"employee_Id_Number":employee_Id_Number,
    			"employee_EmailAddress":employee_EmailAddress,
    			"employee_Phone":employee_Phone,
    			"employee_Address":employee_Address,
    			"employee_BornDate":employee_BornDate,
    			"employee_Entry_Time":employee_Entry_Time,
    			"employee_Wages":employee_Wages,
    			"remark":remark
    	}
    	$.post($(".path").val()+"/employee/insertInfo",json,function(result){
    		if(result>0){
    			alert("添加成功！");
    			return;
    		}else{
    			alert("添加失败！");
    			return;
    		}
    		
    	})
	})
	$(".resetBtn").click(function() {
	$(".employee_Name").val("");
	$(".employee_Age").val("");
	$(".employee_Native_Place").val("");
	$(".employee_Id_Number").val("");
	$(".employee_EmailAddress").val("");
	$(".employee_Phone").val("");
	$(".employee_Address").val("");
	$(".employee_BornDate").val("");
	$(".employee_Entry_Time").val("");
	$(".employee_Wages").val("");
	$(".remark").val("");
	})
})