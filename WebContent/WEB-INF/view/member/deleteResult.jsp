<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>DELETE_RESULT</title>
</head>
<body>
<%

	MemberBean m = new MemberBean();
	m.setId(request.getParameter("id"));
	m.setPassword(request.getParameter("pass"));

	
	if(MemberServiceImpl.getInstance().memberDelete(m)){
		%>
		<h3> 삭제 성공 </h3>

		
		<%
	} else{
		%>
		<h3> 삭제 실패</h3>
		<%		
	}
%>


<form action="member/updateResult.do">
<input type="submit" value = "로그인 하러가기" />



</form>

	
</body>
</html>