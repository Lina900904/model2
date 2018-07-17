<%@page import="domain.MemberBean"%>
<%@page import="service.MemberServiceImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>SEARCH_ID_RESULT</title>
</head>
<body>
	
	<%
	
	MemberBean m = MemberServiceImpl.getInstance().memberfindById(request.getParameter("id"));

	%>
	
	<h3>아이디 : <%= m.getId() %></h3>
	<h3>이름 : <%= m.getName() %></h3>
	<h3>비밀번호 : <%= m.getPassword() %></h3>
	<h3>직책 : <%= m.getRoll() %></h3>
	<h3>생년월일 : <%= m.getSsn() %></h3>
	<h3>팀 아이디 : <%= m.getTeamId() %></h3>
	
</body>
</html>