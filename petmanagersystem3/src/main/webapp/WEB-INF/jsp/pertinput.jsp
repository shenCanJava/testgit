<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>
<style>
.addInfoTable {
	width: 500px;
	height: 400px;
	margin-top: 50px;
}

.resetBtn, .luRu {
	margin-top: 20px;
	position: relative;
	left: 30px;
}

.title {
	position: relative;
	top: 15px;
}
</style>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
</head>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/pet.js"></script>


<body>
	<input type="hidden" class="path" value="${pageContext.request.contextPath }">
	<h3 align="center" class="title">宠物信息录入</h3>
	<table class=" addInfoTable" align="center">
		<tr align="center">
			<td>宠物名称：</td>
			<td><input type="text" class="form-control petName"></td>
		</tr>
		<tr align="center">
			<td>宠物年龄：</td>
			<td><input type="text" class="form-control petAge"></td>
		</tr>
		<tr align="center">
			<td>宠物性别：</td>
			<td><select class="petGender form-control">
					<option value="请选择">请选择</option>
					<option value="雄">雄</option>
					<option value="雌">雌</option>
			</select></td>
		</tr>
		<tr align="center">
			<td>宠物主人：</td>
			<td><select class="form-control customerId">
					<c:forEach var="list" items="${customerInfo}">
						<option value="${list.id }">${list.customerName }</option>
					</c:forEach>
			</select></td>
		</tr>
		<tr align="center">
			<td>宠物体型：</td>
			<td><select class="petShape form-control">
					<option value="1">小型短毛</option>
					<option value="2">小型长毛</option>
					<option value="3">中型短毛</option>
					<option value="4">中型长毛</option>
					<option value="5">大型短毛</option>
					<option value="6">大型长毛</option>
			</select>
		</tr>
		<tr align="center">
			<td>宠物品种：</td>
			<td><select class="petVarieties form-control">
					<option value="狗">狗</option>
					<option value="猫">猫</option>
					<option value="兔子">兔子</option>
			</select>
		</tr>
		<tr align="center">
			<td>宠物重量：</td>
			<td><input type="text" class="form-control petWeight"></td>
		</tr>
	</table>
	<center>
		<button class="btn btn-danger luRu">录入</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="btn btn-primary resetBtn">重置</button>
	</center>



</body>

</html>