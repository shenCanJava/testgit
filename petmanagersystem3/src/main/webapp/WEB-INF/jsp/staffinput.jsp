<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>

		<!-- 公共样式 开始 -->
		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/base.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/jquery-2.1.4.min.js"></script>
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/layui.css">
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/layui/layui.js"></script>
		<!-- 滚动条插件 -->
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/statics/css/jquery.mCustomScrollbar.css">
		<script src="${pageContext.request.contextPath }/statics/js/jquery-ui-1.10.4.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/js/jquery.mousewheel.min.js"></script>
		<script src="${pageContext.request.contextPath }/statics/js/jquery.mCustomScrollbar.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath }/statics/js/staffinput.js"></script>
		
		<!-- 公共样式 结束 -->
		
		<style>
			.layui-form{
				margin-right: 30%;
			}
		</style>

	</head>

	<body>
		<input type="hidden" class="path" value="${pageContext.request.contextPath }">
		<div class="cBody" align="center">
				<div class="layui-form-item">
					<label class="layui-form-label">员工姓名：</label>
					<div class="layui-input-inline shortInput">
						<input type="text"  required lay-verify="required|identity" autocomplete="off" class="layui-input employee_Name">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">员工年龄：</label>
					<div class="layui-input-inline shortInput">
						<input type="text"  required lay-verify="required|ZHCheck"  autocomplete="off" class="layui-input employee_Age">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">籍贯：</label>
					<div class="layui-input-inline shortInput">
						<input type="text" required lay-verify="required|phone"autocomplete="off" class="layui-input employee_Native_Place">
					</div>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">身份证号：</label>
					<div class="layui-input-inline shortInput">
						<input type="text" required lay-verify="required|ZHCheck" autocomplete="off" class="layui-input employee_Id_Number">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">邮箱地址：</label>
					<div class="layui-input-inline shortInput">
						<input type="text" required lay-verify="required|ZHCheck" autocomplete="off" class="layui-input employee_EmailAddress">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">联系电话：</label>
					<div class="layui-input-inline shortInput">
						<input type="text"  autocomplete="off" class="layui-input employee_Phone">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">家庭住址：</label>
					<div class="layui-input-inline shortInput">
						<input type="text" autocomplete="off" class="layui-input employee_Address">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">出生日期：</label>
	                <div class="layui-input-inline shortInput">
	                  <input type="date" required lay-verify="required|ZHCheck"  autocomplete="off" class="layui-input employee_BornDate">
	                </div>
				</div>
				
				<div class="layui-form-item">
					<label class="layui-form-label">入职时间：</label>
					<div class="layui-input-inline shortInput">
						<input type="date" autocomplete="off" class="layui-input employee_Entry_Time">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">工资：</label>
					<div class="layui-input-inline shortInput">
						<input type="text"  autocomplete="off" class="layui-input employee_Wages">
					</div>
				</div>
				<div class="layui-form-item layui-form-text">
					<label class="layui-form-label">备注：</label>
					<div class="layui-input-block">
						<textarea class="layui-textarea remark"></textarea>
					</div>
				</div>
				
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn submitBtn">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary resetBtn">重置</button>
					</div>
				</div>

		</div>
	</body>

</html>