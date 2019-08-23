<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title></title>

<!-- 公共样式 开始 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/base.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/statics/css/bootstrap.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/iconfont.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/layui.css">
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
<script
	src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/customersearch.js"></script>
<!-- 公共样式 结束 -->
<style>
.go {
	width: 70px;
	text-align: center;
	height: 22px;
}

.name {
	margin-left: 450px;
}

.updateTr {
	width: 1000px;
	margin-top: 20px;
}

.selectTr {
	width: 600px;
	margin-left: 300px;
	margin-top: 20px;
}

a {
	cursor: pointer;
}
</style>

</head>

<body>
	<input type="hidden" class="path"
		value="${pageContext.request.contextPath }">
	<div class="cBody">
		<div class="console" align="center">

			<div class="layui-form-item input">
				<div class="layui-input-inline">
					<input type="text" placeholder="输入客户姓名(支持模糊查询)"
						class="layui-input name customerName" value="${customerName}">
				</div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="layui-btn layui-btn-sm queryBtn" lay-submit
					lay-filter="formDemo">查询</button>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<button class="layui-btn layui-btn-sm removeBtn" lay-submit
					lay-filter="formDemo">批量删除</button>
			</div>


		</div>
		<table class="layui-table customerInfoTable">
			<thead>
				<tr>
					<th>选项</th>
					<th>客户编号</th>
					<th>客户姓名</th>
					<th>联系方式</th>
					<th>性别</th>
					<th>年龄</th>
					<th>地址</th>
					<th>积分</th>
					<th>会员</th>
					<th>余额</th>
					<th>操作</th>
				</tr>
			</thead>
			<thead>
				<c:forEach var="list" items="${pageInfo.list }">
					<tr align="center">
						<td><input type='checkbox' name='ids' value="${list.id }"></td>
						<td>${list.id }</td>
						<td>${list.customerName }</td>
						<td>${list.customerPhone }</td>
						<td>${list.customerGender }</td>
						<td>${list.customerAge }</td>
						<td>${list.customerAddress }</td>
						<td>${list.integral }</td>
						<td><c:choose>
								<c:when test="${list.customerMember ==0}">
						非会员
						</c:when>
								<c:when test="${list.customerMember ==1}">
						青铜
						</c:when>
								<c:when test="${list.customerMember ==2}">
						白银
						</c:when>
								<c:otherwise>
						黄金
						</c:otherwise>
							</c:choose></td>
						<td>${list.balance }</td>
						<td><input type="hidden" class="hidden" value="${list.id }">
							<a class='layui-btn layui-btn-xs updateBtn'
							style='text-decoration: none'>修改</a>
							<button class='layui-btn layui-btn-xs deleteBtn'>删除</button></td>
					</tr>
				</c:forEach>
			</thead>
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
		<table class="table table-bordered updateTr" align="center">
			<tr>
				<td>客户编号：</td>
				<td><input type="text" class="form-control id"
					readonly="readonly"></td>
				<td>客户姓名：</td>
				<td><input type="text" class="form-control customerName1"></td>
				<td>联系方式：</td>
				<td><input type="text" class="form-control customerPhone"></td>
			</tr>
			<tr>
				<td>性别：</td>
				<td><select class="form-control customerGender">
						<option value="请选择">请选择</option>
						<option value="男">男</option>
						<option value="女">女</option>
				</select></td>
				<td>年龄：</td>
				<td><input type="text" class="form-control customerAge"></td>
				<td>地址：</td>
				<td><input type="text" class="form-control customerAddress"></td>
			</tr>
			<tr>
				<td>积分：</td>
				<td><input type="text" class="form-control integral"></td>
				<td>会员：</td>
				<td><select class="form-control customerMember">
						<option value="0">非会员</option>
						<option value="1">青铜</option>
						<option value="2">白银</option>
						<option value="3">黄金</option>
				</select></td>
				<td>余额：</td>
				<td><input type="text" class="form-control balance"></td>
			</tr>
			<tr align="center">
				<td colspan="6">
					<button class="btn btn-danger btn-sm updateBtn1">修改</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;
					<button class="btn btn-primary btn-sm resetBtn">重置</button>
				</td>
			</tr>
		</table>
	</div>
</body>

</html>