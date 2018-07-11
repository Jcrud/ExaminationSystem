<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet">
</head>
<script language="javascript">
function checkForm(form){
	if(form.name.value==""){
		alert("请输入套题名称!");form.name.focus();return false;
	}
}
</script>
<body>
<%@ include file="top.jsp"%>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
    <td width="602" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">套题信息管理 &gt; 添加套题信息 </span></td>
              <td align="right"><img src="../Images/m_ico1.gif" width="5" height="9">&nbsp;当前管理员：${manager.name}&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
 <table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="84%">&nbsp;      </td>
</tr>
</table> 
<form action="taoTiAdd" method="post" onsubmit="return checkForm(taoTiForm)">
  <table width="63%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
  <tr align="center">
    <td width="27%" height="30" align="left" style="padding:5px;">套题名称：</td>
    <td width="73%" align="left">
      <Input type="text" name="name" size="30"/>
	  </td>
    </tr>
    <tr>
    <td height="30" align="left" style="padding:5px;">所属课程：</td>
    <td align="left">
	 <select name="lessonid">
	 <c:forEach items="${lessons}" var="l">	 
		<option value="${l.id}" >${l.name}</option>
	</c:forEach>
	 </select>
     </td>
    </tr>
    <tr align="center">
    <td width="27%" height="30" align="left" style="padding:5px;">考试时间:</td>
    <td width="73%" align="left">
      <Input type="text" name="duration" size="25"/>&nbsp;&nbsp; 分钟
	  </td>
    </tr>
    <tr align="center">
    <td width="27%" height="30" align="left" style="padding:5px;">单选题分数:</td>
    <td width="73%" align="left">
      <Input type="text" name="onemark" size="25"/>&nbsp;&nbsp;分
	  </td>
    </tr>
    <tr align="center">
    <td width="27%" height="30" align="left" style="padding:5px;">多选题分数:</td>
    <td width="73%" align="left">
      <Input type="text" name="muiltmark" size="25"/>&nbsp;&nbsp;分
	  </td>
    </tr>
    <tr>
      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
      <td><input type="submit" property="submit" styleClass="btn_grey" value="保存"/>
        &nbsp;
        <input type="reset" styleClass="btn_grey" value="取消"/>
		&nbsp;
		<input type="button" styleClass="btn_grey" value="返回" onclick="window.location.href='taoTiQuery'"/>		</td>
    </tr>
</table>
</form>
</td>
      </tr>
    </table>
</td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
