<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			.resetBtn,.luRu{
				margin-top: 20px;
				position: relative;
				left: 30px;
			}
			.title{
				position: relative;
				top: 15px;
			}
		</style>
		<link rel="stylesheet" href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/productinput.js"></script>
	</head>

	<body>
	<input type="hidden" class="path" value="${pageContext.request.contextPath }">
		<h3 align="center" class="title">产品入库</h3>
		<table class=" addInfoTable" align="center">
			<tr align="center">
				<td>产品名：</td>
				<td><input type="text" class="form-control productName"></td>
			</tr>
			<tr align="center">
				<td>产品进价：</td>
				<td><input type="text" class="form-control purchasePrice"></td>
			</tr>
			<tr align="center">
				<td>产品售 价：</td>
				<td><input type="text" class="form-control price"></td>
			</tr>
			<tr align="center">
				<td>产品规格：</td>
				<td><input type="text" class="form-control specifications"></td>
			</tr>
			<tr align="center">
				<td>产品类型：</td>
				<td><input type="text" class="form-control type"></td>
			</tr>
			<tr align="center">
				<td>入库数量：</td>
				<td><input type="text" class="form-control stock"></td>
			</tr>
		</table>
		<center> <button class="btn btn-danger luRu">录入</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary resetBtn">重置</button></center>



	</body>

</html>