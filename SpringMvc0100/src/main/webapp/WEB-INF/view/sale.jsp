<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
    <meta charset="UTF-8">
    <title>Big Sale - Up to 50% Off!</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100%;
            overflow: hidden;
        }

        .hero {
            position: relative;
            width: 100%;
            height: 100vh;
      /*    background-image: url('https://img1.wallspic.com/crops/8/0/3/4308/4308-athlete-nike-tennis_player-joint-physical_fitness-1920x1080.jpg');   */
          
          
              background-image: url('https://img3.wallspic.com/crops/1/1/4/0/20411/20411-sporting_goods-model-physical_fitness-gun_barrel-nike-1920x1080.jpg'); 
            
            
            /* Replace with your image URL */
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5); /* Dark overlay for better text visibility */
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .sale-content {
            text-align: center;
            color: white;
            padding: 20px;
            max-width: 800px;
        }

        .sale-content h1 {
            font-size: 50px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .sale-content p {
            font-size: 24px;
            margin-bottom: 30px;
        }

        .cta-button {
            background-color: #ff4d99;
            color: white;
            padding: 15px 30px;
            font-size: 20px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .cta-button:hover {
            background-color: #ff66b3;
        }

        .details {
            padding: 40px;
            background-color: #f5f5f5;
            text-align: center;
        }

        .details h2 {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .details p {
            font-size: 18px;
            line-height: 1.6;
        }
    </style>
</head>
<body>


<!-- Back Button with Inline CSS and Home Icon -->
<a href="javascript:history.back()" style="position: absolute; top: 30px; left: 90%; transform: translateX(-50%); background-color: black; color: white; padding: 10px 15px; font-size: 14px; text-decoration: none; border-radius: 5px; transition: background-color 0.3s; z-index: 10;">
    <i class="fas fa-home" style="font-size: 20px;"></i>
</a>


    <!-- Hero Section (Sale Image with Overlay) -->
    <div class="hero">
        <div class="overlay">
            <div class="sale-content">
                <h1>Big Sale - Up to 50% Off!</h1>
                <p>Hurry up and grab your favorites before they're gone. Limited time only!</p>
                <a href="https://www.nike.com/in/w/sale-3yaep" class="cta-button">Shop Now</a>
            </div>
        </div>
    </div>

    <!-- Sale Details Section -->
    <div class="details">
        <h2>Don't Miss Out on This Huge Sale!</h2>
        <p>We are offering up to 50% off on all our products, including the latest collections of shoes, clothing, and accessories. Whether you're looking for something casual or for a special occasion, we have everything you need.</p>
        <p>Shop now and save big while stocks last!</p>
    </div>

</body>
</html>
