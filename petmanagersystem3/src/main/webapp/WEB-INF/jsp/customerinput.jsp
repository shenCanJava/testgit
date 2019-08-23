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
			.reset,.luRu{
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
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/customerinput.js"></script>
	</head>

	<body>
	<input type="hidden" class="path" value="${pageContext.request.contextPath }">
		<h3 align="center" class="title">客户信息录入</h3>
		<table class=" addInfoTable" align="center">
			<tr align="center">
				<td>客户姓名：</td>
				<td><input type="text" class="form-control customerName"></td>
			</tr>
			<tr align="center">
				<td>联系方式：</td>
				<td><input type="text" class="form-control customerPhone"></td>
			</tr>
			<tr align="center">
				<td>性别：</td>
				<td>
					<select class="customerGender form-control">
						<option value="请选择">请选择</option>
						<option value="男">男</option>
						<option value="女">女</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td>年龄：</td>
				<td><input type="text" class="form-control customerAge"></td>
			</tr>
			<tr align="center">
				<td>地址：</td>
				<td><input type="text" class="form-control customerAddress"></td>
			</tr>
			<tr align="center">
				<td>积分：</td>
				<td><input type="text" class="form-control integral"></td>
			</tr>
			<tr align="center">
				<td>会员：</td>
				<td>
					<select class="customerMember form-control">
						<option value="0">非会员</option>
						<option value="1">青铜</option>
						<option value="2">白银</option>
						<option value="3">黄金</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td>余额：</td>
				<td><input type="text" class="form-control balance"></td>
			</tr>
		</table>
		<center> <button class="btn btn-danger luRuBtn">录入</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary resetBtn">重置</button></center>



	</body>

</html>