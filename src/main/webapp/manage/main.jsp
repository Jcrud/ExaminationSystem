<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet" type="text/css">
</head>
<script type="text/javascript" src="../JS/jquery-1.8.3.js"></script>
<script type="text/javascript" src="../JS/function.js" ></script>
<script type="text/javascript">
	// 成绩查询 
	function query(){
		$("#sturesult").empty();
		var queryIf=$("#queryIf").val();
		var key=$("#key").val();
		var flag=true;
		var JoinTime=$("#JoinTime").val();
		
		$.ajax({
			url:"stuResultQuery",
			type:"POST",
			data:{"queryIf":queryIf,"key":key,"JoinTime":JoinTime},
			datatype:"json",
			success:function res(result){
				if(null != result && "" != result){
				
				$.each(result,function(i,n){
				var td1=$("<td style='padding:5px;'>"+n.stuid+"</td>");
				var td2=$("<td style='padding:5px;'>"+n.whichlesson+"</td>");
				var td3=$("<td align='center'>"+n.jointime+"</td>");
				var td4=$("<td align='center'>"+n.ressingle+"</td>");
				var td5=$("<td align='center'>"+n.resmore+"</td>");
				var td6=$("<td align='center'>"+n.restotal+"</td>");
				var tr=$("<tr class='employee0'></tr>").append(td1).append(td2).append(td3).append(td4).append(td5).append(td6);
				$("#sturesult").append(tr);
				});
				
			}else{ alert("查无信息");}}
		});
			
		
	}
	/* 查询点击事件 */
	$(function k(){
	$("#querybutton").click(function (){
		query();
	});});
	/*获得时间并赋值给隐藏域*/
	function getTime(){
		var year=$("#year").val();
		var month=$("#month").val();
		var day=$("#day").val();
		var date=year+'/'+month+'/'+day;
		$("#JoinTime").val(date);
		alert($("#JoinTime").val());
	}
	$(function (){
		$("#year").change(function(){
			getTime();
		    });
		$("#month").change(function(){
			getTime();
		    });
		$("#day").change(function(){
			getTime();
		    });
	});
	
	
		
	
</script>
<body>
	<%@ include file="top.jsp"%>
	
	<table width="778" border="0" align="center" cellspacing="0"
		cellpadding="0">
		<tr>
			<td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include
					file="left.jsp"%></td>
			<td width="602" valign="top" bgcolor="#FFFFFF">
				<table width="99%" height="0" border="0" cellpadding="0"
					cellspacing="0" align="right">
					<tr>
						<td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table
								width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td width="78%" class="word_grey">&nbsp;当前位置：<span
										class="word_darkGrey">考生成绩查询 &gt;&gt;&gt;</span></td>
									<td align="right"><img src="/examination/Images/m_ico1.gif"
										width="5" height="9">&nbsp;当前管理员：${manager.name}&nbsp;</td>
								</tr>
							</table></td>
					</tr>

					<tr>

						<tr>
        <td align="center" valign="top">
        <table width="100%" height="40" border="0" cellpadding="0"
								cellspacing="0">
		<!-- 考生成绩查询 -->
		
          
          
          <tr>
            <td align="left" valign="middle">&nbsp;查询条件：
	          <select id="queryIf">
	     <option value="JoinTime">不限</option>
		<option value="stuId">准考证号</option>
		<option value="whichLesson">考试课程</option>		
		<!-- <option value="JoinTime">考试时间</option> -->
	 </select>
	 &nbsp;关键字：
	 <input type="text" id="key" name="key"/>&nbsp;&nbsp;
	 <select id="year">
	 	<option value="0000">不限</option>
		 <c:forEach begin="1977" end="2018" step="1" var="x">		
		  <option>${x}</option>			 
		 </c:forEach>
	 </select>
	 <select id="month">
	 	<option value="00">不限</option>
		 <c:forEach begin="1" end="12" step="1" var="x">
			  
			  <option>${x}</option>
			 		  
		  </c:forEach>
	 </select>
	 <select id="day">
	  	<option value="00">不限</option>
	 	 <c:forEach begin="1" end="31" step="1" var="x">
		  	
			  
			  <option>${x}</option>
			 
		  </c:forEach>
	 </select>	
	  <input type="hidden" name="JoinTime"   id="JoinTime" />
	 <input type="button" id="querybutton"   value="查询" />
										</td>
          </tr>
          
		
        </table>
		
				
		<table width="98%" border="1" cellpadding="0" cellspacing="0"
						bordercolor="#FFFFFF" bordercolordark="#FFFFFF"
								bordercolorlight="#67A8DB">
  <tr align="center">
    <td width="21%" height="27" bgcolor="#B2D6F1">准考证号</td>
	<td width="26%" bgcolor="#B2D6F1">所属课程</td>
	<td width="22%" bgcolor="#B2D6F1">考试时间</td>
	<td width="11%" bgcolor="#B2D6F1">单选题分数</td>
	<td width="11%" bgcolor="#B2D6F1">多选题分数</td>
    <td width="9%" bgcolor="#B2D6F1">合计分数</td>
  </tr>
		<!--  -->
		<tbody id="sturesult">
		</tbody>
</table>
</td>
      </tr>
    </table>
			</td>
  </tr>
</table>
<%@ include file="copyright.jsp"%></body>
</html>
