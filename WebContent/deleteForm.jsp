<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	
	GuestBookVo guestVo = new GuestBookVo();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="./delete.jsp" method="get">
		 비밀번호<input type="text" name="password">
		 <button type="submit">확인</button><br>
		 <a href="./addList">메인으로 돌아가기</a>
		 <input type="hidden" name="no" value="<%=guestVo.getNo()%>">
	</form>
</body>
</html>