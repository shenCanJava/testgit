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
	<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/productinfo.js"></script>
<!-- 公共样式 结束 -->

</head>

<body>
<input type="hidden" class="path" value="${pageContext.request.contextPath }">
	<div class="cBody">
		<div class="console">
				<div class="layui-form-item">
					<div class="layui-input-inline">
						<input type="text" required lay-verify="required"
							placeholder="输入产品名称" autocomplete="off"
							class="layui-input productName" value="${productName }">
					</div>
					<button class="layui-btn queryBtn" lay-submit lay-filter="formDemo">查询</button>
				</div>

		</div>

		<table class="layui-table">
			<thead>
				<tr>
					<th>编号</th>
					<th>名称</th>
					<th>进价</th>
					<th>售价</th>
					<th>规格</th>
					<th>类型</th>
					<th>库存</th>
					<th>状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="list" items="${list }">
					<tr align="center">
						<td>${list.id }</td>
						<td>${list.productName }</td>
						<td>${list.purchasePrice }</td>
						<td>${list.price }</td>
						<td>${list.specifications }</td>
						<td>${list.type }</td>
						<td>${list.stock }</td>
						<td><c:if test="${list.status ==0}">
					上架
					</c:if> <c:if test="${list.status ==1}">
					下架
					</c:if></td>
						<td>
						<input type="hidden" class="id" value="${list.id }">
							<button class="btn btn-primary btn-sm shangBtn">上架</button>
							<button class="btn btn-primary btn-sm xiaBtn">下架</button>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</body>

</html>