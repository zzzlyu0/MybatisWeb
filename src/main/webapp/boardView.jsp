<%@page import = "java.util.HashMap" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board View</title>
</head>
<body>
<%
		HashMap<String, Object> data 
			= (HashMap<String, Object>) request.getAttribute("data");
		String html = data.toString();
		String title = data.get("title").toString();
		
	%>
	<%= html %>
	<h1><%= data.get("title")%></h1>
	<p><%= data.get("content")%></p>
	<a href="BoardList?regUser=<%=data.get("regUser") %>">목록</a>
</body>
</html>