<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
<title>网络在线考试――后台登录</title>
<script src="${path}/JS/jquery-2.1.0.js"></script>
<link href="${path}/CSS/style.css" rel="stylesheet" />
<link rel="stylesheet" href="${path}/static/bootstrap-3.3.7-dist/css/bootstrap.css" />
<script src="${path}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
<script type="text/javascript">
function check(form){
	if (form.name.value==""){
		alert("请输入管理员名称!");form.name.focus();return false;
	}
	if (form.pwd.value==""){
		alert("请输入密码!");form.pwd.focus();return false;
	}	
}
</script>
	<style type="text/css">
		body{
				background: url(${path}/Images/back.jpg) no-repeat;
				background-size: 80%;
				background-attachment: fixed; 
				background-position: center center;
			}
			#login{
				background: url(${path}/Images/form.png) no-repeat;
				background-size: 85%;
				width: 380px;
				height: 366px;
				position: absolute;
				margin: auto;
				top: -20px;
				bottom: 20px;
				left: 750px;
				right: 0;
				padding: 60px 30px 0px 50px;
			}
			.biaoti{
		  font-size: 24px;
		  font-family: "Adobe Heiti Std";
		  color: rgb(1, 154, 170);
		  line-height: 1.2;	
		  	  position: absolute;
				margin: auto;
				top: 50px;
				left: 70px;
				right: 80px;
		}
		#shuru1{
			position: absolute;
				margin: auto;
				top: 120px;
				left: 40px;
				right: 80px;
		}
		#shuru2{
			position: absolute;
				margin: auto;
				top: 170px;
				left: 40px;
				right: 80px;
		}
		#fujia{
			position: absolute;
				margin: auto;
				top: 220px;
				left: 80px;
				right: 80px;
		}
		.button1{
			background: rgb(40, 153, 240) ;
			width: 280px;
			height: 40px;
			position: absolute;
				margin: auto;
				bottom: 60px;
				left: 20px;
				border-radius: 15px;
				color: white;
				}
	</style>
</head>
<body>
	<div id="login">
			<form action="${path}/manage/login" method="post" name="managerForm" onsubmit="return check(managerForm)">
			
						<p class="biaoti">智多星在线考试网</p><br />
						<p id="shuru1">
						 <span class="glyphicon glyphicon-user"></span> 
						<input type="text" name="managerName"  class="shuru" placeholder="请输入账号" size="25"
							style="border-color: rgb(40, 153, 240);border-style:solid;border-top-width: 0px;
							 border-right-width: 0px;border-bottom-width: 1px; border-left-width: 0px"/></p>
						<p id="shuru2">
						<span class="glyphicon glyphicon-lock"></span>
						<input type="password" name="pwd"  placeholder="请输入密码" size="25"
								style="border-color: rgb(40, 153, 240);border-style: solid;border-top-width: 0px;
									border-right-width:0px;border-bottom-width:1px;border-left-width: 0px"/></p>
						
						<p><input type="reset"  class="button1" value="重置" style="position:relative;left: -30px;top: 130px"/></p>						
						<p><input class="button1"  type="submit" value="登录" /></p>
			
			</form>
		</div>	
</body>
</html>
