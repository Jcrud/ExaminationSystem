<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />

<title>网络在线考试</title>
<link rel="stylesheet" href="../CSS/style.css"/>
<script language="javascript" src="../JS/AjaxRequest.js">
</script>
<script type="text/javascript" src="../JS/jquery-1.8.3.js"></script>
<script language="javascript">
	var e="${tbTaoti.duration*60}";
	var s=0;
	var everyQuestion;
	var everyQuestion2;
	$(function(){				
		setInterval("showStartTime();showRemainTime();",1000);
		if(${resSingle.size()}==0){
			$("#firstSpan").text(0);
		}else{
			 everyQuestion=${tbTaoti.onemark/resSingle.size()} ;
			everyQuestion=everyQuestion.toFixed(0);
			$("#firstSpan").text(everyQuestion);
		}
		if(${resMore.size()}==0){
			$("#twoId").text(0);
		}else{
			 everyQuestion2=${tbTaoti.muiltmark/resMore.size()};
			everyQuestion2=everyQuestion2.toFixed(0);
			$("#twoId").text(everyQuestion2);
		}
		
	});
//此处需要加&nocache="+new Date().getTime()，否则将出现时间不自动走动的情况
/* function showStartTime(){
	var loader=new net.AjaxRequest("startExam.do?action=showStartTime&nocache="+new Date().getTime(),deal_s,onerror,"GET");
}
function showRemainTime(){
	 var loader1=new net.AjaxRequest("startExam.do?action=showRemainTime&nocache="+new Date().getTime(),deal_r,onerror,"GET"); 
	
	
}
function onerror(){
window.open('../index.jsp','','toolbar,menubar,scrollbars,resizable,status,location,directories,copyhistory,height=600,width=778');
window.close();
}
 function deal_s(){
	showStartTimediv.innerHTML=this.req.responseText;
} 
function deal_r(){
	showRemainTimediv.innerHTML=this.req.responseText;
	if(this.req.responseText=="00:00:00"){
		questionsForm.submit.click();
	} 
}*/
	
		function format(s){
		
		        var t;
		        if(s > -1){
		            var hour = Math.floor(s/3600);
		            var min = Math.floor(s/60) % 60;
		            var sec = s % 60;
		            if(hour < 10) {
		                t = '0'+ hour + ":";
		            } else {
		                t = hour + ":";
		            }

		            if(min < 10){t += "0";}
		            t += min + ":";
		            if(sec < 10){t += "0";}
		            t += sec;
		        }
		return t;
		}
	
/*显示过了多长时间*/
	function showStartTime(){
		$("#showStartTimediv").empty();
			s=s+1; 
		  var date = null;   
		  date=format(s);
		
		var time=$("<span>"+date+"</span>")
		$("#showStartTimediv").append($(time));
	}
	/*显示剩余多长时间*/
	function showRemainTime(){
		$("#showRemainTimediv").empty();
		e=e-1;	
		 var date = null;   
		  date=format(e);
		var time=$("<span>"+date+"</span>")
		$("#showRemainTimediv").append($(time));
		if(e==0){
			submitTestPaperok();
		}
	}
	/* function submitTestPaperok(){
	var	resTotal=0;
	var resSingle=0;
	var resMore=0;
		var resSingles=$("input[name='resSingle']:checked").val()
		alert("resSingles"+"===="+resSingles);
		$.each(resSingles,function(i,n){
			if("${resSingle.get(i).answer}"==n){
			
				resSingle+=5;
			}
		});
		
		
		alert("----");
		
		var resMores=$("input[name='resMore']:checked").val()
		alert("resMores"+"===="+resMores);
		$.each(resMores,function(i,n){
			
		});
		
		resTotal=resSingle+resMore;
		var url="/examination/frontEnd/submitTestPaper?restotal="+resTotal+"&&ressingle="+resSingle+"&&resmore="+resMore;
		window.location.href=url;
	} */

