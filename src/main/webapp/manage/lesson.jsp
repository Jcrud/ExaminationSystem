<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet">
<script language="javascript">
function CheckAll(elementsA,elementsB){
	for(i=0;i<elementsA.length;i++){
		elementsA[i].checked = true;
	}
	if(elementsB.checked ==false){
		for(j=0;j<elementsA.length;j++){
			elementsA[j].checked = false;
		}
	}
}
//判断用户是否选择了要删除的记录，如果是，则提示“是否删除”；否则提示“请选择要删除的记录”
function checkdel(delid,formname){
	var flag = false;
	for(i=0;i<delid.length;i++){
		if(delid[i].checked){
			flag = true;
			break;
		}
	}
	if(!flag){
		alert("请选择要删除的记录!")
		return false;
	}else{
			if(confirm("确定要删除吗？")){
				formname.submit();
		}
	}
}
</script>

</head>
<body>
<%@ include file="top.jsp"%>
<table width="778 border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
    <td width="602" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">课程信息管理  &gt;&gt;&gt;</span></td>
              <td align="right"><img src="../Images/m_ico1.gif" width="5" height="9">&nbsp;当前管理员：${manager.name}&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
<table width="96%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="90%" height="27" align="right"><img src="../Images/add.gif" width="19" height="18">&nbsp;</td>
    <td width="10%"><a href="#" onClick="window.open('lesson_add.jsp','','width=292,height=175')">添加课程</a> </td>
  </tr>
</table>
<form action="lessonDel" method="post" name="lessonForm">
<table width="96%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#67A8DB">
  <tr align="center" bgcolor="#A8D8FC">
    <td width="11%" height="26" bgcolor="#B2D6F1">ID</td>
    <td width="54%" bgcolor="#B2D6F1">课程名称</td>
	<td width="27%" bgcolor="#B2D6F1">加入时间</td>
	<td width="8%" bgcolor="#B2D6F1">选项</td>
  </tr>
	<c:forEach items="${lessons}" var="l">
  <tr>
 	<td align="center">${l.id}</td> 
    <td style="padding:5px;">${l.name}</td>
	<td align="center"><fmt:formatDate value="${l.jointime}" type="date" pattern="yyyy-MM-dd"/></td>
    <td align="center"><input name="delIdArray" type="checkbox" value="${l.id}"></td>
  </tr>
 </c:forEach>
</table>
<table width="94%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
	<td width="60%" height="24">&nbsp;</td>
	<td width="40%" align="right"><input name="checkbox" type="checkbox" class="noborder" onClick="CheckAll(lessonForm.delIdArray,lessonForm.checkbox)">
	  [全选/反选] [<a style="color:red;cursor:hand;" onClick="checkdel(lessonForm.delIdArray,lessonForm)">删除</a>]
	  <div id="ch">
		<input name="delid" type="checkbox" class="noborder" value="0">
	  </div></td>
	<!--层ch用于放置隐藏的checkbox控件，因为当表单中只是一个checkbox控件时，应用javascript获得其length属性值为undefine-->
	<script language="javascript">ch.style.display="none";</script>
  </tr> 
</table>
</form>
</td>
      </tr>
    </table></td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>