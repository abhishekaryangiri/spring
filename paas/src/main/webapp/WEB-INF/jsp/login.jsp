<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h2>Login</h2>
    <form action="/login" method="post">
        <input type="text" name="mobileNumber" placeholder="Mobile Number" required /><br />
        <input type="password" name="password" placeholder="Password" required /><br />
        <button type="submit">Login</button>
    </form>
    <a href="/forgot-password">Forgot Password?</a>
    <p style="color:red;">${error}</p>
</body>
</html>
