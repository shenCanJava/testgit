<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<title></title>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/iconfont.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/framework/jquery-1.11.3.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/layui/css/layui.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/layui/layui.js"></script>
		<script src="${pageContext.request.contextPath }/statics/framework/jquery.mousewheel.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/framework/jquery.mCustomScrollbar.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/framework/cframe.js"></script>
		<!-- 仅供所有子页面使用 -->
		<!-- 公共样式 结束 -->

		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/frameStyle.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/framework/frame.js"></script>
	</head>

	<body>
		<!-- 左侧菜单 - 开始 -->
		<div class="frameMenu">
		    <div class="logo" style="margin-left: 20px">
		        <img src="${pageContext.request.contextPath }/statics/images/logo.png"/>
		        <div class="logoText">
		           <h1 style="position: relative;top: 10px;">&nbsp;后台管理</h1>
		        </div>
		    </div>
		    <div class="menu">
		        <ul>
		        	<li>
						<a class="menuFA" href="javaScript:void(0)"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客户信息</a>
		                <dl>
		                	<dt><a class="menuFA" href="${pageContext.request.contextPath }/index/customerInput.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客户信息录入</a></dt>
		                	<dt><a class="menuFA" href="${pageContext.request.contextPath }/customer/query.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;客户信息查询</a></dt>
		                	<dt><a class="menuFA" href="${pageContext.request.contextPath }/immune/query.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;免疫单号查询</a></dt>
		                </dl>
		            </li>
		        	<li>
						<a class="menuFA" href="javaScript:void(0)"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;员工管理</a>
		                <dl>
		                	<dt><a class="menuFA" href="${pageContext.request.contextPath }/index/staffInput.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;员工信息录入</a></dt>
		                	<dt><a class="menuFA" href="${pageContext.request.contextPath }/employee/query.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;员工信息查询</a></dt>
		                </dl>
		            </li>
		        	<li>
						<a class="menuFA" href="javaScript:void(0)"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;宠物信息</a>
		                <dl>
		                	<dt><a class="menuFA" href="${pageContext.request.contextPath }/customer/queryInfo.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;宠物信息录入</a></dt>
		                	<dt><a class="menuFA" href="${pageContext.request.contextPath }/pet/query.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;宠物信息查询</a></dt>
		                </dl>
		            </li>
		        	<li>
		               <a class="menuFA" href="${pageContext.request.contextPath }/petServiceInfo/query.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;宠物服务</a>
		            </li>
		        	<li>
		               <a class="menuFA" href="${pageContext.request.contextPath }/product/query.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;产品信息</a>
		           	</li>
		        	<li>
		                 <a class="menuFA" href="javaScript:void(0)"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单处理</a>
		                <dl>
		                	<dt> <a class="menuFA" href="${pageContext.request.contextPath }/order/query.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;订单查询</a></dt>
		                </dl>
		           	</li>
		        	<li>
		                 <a class="menuFA" href="javaScript:void(0)"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;库存管理</a>
		                <dl>
		                	<dt> <a class="menuFA" href="${pageContext.request.contextPath }/index/productInput.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;产品入库</a></dt>
		                	<dt> <a class="menuFA" href="${pageContext.request.contextPath }/product/countSearch.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;库存情况</a></dt>
		                </dl>
		           	</li>
		           	<li>
		           	<a class="menuFA" href="javaScript:void(0)" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;系统管理</a>
		                <dl>
		                	<dt> <a class="menuFA" href="${pageContext.request.contextPath }/admin/query.html" target="mainFrame"><img src="" width="22"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;管理员信息修改</a></dt>
		                </dl>
		           	 	</li>
		           	
		          
		        </ul>
		    </div>
		</div>
		<!-- 左侧菜单 - 结束 -->
	</body>

</html>