</script>
<script language=javascript>
function keydown(){
	if(event.keyCode==8){
		event.keyCode=0;
		event.returnValue=false;
		alert("当前设置不允许使用退格键");
	  }if(event.keyCode==13){
		event.keyCode=0;
		event.returnValue=false;
		alert("当前设置不允许使用回车键");
	  }if(event.keyCode==116){
		event.keyCode=0;
		event.returnValue=false;
		alert("当前设置不允许使用F5刷新键");
	  }if((event.altKey)&&((window.event.keyCode==37)||(window.event.keyCode==39))){
		event.returnValue=false;
		alert("当前设置不允许使用Alt+方向键←或方向键→");
	  }if((event.ctrlKey)&&(event.keyCode==78)){
	   event.returnValue=false;
	   alert("当前设置不允许使用Ctrl+n新建IE窗口");
	  }if((event.shiftKey)&&(event.keyCode==121)){
	   event.returnValue=false;
	   alert("当前设置不允许使用shift+F10");
	  }
}
function click() {
 event.returnValue=false;
	 alert("当前设置不允许使用右键！");
}
document.oncontextmenu=click;
/**
 * 前台计算分数方法
 */
function submitTestPaperok(){
	var resTotal=0;
	var resSingleScores=0;			
	//获得单选题回答数组
	 var OneOption=$("input[class='noborder']:checked");
	//获得单选题答案数组
	 var resSingle=$("[class='resSingleAnswer']");
	$.each(resSingle, function(i, n){		
			if(OneOption[i]&&n.value==OneOption[i].value){
				 resSingleScores+=everyQuestion;
			 }
		});
	var resMoreScores=0; 
	//获得多选题回答数组
	var mutiOption=$("input[class='mutiOption']");
	 var resMores=new Array;
	$.each(mutiOption, function(i, n){	
		//获得一个多选的答案
		 var resMore=$("input[name="+n.value+"][class='multi-select']:checked");
		 resMores[i]=resMore;
	});
	 //获得多选题正确答案数组
	var resMoreAnswer=$("[class='resMoreAnswer']");
	
	$.each(resMoreAnswer, function(i, n){
			var flag=true;
		   var answer=n.value.split(",");
		   for(var j=0;j<resMores[i].length;j++){
			   if(resMores[i][j].value!=answer[j]){				   
				   flag=false;
				 }   
		   }
		   if(flag){
			   resMoreScores+=everyQuestion2; 
		   }
		  
		}); 
	var url="/examination/frontEnd/submitTest?ressingle="+resSingleScores+"&&resmore="+resMoreScores;
	window.location.href=url;
	//进行比较，计算答对题数
	
	//多选题类似
	//计算总分数传给后台
	
}
</script>

</head>

<body  onkeydown="keydown()" marginwidth="auto" >

<table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
  <tr>
    <td width="40" height="39" background="../Images/startExam_leftTop.jpg">&nbsp;</td>
    <td width="667" align="right" background="../Images/startExam_top.jpg">&nbsp;
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>	
<td width="100%" nowrap height=23 align=right>考试时间：</td>
		<td width="14%" nowrap><font color="#FF0000">${tbTaoti.duration}</font>分钟</td>
		<td width="13%" nowrap>计 时：</td>
		<td width="60" nowrap><div id="showStartTimediv">00:00:00</div>
		</td>
		<td width="16%" nowrap>剩余时间：</td>
		<td width="60" align=left nowrap><div id="showRemainTimediv"></div></td></tr>
</table>	
	</td>
    <td width="19" background="../Images/startExam_top.jpg">&nbsp;</td>
    <td width="44" background="../Images/startExam_rightTop.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td height="435" rowspan="2" background="../Images/startExam_left.jpg">&nbsp;</td>
    <td height="43" colspan="2"><img src="../Images/startExam_ico.jpg" width="117" height="43"></td>
    <td rowspan="2" background="Images/startExam_right.jpg">&nbsp;</td>
  </tr>

    <td height="600" colspan="2" valign="top">
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
         
        </tr>
        <tr>
          <td width="64%">&nbsp;</td>
          <td width="36%">&nbsp;满分<font color="red">${tbTaoti.onemark+tbTaoti.muiltmark}</font>分&nbsp;&nbsp;&nbsp;单选题<font color="red">${tbTaoti.onemark}</font>分&nbsp;&nbsp;&nbsp;多选题<font color="red">${tbTaoti.muiltmark}</font>分</td>
        </tr>
      </table>
	 <!--  <form action="submitTest" method="POST"> -->
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td>
<table id="single" width="90%"  border="0" cellspacing="0" cellpadding="0" align=center>

  <tr>
    <td colspan="4" height=23 style="font-size:11pt;">一、单选题（<font color=red>每题<span id="firstSpan"></span>分，答错不得分</font>）</td>
  </tr>
