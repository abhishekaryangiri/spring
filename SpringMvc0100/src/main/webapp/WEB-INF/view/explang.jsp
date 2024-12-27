<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page isErrorPage="false" %>
<%@taglib prefix="w" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Expression Language</title>
</head>
<body>
 <!--  navbar  -->
<%@ include file="navbar.jsp" %> 




<!-- exp tag: we print without request.getAttribute -->

<h3> {time}</h3>
<h3>Name:  ${name}</h3>
<h3>Phone: ${phone} </h3>
<h3>${add}</h3>

<w:forEach var="item" items="${key}"> 
<h3>${item}</h3>

</w:forEach>


</body>
</html>