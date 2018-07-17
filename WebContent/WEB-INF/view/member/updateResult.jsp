<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>UPDATE_RESULT</title>
</head>
<body>
<%
	MemberBean mem= new MemberBean();
	mem.setId(request.getParameter("id"));
	mem.setPassword(request.getParameter("pass")+"/"+ request.getParameter("newpass"));
	
	if(MemberServiceImpl.getInstance().memberUpdate(mem)){
		
	%>
	<h3> 변경 성공 </h3>

	
	<%
} else{
	%>
	<h3> 변경 실패</h3>
	<%		
}
%>





<form action="../update/updateResult.jsp">
<input type="submit" value = "로그인 하러가기" />
</form>

	
</body>
</html>