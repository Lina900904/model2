<%@page import="service.*"%>
<%@page import="domain.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>JOINFORM</title>
</head>
<body>
	
	<% 
	MemberBean mem = new MemberBean();
	mem.setId(request.getParameter("userid"));
	mem.setName(request.getParameter("name"));
	mem.setPassword(request.getParameter("password"));
	mem.setSsn(request.getParameter("ssn"));
	MemberServiceImpl.getInstance().membercreateJoin(mem);
%>
<form action="/member/user_login_form.do">
	<input type="submit" value="로그인하러가기" />
</form>
	
</body>
</html>