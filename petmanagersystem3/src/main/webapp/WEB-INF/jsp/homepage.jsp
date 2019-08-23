<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<style>
			h1{
				margin-top: 220px;
			}
			h2{
			margin-top: 385px;
			}
		</style>
		<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
	</head>
<script type="text/javascript">
function jiShi(){
	var date=new Date();
    	var year=date.getFullYear();
    	var month=date.getMonth()+1;
    	var today=date.getDate();
    	var hour = date.getHours();
    	var minute = date.getMinutes();
    	var second =date.getSeconds();
    	$("h2").text(year+"-"+month+"-"+today+" "+hour+":"+minute+":"+second)
    }
	setInterval("jiShi()",1000)
</script>
	<body>
		<h1 align="center">欢迎登录宠物服务后台管理系统！</h1>
		<h2 align="right"></h2>
	</body>

</html>