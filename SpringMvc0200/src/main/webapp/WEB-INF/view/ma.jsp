<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<meta charset="UTF-8">
<title>Model Attribute </title>
</head>
<body>
 <!--  navbar  -->
 
  <%@ include file="navbar.jsp" %>
<h6 class="text-center fs-4">${companyName}</h6>
<p class="text-center fs-6">${tagline}</p>
  <div class="container my-5">
<h2 class="mb-4">Fill the Form (@ModelAttribute) </h2>
    <form action="masub" method="post">
      <div class="mb-3">
        <label for="email" class="form-label">Email address</label>
        <input type="email" class="form-control" id="email" placeholder="Enter your email" name="userEmail">
      </div>

      <div class="mb-3">
        <label for="name" class="form-label">User Name</label>
        <input type="text" class="form-control" id="name" placeholder="Enter your Name" name= "userName">
      </div>
      
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" placeholder="Enter your password" name= "password">
      </div>


      <button type="submit" class="btn btn-secondary">Submit</button>
    </form>
  </div>


</body>
</html>