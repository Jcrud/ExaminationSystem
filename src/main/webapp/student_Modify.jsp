<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="com.hxzy.pojo.TbStudent"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="utf-8" />
		<title>网络在线考试</title>
		<style type="text/css">
*{
	margin: 0px;
	padding: 0px;
text-decoration: none;
font-size: 20px;
  font-family: "Adobe Heiti Std";
  color: rgba(0, 0, 0, 0.659);
  line-height: 1.2;
}

#sanjiao {
    width:0px;
    height:0px;
    border-width:20px 0 20px 30px;
    border-style:solid;
    border-color:transparent transparent transparent rgb(1, 154, 170);
    margin:0px 0px;
    position: relative;
    left: 53px;
    top: 258px;
}
input{
	font-size: 20px;
  font-family: "Adobe Heiti Std";
  color: rgba(0, 0, 0, 0.659);
  line-height: 1.2;
  text-align: left;
}
#sanjiao2{
	width:0px;
    height:0px;
    border-width:20px 0 20px 30px;
    border-style:solid;
    border-color:transparent transparent transparent rgb(1, 154, 170);
    margin:0px 0px;
    position: relative;
    left:1660px;
    top: 180px;
}
body{
	position:absolute;
}
#fristId{
	
  font-size: 30px;
  font-family: "Adobe Heiti Std";
  color: rgb(86, 108, 102);
  line-height: 1.2;
  text-align: left;
  position: relative;
  left: 89.08px;
  top: 217px;
  z-index: 4;
}	
#shouye{
	
  font-size: 30px;
  font-family: "Adobe Heiti Std";
  color: rgb(86, 108, 102);
  line-height: 1.2;
  text-align: left;
  position: relative;
  left: 1700px;
  top: 140px;
  z-index: 38;


}	
#divfrom{
	position: absolute;
	left: 700px;
	top:400px ;
}
</style>
<style type="text/css">
label.error {
	background: url(Images/cuo.png) no-repeat 10px 1px;
	background-size: 13px 13px;
	padding-left: 27px;
	font-family: georgia;
	font-size: 13px;
	font-style: normal;
	color: red;
}
label.success {
	background: url(Images/dui.png) no-repeat 8px -7px;
}
</style>
<script type="text/javascript" src="JS/jquery-1.8.3.js"></script>
<script type="text/javascript" src="JS/jquery.validate.min.js"></script>
<!--引入国际化js文件-->
<script type="text/javascript" src="JS/messages_zh.js"></script>
<script type="text/javascript">
	//发送短信
	function sendSecurityCode() {
		var telephone = null;
		if ($("input[name='phone']").val() == ""
				|| $("input[name='phone']").val() == null) {
			telephone = $("input[name='oldphone']").val();
		} else {
			telephone = $("input[name='phone']").val();
		}
		$.ajax({
			url : "frontEnd/verification",
			data : {
				"telephone" : telephone
			},
			type : "POST",
			dataType : "json",
			success : function(result) {
				if (result == true) {
					alert("短信已成功发送给" + telephone + ",请注意查收!");
				} else {
					alert("发送失败，请重新发送!");
				}
			}
		});
	}
	//自定义校验规则  
	$.validator.addMethod(
	//规则的名称  
	"checkpwd",
	//校验的函数  
	function(value, element, params) {
		//定义一个标志  
		var flag = false;
		//此时使用ajax后台校验用户名是否正确  
		$.ajax({
			"async" : false,
			"url" : "${pageContext.request.contextPath}/frontEnd/pwdChecked",
			"data" : {
				"pwd" : value
			},
			"type" : "POST",
			"dataType" : "json",
			//这里的data是服务器传来的一个json字符串，前端解析为JS对象（里面包含是否存在该用户的信息）  
			"success" : function(data) {
				//data.isExist==false代表服务器不存在该用户  
				flag = data;
			}
		});
		//返回false代表该校验器不通过  
		return flag;
	});
	//自定义校验规则  
	$.validator.addMethod(
					//规则的名称  
					"checkSecurityCode",
					//校验的函数  
					function(value, element, params) {
						//定义一个标志  
						var flag = false;
						//此时使用ajax后台校验用户名是否正确  
						$
								.ajax({
									"async" : false,
									"url" : "${pageContext.request.contextPath}/frontEnd/checkedSecurityCode",
									"data" : {
										"securityCode" : value
									},
									"type" : "POST",
									"dataType" : "json",
									//这里的data是服务器传来的一个json字符串，前端解析为JS对象（里面包含是否存在该用户的信息）  
									"success" : function(data) {
										//data.isExist==false代表服务器不存在该用户  
										flag = data;
									}
								});
						//返回false代表该校验器不通过  
						return flag;
					});
	//自定义校验规则  
	$.validator
			.addMethod(
					//规则的名称  
					"checkAnswer",
					//校验的函数  
					function(value, element, params) {
						//定义一个标志  
						var flag = false;
						//此时使用ajax后台校验用户名是否正确  
						$
								.ajax({
									"async" : false,
									"url" : "${pageContext.request.contextPath}/frontEnd/checkedAnswer",
									"data" : {
										"answer" : value
									},
									"type" : "POST",
									"dataType" : "json",
									//这里的data是服务器传来的一个json字符串，前端解析为JS对象（里面包含是否存在该用户的信息）  
									"success" : function(data) {
										//data.isExist==false代表服务器不存在该用户  
										flag = data;
									}
								});
						//返回false代表该校验器不通过  
						return flag;
					});
	//格式验证
	$(function() {
		$("#registForm").validate({
			validClass : "success", //这边的checked是你自己设置的alidClass，默认valid
			rules : {
				phone : {
					digits : true,
					required : false,
					minlength : 11,
					maxlength : 11
				},
				oldpwd : {
					required : true,
					minlength : 6,
					maxlength : 20,
					checkpwd : true
				},

				pwd : {
					required : false,
					minlength : 6,
					maxlength : 20
				},
				pwd2 : {
					required : false,
					equalTo : "[name='pwd']"
				},
				answer : {
					required : true,
					checkAnswer : true
				},
				securityCode : {
					required : true,
					checkSecurityCode : true
				}
			},
			messages : {
				phone : {
					digits : "手机号码格式不正确!",
					minlength : "手机号码格式不正确!",
					maxlength : "手机号码格式不正确!"
				},
				oldpwd : {
					required : "密码不能为空!",
					minlength : "密码不得少于6位!",
					maxlength : "密码最大20位!",
					checkpwd : "密码错误!"
				},
				pwd : {
					minlength : "密码不得少于6位!",
					maxlength : "密码最大20位!"
				},
				pwd2 : {
					equalTo : "两次输入密码不一致!"
				},
				answer : {
					required : "答案不能为空!",
					checkAnswer : "答案错误!"
				},
				securityCode : {
					required : "验证码不能为空!",
					checkSecurityCode : "验证码错误!"
				}

			},
			errorElement : "label", //用来创建错误提示信息标签,validate插件默认的就是label
			success : function(label) { //验证成功后的执行的回调函数
				//label指向上面那个错误提示信息标签label
				label.text(" ") //清空错误提示消息
				label.addClass("success"); //加上自定义的success类

			},
			errorPlacement : function(error, element) {
				error.appendTo(element.siblings("span"));
			}
		});

	});
