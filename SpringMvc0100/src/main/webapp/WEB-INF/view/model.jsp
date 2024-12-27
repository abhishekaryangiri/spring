<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>model</title>
</head>
<body>
 <!--  navbar  -->
<%@ include file="navbar.jsp" %> 

<% String name = (String)request.getAttribute("name");
   String phone = (String)request.getAttribute("phone");
   List<String> inf = (List<String>)request.getAttribute("key");
  
%>


<h3>Name: <%=name %></h3>
<h3>Phone: <%= phone %></h3>

<% 
for(String li : inf){ %>
<h3><%=li %></h3>

<%}
%>	

</body>
</html>