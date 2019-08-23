<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>管理员登录</title>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/body.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath }/statics/js/login.js"></script>
</head>
<body>
<input type="hidden" class="path" value="${pageContext.request.contextPath }">
	<div class="container">
		<section id="content">
			<form disabled="disabled">
				<h1>管理员登录</h1>
				<span class="text"></span>
				<div>
					<input type="text" placeholder="用户名" id="username" class="administrators_Name" />
				</div>
				<div>
					<input type="password" placeholder="密码" id="password" class="administrators_Password"/>
				</div>
				<div class="">
					<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>
				</div>
				<div>
					<!-- <input type="submit" value="Log in" /> -->
					<input type="button" value="登录" align="center"
						class="btn btn-primary" id="js-btn-login" />

				</div>
			</form>
			<!-- form -->
			<div class="button" align="center">
				<span class="help-block u-errormessage" id="js-server-helpinfo">&nbsp;</span>

			</div>
			<!-- button -->
		</section>
		<!-- content -->
	</div>
	<!-- container -->


	<br>
	<br>
	<br>
	<br>
	<div style="text-align: center;"></div>
</body>
</html>