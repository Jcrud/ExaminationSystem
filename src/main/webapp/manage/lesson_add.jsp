<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>添加课程</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../CSS/style.css" rel="stylesheet">
</head>
<script language="javascript">
function check(){
	if(addForm.name.value==""){
		alert("请输入课程名称!");addForm.name.focus();return;
	}
	addForm.submit();
	
}
</script>
<body>
<table width="292" height="175" border="0" cellpadding="0" cellspacing="0" background="../Images/subBG.jpg">
  <tr>
    <td valign="top"><table width="100%" height="175" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="12%" height="47">&nbsp;</td>
        <td width="85%" valign="bottom"><table width="86%" height="31" border="0" align="center" cellpadding="0" cellspacing="0">
          <tr>
            <td class="word_white">添加课程</td>
          </tr>
        </table></td>
        <td width="3%">&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><table width="100%" height="106"  border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="106" align="center" valign="middle">
	<form action="lessonAdd" method="post" name="addForm">
	<table height="77"  border="0" cellpadding="0" cellspacing="0">
      <tr>
        <td width="67" height="30" align="center">课程名称：</td>
        <td width="181">
          <input type="text" name="name" size="25"/></td>
      </tr>
      <tr>
        <td height="47" align="center">&nbsp;</td>
        <td><input type="button" name="button"  value="保存" onclick="check()"/>
&nbsp;
<input type="button" name="button"  value="关闭" onclick="window.close();"/></td>
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
