<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Req Param</title>
</head>
<body>
 <!--  navbar  -->
 <%@ include file="navbar.jsp" %>

<h3>View (@RequestParam)</h3>

<h4>${user.userName}</h4>
<h4>${user.userEmail}</h4>
<h4>${user.password}</h4>
</body>
</html>