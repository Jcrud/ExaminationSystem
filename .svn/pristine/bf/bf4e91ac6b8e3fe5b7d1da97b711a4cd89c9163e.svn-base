<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %> 
<!DOCTYPE html>
<html>
<head>
<title>网络在线考试</title>
<html:base />
<link href="CSS/style.css" rel="stylesheet">
<script type="text/javascript" src="JS/json2.js"></script>
<script type="text/javascript" src="JS/jquery-1.8.3.js"></script>
 <style type="text/css">
    .triangle-up {
        display: inline-block;
        border: 5px solid transparent;
        border-top-color: #7BA1C9;
        border-bottom: 0;
    }
     .triangle-down {
        display: inline-block;
        border: 5px solid transparent;
        border-bottom-color: #7BA1C9;
        border-top: 0;
    }
</style>
<script type="text/javascript">

$(function(){
	showAll(null,1);
	$(".triangle").click(function(){
		/*如果value是0（未排序）则通过ajax请求并刷新  并赋值为1
		如果value是1（顺序）重写tr并复值2
		如果value是2（倒序）重写tr并复值1
		*/
		
		var oderby=this.id;
		/*当value=1时将三角全向下并所有value=1;
		*/
		
		if($("input[name='"+oderby+"'").val()==1){
			$("span[id='whichLesson']").addClass("triangle-up");
			$("span[id='whichLesson']").removeClass("triangle-down");
			
			$("span[id='taotiname']").addClass("triangle-up");
			$("span[id='taotiname']").removeClass("triangle-down");
			
			$("span[id='joinTime']").addClass("triangle-up");
			$("span[id='joinTime']").removeClass("triangle-down");
		
			$("span[id='resSingle']").addClass("triangle-up");
			$("span[id='resSingle']").removeClass("triangle-down");
		
			$("span[id='resMore']").addClass("triangle-up");
			$("span[id='resMore']").removeClass("triangle-down");
			
			$("span[id='resTotal']").addClass("triangle-up");
			$("span[id='resTotal']").removeClass("triangle-down");
			
			 $(this).addClass("triangle-down");
			 $(this).removeClass("triangle-up");
		     $("input[name='whichLesson']").val("1");
		     $("input[name='taotiname']").val("1");
		     $("input[name='joinTime']").val("1");
		     $("input[name='resSingle']").val("1");
		     $("input[name='resMore']").val("1");
		     $("input[name='resTotal']").val("1");
		}
		/*当value=2时将三角向上*/
		else if($("input[name='"+oderby+"'").val()==2){
			 $(this).addClass("triangle-up");
		     $(this).removeClass("triangle-down");
		    
		}
		var num=$("input[name='"+oderby+"'").val();
		showAll(oderby,num);
		
	});
});
function showAll(oderby,num){
	
	$("#firstTr ~ tr").empty();
	$.ajax({
			  url:"frontEnd/showAllResult",
			  data:{"id":"${tbStudent.id}","oderby":oderby},
			  type:"POST",
			  dataType:"json",
			  success:function(result){
				  if(num==1){
					  $.each(result,function(i,n){
							var	date=new Date(n.jointime).format('yyyy-MM-dd');
							var tr=$("<tr></tr>");
							var td1=$("<td style='padding:5px;'>"+n.stuid+"</td>");
							var td2=$("<td style='padding:5px;'>"+n.whichlesson+"</td>");
							var td3=$("<td style='padding:5px;'>"+n.taotiname+"</td>");

							var td4=$("<td align='center'>"+date+"</td>");
							var td5=$("<td align='center'>"+n.ressingle+"</td>");
							var td6=$("<td align='center'>"+n.resmore+"</td>");
							var td7=$("<td align='center'>"+n.restotal+"</td>");
						
								tr.append(td1).append(td2).append(td3).append(td4).append(td5).append(td6).append(td7).appendTo($("#showtable"));
								$("input[name='"+oderby+"'").val("2");
					  });
 
				  }else if(num==2){
					  for(var i=result.length-1;i>=0;i--){
						 
						    var date=new Date(result[i].jointime).format('yyyy-MM-dd');
							var tr=$("<tr></tr>");
							var td1=$("<td style='padding:5px;'>"+result[i].stuid+"</td>");
							var td2=$("<td style='padding:5px;'>"+result[i].whichlesson+"</td>");
							var td3=$("<td style='padding:5px;'>"+result[i].taotiname+"</td>");

							var td4=$("<td align='center'>"+date+"</td>");
							var td5=$("<td align='center'>"+result[i].ressingle+"</td>");
							var td6=$("<td align='center'>"+result[i].resmore+"</td>");
							var td7=$("<td align='center'>"+result[i].restotal+"</td>");
								tr.append(td1).append(td2).append(td3).append(td4).append(td5).append(td6).append(td7).appendTo($("#showtable"));
								$("input[name='"+oderby+"'").val("1");
					  }
				  }
				
				 
				  
			  }
		
	});
	
	
}
Date.prototype.format =function(format){
	var o = {
		"M+" : this.getMonth()+1, //month
		"d+" : this.getDate(), //day
		"h+" : this.getHours(), //hour
		"m+" : this.getMinutes(), //minute
		"s+" : this.getSeconds(), //second
		"q+" : Math.floor((this.getMonth()+3)/3), //quarter
		"S" : this.getMilliseconds() //millisecond
	}
	if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
		(this.getFullYear()+"").substr(4- RegExp.$1.length));
	for(var k in o)if(new RegExp("("+ k +")").test(format))
		format = format.replace(RegExp.$1,
			RegExp.$1.length==1? o[k] :
				("00"+ o[k]).substr((""+ o[k]).length));
	return format;
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
              <td width="76%" class="word_grey">&nbsp;<img src="Images/f_ico.gif" width="8" height="8"> 当前位置：→ <span class="word_darkGrey">考生成绩查询 &gt;&gt;&gt;</span></td>
			  <td width="24%" align="right"><img src="Images/m_ico1.gif" width="5" height="9">
			    <a href="/examination/default.jsp" >返回首页</a>&nbsp;</td>
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
<table id="showtable" width="98%"  border="1" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF" bordercolordark="#FFFFFF" bordercolorlight="#67A8DB">
  <tr align="center" id="firstTr">
    <td width="18%" height="27" bgcolor="#B2D6F1">准考证号</td>
	<td width="18%" bgcolor="#B2D6F1">所属课程&nbsp;&nbsp;<span class="triangle-up triangle" id="whichLesson" ></span><input type="hidden" name="whichLesson" value="1"/></td>
	<td width="15%" bgcolor="#B2D6F1">所属套题&nbsp;&nbsp;<span class="triangle-up triangle" id="taotiname" ></span><input type="hidden" name="taotiname" value="1"/></td>
	<td width="15%" bgcolor="#B2D6F1">考试时间&nbsp;&nbsp;<span class="triangle-up triangle" id="joinTime" ></span><input type="hidden" name="joinTime" value="1"/></td>
	<td width="11%" bgcolor="#B2D6F1">单选题分数&nbsp;&nbsp;<span class="triangle-up triangle" id="resSingle" ></span><input type="hidden" name="resSingle" value="1"/></td>
	<td width="11%" bgcolor="#B2D6F1">多选题分数&nbsp;&nbsp;<span class="triangle-up triangle" id="resMore" ></span><input type="hidden" name="resMore" value="1"/></td>
    <td width="9%" bgcolor="#B2D6F1">合计分数&nbsp;&nbsp;<span class="triangle-up triangle" id="resTotal" ></span><input type="hidden" name="resTotal" value="1"/></td>
  </tr>
</table>
</td>
      </tr>
    </table>
</td>
  </tr>
</table>
<%@ include file="copyright.jsp"%>
</body>
</html>
