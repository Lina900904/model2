
<%@page import="domain.MemberBean"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="service.*"%>
<%@page import="domain.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- oracle.jdbc.driver.OracleDriver -->
<!-- jdbc:oracle:thin:@localhost:1521:xe -->
<!-- "seul1990","12345" -->
<!doctype html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<title>USER_LOGIN_RESULT</title>
</head>
<body>
		<%
	MemberBean m = new MemberBean();
	m.setId(request.getParameter("userid"));
	m.setPassword(request.getParameter("password"));
	if(MemberServiceImpl.getInstance().login(m)){
		%>
		<h3> 로그인 성공 </h3>

		
		<%
	} else{
		%>
		<h3> 로그인 실패</h3>
		<%		
	}
%>

 
 

</body>
</html>


