<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
			<meta charset="UTF-8">
		<title>宠物服务后台管理</title>
	</head>
	<frameset cols="230,*" border="0">
		<frame src="${pageContext.request.contextPath }/index/toLeft.html" scrolling="no" noresize="noresize" />
		<frameset rows="60,*" border="0">
			<frame src="${pageContext.request.contextPath }/index/toTop.html" scrolling="no" noresize="noresize" />
			<frame src="${pageContext.request.contextPath }/index/toHomePage.html" name="mainFrame" scrolling="yes" noresize="noresize" />
		</frameset>
	</frameset>

</html>