<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nike - Homepage</title>
<style>
    /* Button Styling */
    .nav-button {
        text-decoration: none;
        padding: 15px 30px;
        background-color: grey;
        color: white;
        font-size: 18px;
        border-radius: 5px;
        display: inline-block;
        transition: background-color 0.3s;
    }

    /* Hover Effect */
    .nav-button:hover {
        background-color: green;
    }
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="font-family: Arial, sans-serif; margin: 0; padding: 0; background-color: #f5f5f5;">


<!-- Buttons Section (Men, Women, Kids, Sale) -->
<div style="display: flex; justify-content: center; gap: 15px; background-color: #111; padding: 20px">
    <!-- Men Button -->
    <a href="/SpringMvc0100/men" 
       style="text-decoration: none; padding: 10px 15px; background-color: grey; color: white; font-size: 14px; border-radius: 5px; display: inline-block; transition: background-color 0.3s;" onmouseover="this.style.backgroundColor='darkslategray';" 
       onmouseout="this.style.backgroundColor='grey';">
       Men
    </a>
    
    <!-- Women Button -->
    <a href="/SpringMvc0100/women" 
       style="text-decoration: none; padding: 10px 15px; background-color: grey; color: white; font-size: 14px; border-radius: 5px; display: inline-block;transition: background-color 0.3s;"
       onmouseover="this.style.backgroundColor='darkslategray';" 
       onmouseout="this.style.backgroundColor='grey';">
       Women
    </a>
    
    <!-- Kids Button -->
    <a href="/SpringMvc0100/kids" 
       style="text-decoration: none; padding: 10px 15px; background-color: grey; color: white; font-size: 14px; border-radius: 5px; display: inline-block; transition: background-color 0.3s;"
       onmouseover="this.style.backgroundColor='darkslategray';" 
       onmouseout="this.style.backgroundColor='grey';">
       Kids
    </a>
    
    <!-- Sale Button -->
    <a href="/SpringMvc0100/sale" 
       style="text-decoration: none; padding: 10px 15px; background-color: grey; color: white; font-size: 14px; border-radius: 5px; display: inline-block; transition: background-color 0.3s;"        onmouseover="this.style.backgroundColor='midnightblue';" 
       onmouseout="this.style.backgroundColor='grey';">
       Sale
    </a>


<!-- Shop Now Button -->

    <a href="https://www.nike.com" 
       style="text-decoration: none; padding: 10px 15px; background-color: grey; color: white; font-size: 14px; border-radius: 5px; display: inline-block; transition: background-color 0.3s;"
       onmouseover="this.style.backgroundColor='darkslategray';" 
       onmouseout="this.style.backgroundColor='grey';">
       Shop Now
    </a>


<!-- About Button -->

    <a href="/SpringMvc0100/about" 
       style="text-decoration: none;  padding: 10px 15px; background-color: grey; color: white; font-size: 14px; border-radius: 5px; display: inline-block; transition: background-color 0.3s;">
       About
    </a>
</div>


    <!-- Image Section -->
    <div style="text-align: center; background-color: #111; padding: 10px 0;">
        <img src="https://img1.wallspic.com/crops/6/4/9/7/3/137946/137946-sportswear-physical_fitness-joint-shoe-yellow-1920x1080.jpg" alt="Nike Shoes" 
             alt="Nike Shoes" 
             style="width: 80%; height: auto; border-radius: 10px; box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.3);" />
    </div>

    <!-- Text Section -->
    <div style="width: 80%; margin: 40px auto; padding: 20px; background-color: #fff; text-align: center;">
        <h1 style="color: #1a1a1a;">Welcome to Nike</h1>
        <p style="font-size: 18px; color: #333; line-height: 1.6;">
            Nike, Inc. is the world's leading innovator in sportswear and footwear. Our products are designed 
            for athletes of all levels to help them reach their potential. Whether you're an elite competitor 
            or a casual sports enthusiast, Nike offers shoes and apparel that combine cutting-edge technology 
            and iconic style.
        </p>
        <p style="font-size: 18px; color: #333; line-height: 1.6;">
            Experience the power of performance with Nike’s latest footwear collection, designed for speed, 
            agility, and ultimate comfort. Step into greatness – choose Nike, where innovation meets inspiration.
        </p>
    </div>
    
    
           <!-- Shop Now Button -->
<!--         <div style="margin-top: 30px; margin-bottom:30px; justify-content: center; display:flex;">
            <a href="https://www.nike.com" 
               style="text-decoration: none; padding: 15px 30px; background-color: #ff3f00; color: white; 
                      font-size: 18px; border-radius: 5px; display: inline-block; transition: background-color 0.3s;">
                Shop Now
            </a>
        </div>
    </div> -->
    
    
            <!-- About Button -->
<!--            <div style="justify-content: center; display:flex;">
        <a href="/SpringMvc0100/about"  style="text-decoration: none; padding: 15px 30px; background-color: #ff3f00; color: white; font-size: 18px; border-radius: 5px; transition: background-color 0.3s;">
            About
        </a>
</div> -->




</body>
</html>