<%@page import="org.springframework.ui.Model"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <jsp:useBean id="lesson" class="com.wgh.dao.TaoTiDAO" scope="page"/>
<jsp:useBean id="taoTi" class="com.wgh.dao.QuestionsDAO" scope="page"/> --%>
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet">
</head>
<script type="text/javascript" src="../JS/jquery-1.8.3.js" ></script>
<script language="javascript">
function checkForm(form){
	if(form.name.value==""){
		alert("请输入考试题目名称!");form.name.focus();return false;
	}
}
$(function(){
 var type='${questions.type}';
	show(type)
	
});
$(function(){
	if('${questions.type}'=="单选题"){
		var answer='${questions.answer}';
		$("[value="+answer+"]").attr("selected","selected");
	}
	if('${questions.type}'=="多选题"){
		 var boxObj = $("input:checkbox[name='answer']");
		var answerlist='${questions.answer}';
		 var answer = answerlist.split(',');
		/* $("[value='A']").attr("checked",true); */
		for(i=0;i<boxObj.length;i++){
		       for(j=0;j<answer.length;j++){            
		           if(boxObj[i].value == answer[j])  //如果值与修改前的值相等
		           {
		               boxObj[i].checked= true;
		               break;
		           }
		       }
		    }
	}
	
});
function show(val){
		if(val=="单选题"){
		sOption.style.display="";
		mOption.style.display="none";
		$("#oneOption").attr("name",'answer');
	}else if(val=="多选题"){
		sOption.style.display="none";
		mOption.style.display="";		
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
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">考试题目管理 &gt; 修改考试题目 &gt;&gt;&gt;</span></td>
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


<form action="questionsModify" method="post" onsubmit="return checkForm(questionsForm)">
	<table width="85%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
    <tr>
      <td height="30" align="left" style="padding:5px;">所属课程：</td>
       <td align="left">${questions.lesson.name}</td> 
    </tr>
    <tr>
      <td height="30" align="left" style="padding:5px;">所属套题：</td>
     <td align="left" id="subType">${questions.taoti.name}</td> 
    </tr>
    <tr align="center">
      <td width="15%" height="30" align="left" style="padding:5px;">考试题目：</td>
      <td width="85%" align="left"><input type="text" id="subject" size="40" name="subject" value="${questions.subject}"/>
	  <input type="hidden" id="ID" value="${questions.id}" name="id"/>
        * </td>
    <tr>
    <tr>
      <td height="30" align="left" style="padding:5px;">试题类型：</td>
      <td align="left"><select id="type" onchange="show(this.value)" name="type">
          <c:if test="${questions.type=='单选题'}">
          <option value="单选题" selected="selected">单选题</option>
          <option value="多选题" >多选题</option>
          </c:if>
          <c:if test="${questions.type=='多选题'}">
          <option value="单选题" >单选题</option>
          <option value="多选题" selected="selected">多选题</option>
          </c:if>
        </select>      </td>
    </tr>
    <tr align="center">
      <td width="15%" height="30" align="left" style="padding:5px;">选项A：</td>
      <td width="85%" align="left"><input type="text" id="optionA" size="40" name="optiona" value="${questions.optiona}"/>
        * </td>
    </tr>
    <tr align="center">
      <td width="15%" height="30" align="left" style="padding:5px;">选项B：</td>
      <td width="85%" align="left"><input type="text" id="optionB" size="40" name="optionb" value="${questions.optionb}"/>
        * </td>
    </tr>
    <tr align="center">
      <td width="15%" height="30" align="left" style="padding:5px;">选项C：</td>
      <td width="85%" align="left"><input type="text" id="optionC" size="40" name="optionc" value="${questions.optionc}"/>
        * </td>
    </tr>
    <tr align="center">
      <td width="15%" height="30" align="left" style="padding:5px;">选项D：</td>
      <td width="85%" align="left"><input type="text" id="optionD" size="40" name="optiond" value="${questions.optiond}"/>
        * </td>
    </tr>
    <%--  <tr align="center">
     <td>原答案为:${questions.answer}</td>
     </tr> --%>
    <tr align="center">
      <td width="15%" height="30" align="left" style="padding:5px;">正确答案：</td>
      <td width="85%" align="left" id="sOption"><select id="oneOption" >          
          <option value="A" >A </option>
          <option value="B">B </option>
          <option value="C">C </option>
          <option value="D">D </option>
        </select>      </td>
      <td width="85%" align="left" id="mOption" style="display:none">
	 <input  type="checkbox" name="answer" value="A" >A
	<input  type="checkbox" name="answer" value="B">B
	<input  type="checkbox" name="answer" value="C">C
	<input  type="checkbox" name="answer" value="D">D
	 </td>
    </tr>
    <tr align="center">
      <td width="15%" height="30" align="left" style="padding:5px;">备注：</td>
      <td width="85%" align="left"><input type="text"  size="40" name="questionsModifyQuery" value="${questions.note}"/>   
         </td>
    </tr>
    <tr>
      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
      <td><input type="submit" name="submit"  value="保存"/>
        &nbsp;
        <input type="reset" name="reset"  value="取消"/>
        &nbsp;
        <input type="button" name="button"  value="返回" onclick="window.location.href='questionsQuery'"/></td>
    </tr>
  </table>
</form></td>
      </tr>
    </table>
</td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
<script type="text/javascript">
  function chose(){
		var type=document.getElementById("type");
		alert(type);
		show(type);
		
	} 
</script>
</html>
