<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.vo.GuestBookVo" %>
<%@ page import="com.javaex.dao.GuestBookDao" %>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String content = request.getParameter("content");
	
	GuestBookVo guestVo = new GuestBookVo(name, password, content);
	
	GuestBookDao guestDao = new GuestBookDao();
	//저장
	guestDao.insert(guestVo);
	
	response.sendRedirect("./addList.jsp");
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