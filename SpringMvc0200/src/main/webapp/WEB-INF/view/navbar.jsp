<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>navbar</title>
</head>
<body>
<!-- navbar.jsp -->
<div style="display: flex; justify-content: center; gap: 10px; background-color: grey; padding: 5px">
    
    
            <!-- Home  Button -->
    <a href="/SpringMvc0200/" 
       style="text-decoration: none; background-color: white; padding: 8px 8px;  color: black; font-size: 10px; border-radius: 5px; display: inline-block; ">
       Home
    </a>
    
    
        <!-- ModelAttribute Now Button -->
    <a href="/SpringMvc0200/ma" 
       style="text-decoration: none; background-color: white; padding: 8px 8px;  color: black; font-size: 10px; border-radius: 5px; display: inline-block; " 
>
       @ModelAttribute
    </a>


        <!-- reqparamform Button -->
    <a href="/SpringMvc0200/rp" 
       style="text-decoration: none; background-color: white; padding: 8px 8px;  color: black; font-size: 10px; border-radius: 5px; display: inline-block;">
       @RequestParam
    </a>
    
    

</div>

</body>
</html>