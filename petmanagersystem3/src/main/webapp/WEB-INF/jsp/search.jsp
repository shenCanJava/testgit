<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
<style type="text/css">
.searchTable {
	margin-top: 30px;
}
</style>
</head>

<body>
	<table class="table table-bordered searchTable" align="center">
		<tr align="center">
			<td>邮箱地址：</td>
			<td><input type="text" readonly
				class="form-control employee_EmailAddress" value="${ee.employee_EmailAddress }"></td>
			<td>联系电话：</td>
			<td><input type="text" readonly
				class="form-control employee_Phone" value="${ee.employee_Phone }"></td>
		</tr>
		<tr align="center">
			<td>籍贯：</td>
			<td><input type="text" readonly
				class="form-control employee_Native_Place" value="${ee.employee_Native_Place }"></td>
				<td>工资：</td>
			<td><input type="text" readonly
				class="form-control employee_Wages" value="${ee.employee_Wages }"></td>
		</tr>
		<tr align="center">
			<td>员工状态：</td>
			<td><select class="form-control employee_Status"
				disabled="disabled">
					<c:if test="${ee.employee_Status==1}">
					<script type="text/javascript">
						$(function(){
							$(".employee_Status").val("1");
							})
					</script>
					</c:if>
					<c:if test="${ee.employee_Status==0}">
					<script type="text/javascript">
						$(function(){
							$(".employee_Status").val("0");
							})
					</script>
					</c:if>
					<option value="1">在职</option>
					<option value="0">离职</option>
			</select></td>
			<td></td>
			<td></td>
		</tr>

	</table>
</body>

</html>