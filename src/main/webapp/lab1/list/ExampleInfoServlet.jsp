<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% String obj1 = (String) request.getAttribute("myObject1"); %>
	<p>My name is: <%=obj1%></p>
</body>
</html>