<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
		<style type="text/css">
			.updateTr{
				margin-top: 30px;
			}
		</style>
	</head>
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/update.js"></script>

	<body>
	<input type="hidden" class="path" value="${pageContext.request.contextPath }">
		<table class="table table-bordered updateTr" align="center">
			<tr align="center">
				<td>员工编号：</td>
				<td><input type="text" class="form-control id employee_Number" readonly value="${e.employee_Number }"></td>
				<td>员工姓名：</td>
				<td><input type="text" class="form-control employee_Name" value="${e.employee_Name }"></td>
				<td>员工性别：</td>
				<td><select class="form-control employee_Sex">
					<c:if test="${e.employee_Sex =='男'}">
					<script type="text/javascript">
						$(function(){
							$(".employee_Sex").val("男");
							})
					</script>
					</c:if>
					<c:if test="${e.employee_Sex =='女'}">
					<script type="text/javascript">
						$(function(){
							$(".employee_Sex").val("女");
							})
					</script>
					</c:if>
						<option value="请选择">请选择</option>
						<option value="男">男</option>
						<option value="女">女</option>
					</select></td>
			</tr>
			<tr align="center">
				<td>员工年龄：</td>
				<td>
					<input type="text" class="form-control employee_Age" value="${e.employee_Age }">
				</td>
				<td>出生日期：</td>
				<td><input type="date" class="form-control employee_BornDate" value="${e.employee_BornDate }"></td>
				<td>身份证号：</td>
				<td><input type="text" class="form-control employee_Id_Number" value="${e.employee_Id_Number }"></td>
			</tr>
			<tr align="center">
				<td>邮箱地址：</td>
				<td><input type="text" class="form-control employee_EmailAddress" value="${e.employee_EmailAddress }"></td>
				<td>联系电话：</td>
				<td><input type="text" class="form-control employee_Phone" value="${e.employee_Phone }"></td>
				<td>家庭住址：</td>
				<td><input type="text" class="form-control employee_Address" value="${e.employee_Address }"></td>
			</tr>
			<tr align="center">
				<td>籍贯：</td>
				<td><input type="text" class="form-control employee_Native_Place" value="${e.employee_Native_Place }"></td>
				<td>入职时间：</td>
				<td><input type="date" class="form-control employee_Entry_Time" value="${e.employee_Entry_Time }"></td>
				<td>工资：</td>
				<td><input type="text" class="form-control employee_Wages" value="${e.employee_Wages }"></td>
			</tr>
			<tr align="center">
				
				<td>员工状态：</td>
				<td><select class="form-control employee_Status">
				<c:if test="${e.employee_Status ==1}">
					<script type="text/javascript">
						$(function(){
							$(".employee_Status").val("1");
							})
					</script>
					</c:if>
					<c:if test="${e.employee_Status ==0}">
					<script type="text/javascript">
						$(function(){
							$(".employee_Status").val("0");
							})
					</script>
					</c:if>
					<option value="1">在职</option>
					<option value="0">离职</option>
			</select></td>
				<td colspan="2"><button class="btn btn-danger updateBtn">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-info resetBtn">重置</button></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	</body>

</html>