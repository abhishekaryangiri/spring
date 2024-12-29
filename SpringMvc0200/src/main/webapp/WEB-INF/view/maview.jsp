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
<h3 class="text-center ">${companyName}</h3>
<p class="text-center">${tagline}</p>
<h3>View Form(@ModelAttribute)</h3>

<h4>${user.userName}</h4>
<h4>${user.userEmail}</h4>
<h4>${user.password}</h4>
</body>
</html>