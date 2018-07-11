<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>网络在线考试――后台管理</title>
<link href="../CSS/style.css" rel="stylesheet">
<script language="javascript" src="../JS/AjaxRequest.js">
</script>
<script type="text/javascript" src="../JS/jquery-1.8.3.js" ></script>

<script language="javascript">
$(function(){
	questionAddQury();	
});
function questionAddQury(){
	var lessonid=$("#lessonid").val();
	var TaotiId=$("#TaotiId").val();
	$("#lessonid").empty();
	$("input[value!='保存'][value!='保存并继续加题'][value!='取消'][value!='返回']").attr("value",'');
	$.ajax({
		url:"questionsAddQuery",
		type:"POST",
		datatype:"json",
		success:function res(result){
			var sele=$("#lessonid")	
			$.each(result,function(i,n){
			var option1=$("<option value="+n.id+">"+n.name+"</option>");
			sele.append($(option1));
			
			
			});
			if(lessonid==null){
				F_getTaoTi(sele.val());	
			}else{
				F_getTaoTi(lessonid);
			}
					
			 $("#lessonid option[value="+lessonid+"]").attr("selected","selected");			 
			 $("option[value="+TaotiId+"]").attr("selected","selected"); 
	}
	
});}

/*用ajax实现省市联动*/
function F_getTaoTi(val){	
		$("#whichTaoTi").empty();		
		$.ajax({
			url:"queryTaoTi",
			type:"POST",
			data:{"id":val},
			datatype:"json",
			success:function res(result){
				if(null != result && "" != result){
				var sele=$("<select name='taotiid' id='TaotiId'></select>")	
				$.each(result,function(i,n){
				var option1=$("<option name="+n.id+" value="+n.id+">"+n.name+"</option>");
				sele.append($(option1));
				});
				$("#whichTaoTi").append($(sele));
			}else{ alert("此课程没有套题");}
				}
		});
		
	
}
function checkForm(form){
	if(form.subject.value==""){
		alert("请输入考试题目名称!");form.subject.focus();return false;
	}
	if(form.optiona.value==""){
		alert("请输入题目A的答案!");form.optiona.focus();return false;
	}
	if(form.optionb.value==""){
		alert("请输入题目B的答案!");form.optionb.focus();return false;
	}
	if(form.optionc.value==""){
		alert("请输入题目C的答案!");form.optionc.focus();return false;
	}
	if(form.optiond.value==""){
		alert("请输入题目D的答案!");form.optiond.focus();return false;
	}
}
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
function addAgain(){
	
	 $.ajax({
             type: "POST",
             url: "questionsAdd" ,
             data: $('#questionsForm').serialize(),
             success: function (result) {	 
            	 questionAddQury();          
            	
             },
         });
		
	 }
</script>
</head> 
<!-- onLoad="F_getTaoTi(questionsForm.lessonId.value)" -->
<body >
<%@ include file="top.jsp"%>
<table width="778" border="0" align="center" cellspacing="0" cellpadding="0">
  <tr>
    <td width="176" align="center" valign="top" bgcolor="#FFFFFF"><%@ include file="left.jsp"%></td>
    <td width="602" valign="top" bgcolor="#FFFFFF"><table width="99%" height="487"  border="0" cellpadding="0" cellspacing="0" align="right">
      <tr>
        <td height="30" bgcolor="#EEEEEE" class="tableBorder_thin"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="78%" class="word_grey">&nbsp;当前位置：<span class="word_darkGrey">考试题目管理 &gt; 添加考试题目 &gt;&gt;&gt;</span></td>
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
<form action="questionsAdd" method="post" id="questionsForm" name="questionsForm" onsubmit="return checkForm(questionsForm)">
  <table width="85%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#D2E3E6" bordercolorlight="#FFFFFF">
  <tr>
    <td height="30" align="left" style="padding:5px;">所属课程：</td>
    <td align="left">
	 <select name="lessonid" id="lessonid" onchange="F_getTaoTi(this.value)">
		
	 </select>
     </td>
    </tr>
    <tr>
    <td height="30" align="left" style="padding:5px;">所属套题：</td>
    <td align="left" id="whichTaoTi">
   
     </td>
    </tr>
  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">考试题目：</td>
    <td width="85%" align="left">
      <input type="text" name="subject" size="40"/> *
	  </td>
    <tr>
    <tr>
    <td height="30" align="left" style="padding:5px;">试题类型：</td>
    <td align="left">
	 <select name="type" onchange="show(this.value)">
		<option value="单选题">单选题</option>
		<option value="多选题">多选题</option>
	 </select>
     </td>
    </tr>	
    <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">选项A：</td>
    <td width="85%" align="left">
      <input type="text" name="optiona" size="40"/> *
	  </td>
    </tr>
	  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">选项B：</td>
    <td width="85%" align="left">
      <input type="text" name="optionb" size="40"/> *
	  </td>
    </tr>
	  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">选项C：</td>
    <td width="85%" align="left">
      <input type="text" name="optionc" size="40"/> *
	  </td>
    </tr>
  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">选项D：</td>
    <td width="85%" align="left">
      <input type="text" name="optiond" size="40"/> *
	  </td>
    </tr>
    <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">正确答案：</td>
    <td width="85%" align="left" id="sOption">
      <select  id="oneOption">
		<option value="A">A </option>
		<option value="B">B </option>
		<option value="C">C </option>
		<option value="D">D </option>		
	 </select>
	  </td>	
    <td width="85%" align="left" id="mOption" style="display:none">
 	<input  type="checkbox" name="answer" value="A">A
	<input  type="checkbox" name="answer" value="B">B
	<input  type="checkbox" name="answer" value="C">C
	<input  type="checkbox" name="answer" value="D">D	
	  </td>		  
    </tr>
	
	  <tr align="center">
    <td width="15%" height="30" align="left" style="padding:5px;">备注：</td>
    <td width="85%" align="left">
      <input type="text" property="note" size="40"/>
	  </td>
    </tr>	
    <tr>
      <td height="65" align="left" style="padding:5px;">&nbsp;</td>
      <td><input type="submit" name="submit"  value="保存"/>
        &nbsp;
        <input type="button" name="addA"  onclick="addAgain()" value="保存并继续加题"/>
		&nbsp;
        <input type="reset" name="reset"  value="取消"/>
		&nbsp;
		<input type="button" name="button"  value="返回" onclick="window.location.href='questionsQuery'"/>		</td>
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
<script type="text/javascript">
</script>
</html>
