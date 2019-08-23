<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title></title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/base.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/iconfont.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/framework/jquery-1.11.3.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/layui/layui.js"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/frameStyle.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/framework/frame.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/statics/css/top.css" />
</head>
<body>
	<div class="main">
		<div class="frameTop">
			<div class="topMenu">
				<ul>
					<li><a href="javascript:void(0)">${sessionScope.adminName }</a></li>
					<li><a href="javascript:void(0)"><i
							class="iconfont icon-yonghu1"></i>管理员</a></li>
					<li><a href="${pageContext.request.contextPath }/index/toLogin.html" target="_parent"><i
							class="iconfont icon-084tuichu"></i>退出 <%
						session.invalidate();
					%> </a></li>
				</ul>
			</div>
		</div>
	</div>
</body>

</html>