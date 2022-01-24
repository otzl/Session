<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>로그인</h3>
	
		
		<%
		String id = (String)session.getAttribute("id");
		
		
		
		if(id == null){%>
		<form action="LoginService" method="post">
		<table>
			<tr>
				<td></td>
				<td><input type="text" name="id" placeholder="ID를 입력하세요."></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="password" name="pw" placeholder="PW를 입력하세요."></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="로그인">
				</td>
				</tr>
				</table>
				</form>
	<% }
					
				else {
					
					out.print("<html><head></head><body>");
					out.print("<h2>"+id+"님 환영합니다</h2><br><p>로그인중입니다</p>");
					%>
					<a href = "logout.jsp">로그아웃하기</a>
					<%
					out.print("</body></html>");


				}
					%>
</body>
</html>
