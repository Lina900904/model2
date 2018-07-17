<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="service.MemberServiceImpl"%>
<%@page import="domain.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>SEARCH_TEAM_RESULT</title>
	<link rel="stylesheet" href="../../css/style.css" />
</head>
<body>
	
	<table id = "searchTeam" >
		<tr>
			<td>팀아이디</td>
			<td>아이디</td>
			<td>이름</td>
			<td>비밀번호</td>
			<td>직책</td>
			<td>생년월일</td>
			
		</tr>
		<%

	List<MemberBean> teamList = 
	MemberServiceImpl.getInstance().memberfindByName(request.getParameter("teamid"));
	for(int i = 0; i<teamList.size(); i++){ %>
	


		<tr>
			<td><h3><%= teamList.get(i).getTeamId() %></h3></td>
			<td><h3><%= teamList.get(i).getId() %></h3></td>
			<td><h3><%= teamList.get(i).getName() %></h3></td>
			<td><h3><%= teamList.get(i).getPassword() %></h3></td>
			<td><h3><%= teamList.get(i).getRoll() %></h3></td>
			<td><h3><%= teamList.get(i).getSsn() %></h3></td>
		
		</tr>
			<% }
	%>
	</table>

	
</body>
</html>