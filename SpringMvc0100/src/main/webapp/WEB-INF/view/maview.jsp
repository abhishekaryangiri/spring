<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>M AView</title>
</head>
<body>
  <!--  navbar  -->
 <%@ include file="navbar.jsp" %> 

<h3 style="text-align: center;">${ hdr }</h3>
<p style="text-align: center;">${ description }</p>
<hr>
<h4>${user.userName}</h4>
<h4>${user.userEmail}</h4>
<h4>${user.password}</h4>
</body>
</html>