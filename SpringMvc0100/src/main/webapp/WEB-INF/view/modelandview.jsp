<%@page import="java.time.LocalDateTime"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ModelAndView</title>
</head>
<body>
 <!--  navbar  -->
<%@ include file="navbar.jsp" %> 

<%
String name = (String) request.getAttribute("name");
String phone = (String) request.getAttribute("phone");
String add = (String) request.getAttribute("add");

List<String> list  = (List<String>) request.getAttribute("key");
LocalDateTime time = (LocalDateTime) request.getAttribute("timekey");
%>

<h3><%=time %></h3>
<h3>Name:<%= name %></h3>
<h3>Phone: <%= phone%></h3>
<h3>Add: <%= add %></h3>

<% for(String slist : list) {
%>
	
	<h3>
		<%= slist %>
	</h3>
	
<% } %>

</body>
</html>