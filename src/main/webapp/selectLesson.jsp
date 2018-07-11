<%@ page contentType="text/html; charset=UTF-8" language="java" errorPage="" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>网络在线考试</title>
<html:base />
<link href="CSS/style.css" rel="stylesheet">
<script type="text/javascript" src="/examination/JS/jquery-1.8.3.js"></script>
<script>
				$(function(){
					$("#lesson").change(function(){
						var id=$("#lesson").val();
						
						$.ajax({
							url:"${pageContext.request.contextPath}/frontEnd/selectTaoTi",
							data:{"lessonid":id},
							type:"POST",
							dataType:"json",
							success: function(result){
								$("#taoTi").empty();
								if(result==null||result==""){
									var name=$("<option  hidden>无</option>")
									$("#taoTi").append($(name));
								}else{
								$.each(result, function(i, n){
									var name=$("<option value="+n.id+">"+n.name+"</option>")
									$("#taoTi").append($(name));
									});
								}
							}
						});
					});
				});
				function check(obj){
					if(obj.taoTi.value=="无"||obj.taoTi.value==""){
						alert("请选择试卷!");obj.taoTi.focus();return false;
					}
					}
			</script>
</head>
<body>

<table width="778" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="131" background="Images/top_bg.jpg">&nbsp;</td>
  </tr>
</table>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" bgcolor="#FFFFFF"><table width="774" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="76%" class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> 当前位置：→ <span class="word_darkGrey">在线考试 → 选择考试课程 &gt;&gt;&gt;</span></td>
			  <td width="24%" align="right"><img src="Images/m_ico1.gif" width="5" height="9">
			    <a href="/examination/default.jsp" >返回首页</a>&nbsp;</td>
              </tr>
          </table></td>
        </tr>
      <tr>
        <td align="center" valign="top">
<form action="frontEnd/ready" method="post" onsubmit="return check(this)">
 <table width="100%" height="262"  border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="90" colspan="3" align="center" class="word_orange1">&nbsp;</td>
</tr>
  <tr>
    <td width="12%">&nbsp;</td>
    <td width="77%" align="center" valign="top">请选择考试课程：
      <select name="lessonId" style="font-size: 10px" id="lesson" >
      	<option  hidden>----请选择考试课程----</option>
    	<c:forEach items="${TbLessones}" var="tbLessones">
		<option value="${tbLessones.id}" />${tbLessones.name}
		</c:forEach>
	 </select>
	 <select name="taoTi" id="taoTi" style="font-size: 10px">
    	<option  hidden>无</option>
	 </select></td>
    <td width="11%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center" valign="top"><input type="submit" class="btn_grey" value="确定"/>
	<input type="button" name="button" class="btn_grey" value="返回" onclick="history.back(-1)"/>	</td>
    <td>&nbsp;</td>
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