<c:forEach items="${resSingle}" var="p" varStatus="status">
  <tr>
    <td height=23 colspan="4" align=center nowrap>
	  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="8%" align=right height=23> ${status.count}</td>
		  <td width="2%">&nbsp;</td>
		  <td width="90%" align=left nowrap style="font-size:11pt;">${p.subject}
		 <input type="hidden"  class="resSingleAnswer" value="${p.answer}" /> 
		  </td>
        </tr>
      </table>
	</td>
  </tr>
  <tr>
  	
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="radio"  name="${p.id}"  class="noborder" value="A"/></td>
    <td width="3%" align=center nowrap>A.</td>
    <td width="86%" align=left nowrap>${p.optiona}</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="radio"  name="${p.id}" class="noborder" value="B"/></td>
    <td width="3%" align=center nowrap>B.</td>
    <td width="86%" align=left nowrap>${p.optionb}</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="radio"  name="${p.id}" class="noborder" value="C"/></td>
    <td width="3%" align=center nowrap>C.</td>
    <td width="86%" align=left nowrap>${p.optionc}</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="radio"  name="${p.id}" class="noborder" value="D"/></td>
    <td width="3%" align=center nowrap>D.</td>
    <td width="86%" align=left nowrap>${p.optiond}</td>
  </tr>
  </c:forEach>
</table>

<table id="single" width="90%"  border="0" cellspacing="0" cellpadding="0" align=center>

  <tr>
    <td colspan="4" height=23 style="font-size:11pt;">二、多选题（<font color=red>每题<span id="twoId"></span>分，答错不得分</font>）</td>
  </tr>
<c:forEach items="${resMore}" var="p" varStatus="status"> 
  <tr>
    <td height=23 colspan="4" align=center nowrap>
	  <table width="100%"  border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="8%" align=right height=23>[&nbsp;${status.count}&nbsp;]</td>
		  <td width="2%">&nbsp;</td>
		  <td width="90%" align=left nowrap style="font-size:11pt;">${p.subject}
		  <input type="hidden"   class="resMoreAnswer" value="${p.answer}" />
		  <input type="hidden"   class="mutiOption" value="${p.id}" />
		  </td>
        </tr>
      </table>
	</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="checkbox" name="${p.id}" class="multi-select" value="A"/></td>
    <td width="3%" align=center nowrap>A.</td>
    <td width="86%" align=left nowrap>${p.optiona}</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="checkbox" name="${p.id}" class="multi-select" value="B"/></td>
    <td width="3%" align=center nowrap>B.</td>
    <td width="86%" align=left nowrap>${p.optiona}</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="checkbox" name="${p.id}" class="multi-select" value="C"/></td>
    <td width="3%" align=center nowrap>C.</td>
    <td width="86%" align=left nowrap>${p.optiona}</td>
  </tr>
  <tr>
    <td width="8%" height=23 nowrap>&nbsp;</td>
    <td width="3%" align=center nowrap><input type="checkbox" name="${p.id}" class="multi-select" value="D"/></td>
    <td width="3%" align=center nowrap>D.</td>
    <td width="86%" align=left nowrap>${p.optiona}</td>
  </tr>
  </c:forEach>
</table>		
		</td>
	  </tr>
        <tr>
		  <td align="center"><!-- <input type="submit"  class="btn_grey" value="交卷" />	 -->	<input type="button" onclick="submitTestPaperok()" class="btn_grey" value="交卷">  </td>
		  
        </tr>
      </table>
	<!--  </form> -->
	  </td>
  </tr>
  <tr>
    <td width="40" height="40" background="../Images/startExam_leftBottom.jpg">&nbsp;</td>
    <td colspan="2" background="../Images/startExam_bottom.jpg">&nbsp;</td>
    <td background="../Images/startExam_rightBottom.jpg">&nbsp;</td>
  </tr>
</table>

</body>
</html>
