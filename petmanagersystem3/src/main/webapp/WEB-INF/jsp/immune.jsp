<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>

<!-- 公共样式 开始 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/base.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/iconfont.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/layui/css/layui.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/layui/layui.js"></script>
<!-- 滚动条插件 -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/jquery.mCustomScrollbar.css">
<script
	src="${pageContext.request.contextPath }/statics/js/jquery-ui-1.10.4.min.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery.mousewheel.min.js"></script>
<script
	src="${pageContext.request.contextPath }/statics/js/jquery.mCustomScrollbar.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
<script src="${pageContext.request.contextPath }/statics/js/immune.js"></script>
<!-- 公共样式 结束 -->
<style>
.selectTr {
	width: 600px;
	margin-left: 300px;
	margin-top: -4px;
}

.go {
	width: 70px;
	text-align: center;
	height: 22px;
}

.name {
	margin-left: 450px;
}

a {
	color: black;
	cursor: pointer;
}
</style>


</head>

<body>
	<input type="hidden" class="path"
		value="${pageContext.request.contextPath }">
	<div class="cBody">
		<div class="console">
				<div class="layui-form-item">
					<div class="layui-input-inline">
						<input type="text" required lay-verify="required"
							placeholder="输入宠物姓名" autocomplete="off"
							class="layui-input petName" value="${petName }">
					</div>
					<div class="layui-input-inline">
						<input type="text" class="layui-input customerName" id="time"
							placeholder="输入客户姓名" value="${customerName }">
					</div>
					<button class="layui-btn queryBtn" lay-submit lay-filter="formDemo">查询</button>
				</div>

		</div>

		<table class="layui-table">
			<thead>
				<tr>
					<th>免疫单编号</th>
					<th>宠物姓名</th>
					<th>客户姓名</th>
					<th>录入日期</th>
					<th>录入负责人</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${pageInfo.list }">
					<tr align="center">
						<td>${list.id }</td>
						<td>${list.petName }</td>
						<td>${list.customerName }</td>
						<td>${list.inputDate }</td>
						<td>${list.employee_Name }</td>
						<td>
						<input type="hidden" class="id" value="${list.id }">
							<button class="btn btn-primary btn-sm deleteBtn">删除</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<input type="hidden" class=".lastPage" value="${pageInfo.lastPage }">
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
</body>

</html>