<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>账户管理</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/administrators_management.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/administrators_management.js"></script>
	<style type="text/css">
	a{
	color: black;
	cursor: pointer;
	}
	</style>
</head>

<body>
	<input type="hidden" class="path"
		value="${pageContext.request.contextPath }">
	<div class="addAdministrators">
		<div class="administratorsTop">
			<button class="btn btn-primary  addAdministratorsInfo">新增管理员信息</button>
		</div>
		<div>
			<table class="table table-bordered addTable">
				<tr align="center">
					<td>管理员编号：</td>
					<td><input type="text" name="addAdministratorsNum"
						class="form-control addAdministratorsNum" /></td>
					<td>管理员姓名：</td>
					<td><input type="text" name="addAdministratorsName"
						class="form-control addAdministratorsName" /></td>
					<td>管理员密码：</td>
					<td><input type="text" name="addAdministratorsPassword"
						class="form-control addAdministratorsPassword" /></td>
				</tr>
				<tr align="center">
				</tr>
			</table>
			<button class="btn btn-danger save">保存</button>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button class="btn btn-success reset">重置</button>

		</div>

	</div>
	<div class="selectAdministrators">
		<div class="selectTop">
			<button class="btn btn-primary  administratorsInfo">管理管理员信息</button>
		</div>
		<div class="selectBottom">
			<table class="table table-bordered selectTable">
				<tr align="center">
					<td width="20%">请输入管理员姓名：</td>
					<td width="20%"><input type="text"
						name="selectAdministratorsInfoName"
						class="form-control selectAdministratorsInfoName" value="${administrators_Name }" /></td>
					<td width="20%">请输入管理员密码：</td>
					<td width="20%"><input type="text"
						name="selectAdministratorsInfoType"
						class="form-control selectAdministratorsInfoType" value="${administrators_Password }"/></td>
					<td width="20%">
						<button class="btn btn-primary  select">查询</button>
					</td>
				</tr>
			</table>
			<table class="table table-bordered selectTable2">
				<tr align="center">
					<td width="25%">管理员编号</td>
					<td width="25%">管理员姓名</td>
					<td width="25%">管理员密码</td>
					<td width="25%" colspan="2">操作</td>
				</tr>
				<c:forEach var="list" items="${pageInfo.list}">
				<tr align="center">
					<td>${list.administrators_Num }</td>
					<td>${list.administrators_Name }</td>
					<td>${list.administrators_Password }</td>
					<td colspan="2">
					<input type="hidden" value="${list.administrators_Num }">
					<a href="#id"
						class="btn btn-warning btn-sm xiuGai">修改</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-info btn-sm shanChu">删除</button></td>
				</tr>
				</c:forEach>
			</table>
			<input type="hidden" class="lastPage" value="${pageInfo.lastPage}">
			<table class="table table-bordered selectTr">
				<tr align="center">
				<td><a no="${pageInfo.firstPage}">首页</a></td>
				<td><a no="${pageInfo.prePage}">上一页</a></td>
				<td><a no="${pageInfo.nextPage}">下一页</a></td>
				<td><a no="${pageInfo.lastPage}">末页</a></td>
				<td><input type="text" name="go" class="form-control go" /></td>
				<td><a href="javaScript:void(0)" class="tiao">跳转</a></td>
				<td><span class="showPage">${pageInfo.pageNum }/${pageInfo.pages }</span></td>
			</tr>
			</table>

		</div>
	</div>
	<div class="updateAdministrators">
		<div class="updateTop">
			<button class="btn btn-primary  updateAdministratorsInfo" id="id">修改管理员信息</button>
		</div>
		<div>
			<table class="table table-bordered updateTr">

				<tr align="center">
					<td>管理员编号：</td>
					<td><input type="text" name="updateAdministratorsNum"
						class="form-control updateAdministratorsNum" readonly="readonly" />
						<%--<select name="updateAdministratorsNum" class="form-control updateAdministratorsNum">
						<option value="0">请选择</option>
						</select>
						--%></td>
					<td>管理员姓名 ：</td>
					<td><input type="text" name="updateAdministratorsName"
						class="form-control updateAdministratorsName" /></td>
					<td>管理员密码：</td>
					<td><input type="password" name="updateAdministratorsPassword"
						class="form-control updateAdministratorsPassword" /></td>
				</tr>
				<tr align="center">
					<td colspan="6">
						<button class="btn btn-danger btnUpdate">修改</button>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<button class="btn btn-success btnReset">重置</button>
					</td>
				</tr>

			</table>

		</div>

	</div>

</body>

</html>