<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>添加管理员信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../CSS/style.css" rel="stylesheet">
</head>
<script language="javascript">
function check(){
	
	
	 if(addForm.name.value==""){
		alert("请输入管理员名称!");addForm.name.focus();return ;
	}
	if(addForm.password1.value==""){
		alert("请输入管理员密码!");addForm.password1.focus();return ;
	}
	if(addForm.password2.value==""){
		alert("请确认管理员密码!");addForm.password2.focus();return ;
	}		
	if(addForm.password1.value!=addForm.password2.value){
		alert("您两次输入的管理员密码不一致，请重新输入!");addForm.password1.focus();return ;
	} 
	addForm.submit();
	
	
}
</script>
<body>
<table width="292" height="175" border="0" cellpadding="0" cellspacing="0" background="../Images/subBG.jpg">
  <tr>
    <td valign="top"><table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="12%" height="47">&nbsp;</td>
        <td width="85%" valign="bottom"><table width="86%" height="31" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="word_white">添加管理员</td>
          </tr>
        </table></td>
        <td width="3%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="100%" height="116"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="116" align="center" valign="top">
	<form action="managerAdd" method="post" name="addForm">
	<table height="116"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="81" height="30" align="center">管理员名称：</td>
        <td width="167">
          <input type="text" name="name"/></td>
      </tr>
      <tr>
        <td height="28" align="center">管理员密码：</td>
        <td><input type="password" id="password1" name="pwd"/></td>
      </tr>
      <tr>
        <td height="28" align="center">确认 &nbsp;密码：</td>
        <td><input type="password" id="password2" name="pwd1"/></td>
      </tr>
      <tr>
        <td height="30" align="center">&nbsp;</td>
        <td><input type="button" name="button" styleClass="btn_grey" value="保存" onclick="check()"/>
&nbsp;
<input type="button" name="button" styleClass="btn_grey" value="关闭" onclick="window.close();"/></td>
      </tr>
    </table>
	</form></td>
          </tr>
        </table></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
    </table></td>
  </tr>
</table>
</body>
</html>
