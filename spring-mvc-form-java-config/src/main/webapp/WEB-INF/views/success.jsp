<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Success Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            max-width: 700px;
            background-color: #fff;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0px 4px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .container h1 {
            font-size: 2rem;
            font-weight: bold;
            color: #007bff;
            margin-bottom: 1rem;
        }
        .container p {
            font-size: 1.2rem;
            color: #666;
        }
        .data-list {
            text-align: left;
            margin-top: 1.5rem;
        }
        .data-list .data-item {
            background-color: #f8f9fa;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        .btn-primary {
            background-color: #007bff;
            border: none;
            padding: 10px 20px;
            font-size: 1.2rem;
            border-radius: 5px;
        }
        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registration Successful!</h1>
        <p>Thank you for registering. Below are your details:</p>
        <div class="data-list">
            <div class="data-item"><strong>Full Name:</strong>${user.name }</div>
            <div class="data-item"><strong>Mobile Number:</strong> ${user.mobile }</div>
            <div class="data-item"><strong>Email:</strong> ${user.email }</div>
<%--             <div class="data-item"><strong>Place:</strong> ${user.place }</div>
            <div class="data-item"><strong>Password:</strong> ${user.password }</div>
        --%>
        </div>
        <div class="mt-4">
            <a href="${pageContext.request.contextPath }/" class="btn btn-primary">Go Back to Home</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