</script>
</head>

<body >
	<div style="width:1920px;height:1080px;background: url(Images/bbbb.png);" >
		<div id="sanjiao"></div><span id="fristId">当前位置:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;修改个人资料</span><div id="sanjiao2"></div><a id="shouye" href="/examination/default.jsp">返回首页:</a>
		<div id="divfrom">
			<form action="frontEnd/modify" method="post" id="registForm">
								<table width="80%" border="0" cellpadding="0" cellspacing="0"
									bordercolor="#FFFFFF" bordercolordark="#D2E3E6"
									bordercolorlight="#FFFFFF">
									<tr>
										<td align="left" style="padding: 5px;">原&nbsp;电&nbsp;话&nbsp;号&nbsp;码：</td>
										<td align="left"><input type="text" id="oldphone"
											name="oldphone" size="28" value="${tbStudent.phone}"
											readonly="readonly" "/>
									</tr>
									<tr>
										<td height="30" align="left" style="padding: 5px;">新&nbsp;电&nbsp;话&nbsp;号&nbsp;码：</td>
										<td align="left"><input type="text" id="newphone"
											name="phone" size="28" /><span></span></td>
									</tr>
									<tr>
										<td align="left" style="padding: 5px;">原&nbsp;密&nbsp;码：</td>
										<td align="left"><input type="password" id="oldpwd1"
											name="oldpwd" size="28" placeholder="密码由6到20位的数字或字母组成" />*<span></span>
									</tr>
									<tr>
										<td height="30" align="left" style="padding: 5px;">新&nbsp;密&nbsp;码：</td>
										<td align="left" style="font-size: 12px"><input
											type="password" id="newpwd" name="pwd" size="28"
											placeholder="密码由6到20位的数字或字母组成" /><span></span></td>
									</tr>
									<tr align="center">
										<td width="20%" height="30" align="left" style="padding: 5px;">确认新密码：</td>
										<td width="80%" align="left"><input type="password"
											id="newpwd1" name="pwd2" size="28" /><span></span></td>
									</tr>

									<tr align="center">
										<td width="20%" height="30" align="left" style="padding: 5px;">提示问题：</td>
										<td width="80%" align="left"><input type="text" size="28"
											name="question" id="question" value="${tbStudent.question}"
											readonly="readonly" /></td>
									</tr>
									<tr align="center">
										<td width="20%" height="30" align="left" style="padding: 5px;">问题答案：</td>
										<td width="80%" align="left"><input type="text"name="answer" size="28" id="answer" value="" /> *<span></span></td>
									</tr>
									<tr align="center">
										<td width="20%" height="30" align="left" style="padding: 5px;">身份证号：</td>
										<td width="80%" align="left"><input type="text"
											value="${tbStudent.cardno}" size="28" readonly="true"
											name="cardno" /></td>
									</tr>
									<tr>
										<td><input type="button" value="发送验证码"
											onclick="sendSecurityCode()" /></td>
										<td id="twoTd"><input type="text" name="securityCode"
											size="10"> *<span></span> <input type="hidden"
											value="${tbStudent.id}" name="id" /></td>
									</tr>
									<tr>
										<td height="65" align="left" style="padding: 5px">&nbsp;</td>
										<td><input type="submit" class="btn_grey" value="保存" />
											&nbsp; <input type="reset" class="btn_grey" value="清空" />
											&nbsp; <input type="button" class="btn_grey" value="返回"
											onclick="window.location.href='/examination/default.jsp'" />

										</td>
									</tr>
								</table>
							</form>
		</div>
	</div>
</body>

</html>
