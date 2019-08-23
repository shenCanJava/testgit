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
<!-- 公共样式 结束 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/petservice.js"></script>
<style>
.searchResult {
	position: absolute;
	top: 50px;
	left: 15px;
	z-index: 10;
	background-color: #FFF;
	width: 100px;
	border: 1px solid #d2d2d2;
	border-radius: 2px;
}

.searchResult li {
	padding: 0 10px;
	line-height: 36px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	cursor: pointer;
}

.searchResult li:hover {
	background-color: #eee;
}

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
	<input type="hidden" class="path"
		value="${pageContext.request.contextPath }">
	<div class="cBody">
		<div class="console">
			<div class="layui-form-item">
				<a class="layui-btn">新增</a>
			</div>
		</div>
		<table class="layui-table">
			<tr align="center">
				<td>服务名称：</td>
				<td><input type="text" class="serviceName form-control"></td>
				<td>小型短毛价格：</td>
				<td><input type="text" class="smallShortPrice form-control"></td>
				<td>小型长毛价格：</td>
				<td><input type="text" class="smallLongPrice form-control"></td>
			</tr>
			<tr align="center">
				<td>中型短毛价格：</td>
				<td><input type="text" class="mediumShortPrice form-control"></td>
				<td>中型长毛价格：</td>
				<td><input type="text" class="mediumLongPrice form-control"></td>
				<td>大型短毛价格：</td>
				<td><input type="text" class="bigShortPrice form-control"></td>
			</tr>
			<tr align="center">
				<td>大型长毛价格：</td>
				<td><input type="text" class="bigLongShortPrice form-control"></td>
				<td colspan="2"><button class="saveBtn btn btn-danger">新增</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button class="resetBtn btn btn-primary">重置</button></td>
				<td></td>
				<td></td>
			</tr>
		</table>


		<table id="customList" class="layui-table">
			<thead>
				<tr>
					<th>服务名称/价格</th>
					<th>小型短毛</th>
					<th>小型长毛</th>
					<th>中型短毛</th>
					<th>中型长毛</th>
					<th>大型短毛</th>
					<th>大型长毛</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${pageInfo.list }">
					<tr align="center">
						<td>${list.serviceName }</td>
						<td>${list.smallShortPrice }</td>
						<td>${list.smallLongPrice }</td>
						<td>${list.mediumShortPrice }</td>
						<td>${list.mediumLongPrice }</td>
						<td>${list.bigShortPrice }</td>
						<td>${list.bigLongShortPrice }</td>
						<td>
						<input type="hidden" value="${list.id }">
						<a class="btn btn-primary btn-sm deleteBtn">删除</a></td>
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
	</div>
</body>

</html>