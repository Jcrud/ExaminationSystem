<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>网络在线考试</title>
<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<link rel="stylesheet" href="${path}/CSS/login.css" />
<script type="text/javascript" src="${path}/JS/jquery-1.8.3.js"></script>
<script type="text/javascript">
function check(obj){
	if (obj.id.value==""){
		alert("请输入准考证号!");obj.id.focus();return false;
	}
	if (obj.pwd.value==""){
		alert("请输入密码!");obj.pwd.focus();return false;
	}
}
$(function(){
	if(${erroy!=null}){
		alert("${erroy}");
	}
});
</script>
</head>
<body>
	<div>
	<form id="registForm" action="${path}/frontEnd/login1" method="POST" onsubmit="return check(this)">
	<input id="username" type="text" name="id" placeholder="请输入您的准考证号"/>
	<input id="password" type="password" name="pwd"placeholder="请输入您的密码"/>
	<input id="login" type="submit" value="登录"/>
	<input id="find"  type="button" value="找回密码" onclick="window.location.href='${path}/seekPwd.jsp'" />
	</form>
	<div id="div1">
	<a id="manage" href="${path}/manage/login.jsp">进入后台</a>
	</div>
	</div>
</body>
</html>


