<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.GuestBookDao" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	String password = request.getParameter("password");
	
	GuestBookDao guestDao = new GuestBookDao();
	GuestBookVo guestVo = new GuestBookVo(no, password);
	
	guestDao.delete(guestVo);
	

	response.sendRedirect("./appList.jsp");
	
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>