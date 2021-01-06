<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestBookDao guestDao = new GuestBookDao();
	GuestBookVo guestVo = new GuestBookVo(no, password);
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="./delete.jsp" method="get">
		 비밀번호<input type="text" name="password" value="<%=guestVo.getPassword()%>"><button type="submit">확인</button><br>
		 <a href="./addList">메인으로 돌아가기</a>
	
	</form>
</body>
</html>