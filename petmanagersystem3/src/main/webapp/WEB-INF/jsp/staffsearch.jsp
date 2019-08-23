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
	<script
	src="${pageContext.request.contextPath }/statics/js/staffsearch.js"></script>
<!-- 公共样式 结束 -->

<style>
.layui-table img {
	max-width: none;
}

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
<input type="hidden" class="path" value="${pageContext.request.contextPath }">
	<div class="cBody">
		<div class="console">
				<div class="layui-form-item">
					<div class="layui-input-inline">
						<input type="text" name="name" placeholder="输入员工姓名" required
							lay-verify="required" autocomplete="off"
							class="layui-input employee_Name" value="${employee_Name }">
					</div>
					<div class="layui-input-inline">
						<input type="text" name="name" placeholder="输入身份证号" required
							lay-verify="required" autocomplete="off"
							class="layui-input employee_Id_Number" value="${employee_Id_Number }">
					</div>
					<button class="layui-btn queryBtn" lay-submit lay-filter="formDemo">查询</button>
				</div>
		</div>

		<table class="layui-table">
			<thead>
				<tr align="center">
					<td width="90">员工编号</td>
					<td width="90px">员工姓名</td>
					<td width="90px">员工性别</td>
					<td width="90px">员工年龄</td>
					<td width="120px">出生日期</td>
					<td>身份证号</td>
					<td>入职时间</td>
					<td>家庭住址</td>
					<td width="180px">操作</td>
			</thead>
			<tbody>
				<c:forEach var="list" items="${pageInfo.list }">
					<tr align="center">
						<td>${list.employee_Number }</td>
						<td>${list.employee_Name }</td>
						<td>${list.employee_Sex }</td>
						<td>${list.employee_Age }</td>
						<td>${list.employee_BornDate }</td>
						<td>${list.employee_Id_Number }</td>
						<td>${list.employee_Entry_Time }</td>
						<td>${list.employee_Address }</td>
						<td><center>
								<button class="btn btn-primary btn-sm updateBtn"
									onclick="updateBut(${list.employee_Number})">修改</button>
									<input type="hidden" value="${list.employee_Number }">
								<button class="btn btn-primary btn-sm deleteBtn">删除</button>
								<button class="btn btn-primary btn-sm xiangQingBtn"
									onclick="xiangQing(${list.employee_Number})">详情</button>
							</center></td>
					</tr>
				</c:forEach>
			</tbody>
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

		<script>
			//修改按钮
			var updateFrame = null;
			function updateBut(id) {
				layui
						.use(
								'layer',
								function() {
									var layer = layui.layer;

									//iframe层-父子操作
									updateFrame = layer
											.open({
												title : "员工信息修改",
												type : 2,
												area : [ '950px', '350px' ],
												scrollbar : false, //默认：true,默认允许浏览器滚动，如果设定scrollbar: false，则屏蔽
												maxmin : true,
												content : '${pageContext.request.contextPath}/employee/queryInfoById?id='+id
											});
								});

			}
			//修改按钮
			var cha = null;
			function xiangQing(id) {
				layui
						.use(
								'layer',
								function() {
									var layer = layui.layer;

									//iframe层-父子操作
									cha = layer
											.open({
												title : "员工信息信息详情",
												type : 2,
												area : [ '950px', '280px' ],
												scrollbar : false, //默认：true,默认允许浏览器滚动，如果设定scrollbar: false，则屏蔽
												maxmin : true,
												content : '${pageContext.request.contextPath}/employee/queryXiangQing.html?id='+id
											});
								});

			}
		</script>
	</div>
</body>

</html>