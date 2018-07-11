<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>操作成功!</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>

<body>
<%int para=Integer.parseInt(request.getParameter("para"));
switch(para){
	case 1:
	%>
		<script language="javascript">
		alert("管理员信息添加成功!");
		opener.location.reload();
		window.close();
		</script>	
	<%	break;
	case 3:
	%>
		<script language="javascript">
		alert("管理员信息删除成功!");
		window.location.href="managerQuery";
		</script>		
	<%	break;
}
%>
</body>
</html>