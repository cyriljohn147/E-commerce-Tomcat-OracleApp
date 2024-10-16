<!DOCTYPE html>
<html lang="en">
<head>
    <title>ELITE JERSEYS</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="./styles/style.css">
    <script src="https://kit.fontawesome.com/dad03e859c.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Helvetica Neue', Arial, sans-serif;
            background-color: #f5f5f7;
        }

        nav {
            background-color: #ffffff;
            border-bottom: 1px solid #e1e1e6;
            padding: 15px 20px;
            color: #333;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
        }

        nav .container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        nav .logo img {
            height: 40px;
            border-radius: 50%;
        }

        ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
        }

        ul li {
            margin: 0 15px;
        }

        ul li a {
            color: #333;
            text-decoration: none;
            font-size: 16px;
            transition: color 0.3s;
        }

        ul li a:hover {
            color: #007aff;
        }

        @media (max-width: 768px) {
            ul {
                flex-direction: column;
                align-items: flex-start;
            }

            ul li {
                margin: 10px 0;
            }
        }

        main {
            padding: 20px;
            max-width: 1200px;
            margin: 0 auto;
        }

        h1 {
            padding-top:80px;
            font-size: 2.5rem;
            color: #333;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1rem;
            color: #555;
            line-height: 1.6;
        }

        .cta-button {
            display: inline-block;
            background-color: #007aff;
            color: #fff;
            padding: 10px 20px;
            font-size: 16px;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .cta-button:hover {
            background-color: #005bb5;
        }

        .features {
            margin: 40px 0;
        }

        .features h2 {
            font-size: 2rem;
            color: #333;
            margin-bottom: 20px;
        }
    </style>
</head>
<body id="indexPage">
  <%@ page import="Implement.*" %>
  <%
    String name=(String)session.getAttribute("username");%>
    <% 
    // Initialize the Implement class
    Implement i = new Implement();
    // Get the number of items in the cart
    int cartItemCount = i.getCartItemCount();
%>
    <section id="header">
        <a href="#"><img style="border-radius:15px;" src="./images/ejlogo.jpg"></a>
        <div>
            <ul id="navbar">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="./new-after-login.jsp" class="active">About</a></li>
                <li><a href="./login.html">Log Out</a></li>
                <li><a href="./cart.jsp" id="lg-bag"><i class="fal fa-shopping-bag"></i></a>
                  <span id="quantity"><%=cartItemCount%></span>
            </ul>
        </div>
    </section>
<main>
  <h1>Hi <%=name%> Welcome to JerseyHub</h1>
    <p>JerseyHub is your go-to destination for all things football jerseys. Discover a wide range of jerseys from your favorite teams and players, making it easy to show your support on and off the field. Whether you're at a game or watching from home, we've got the perfect jersey for you.</p>
    <p>Our platform is designed for an effortless shopping experience. From browsing the latest collections to fast and secure checkout, JerseyHub ensures you get the best jerseys without any hassle.</p>
    <a href="home.jsp" class="cta-button">Shop Now</a> 

    <div class="features">
        <h2>How It Works</h2>
        <p>See how simple it is to find and purchase your favorite football jersey at JerseyHub:</p>
        <img src="./images/jersey-browse.jpeg" alt="Browsing Jerseys">
        <p>Start by exploring our extensive collection of jerseys. Filter by team, player, or size to find exactly what you're looking for.</p>
        <img src="./images/jersey-add-to-cart.jpeg" alt="Adding Jersey to Cart">
        <p>Once you’ve found the perfect jersey, add it to your cart and proceed to checkout seamlessly.</p>
    </div>
</main>

    <footer class="bg-light py-5">
        <div class="container">
            <div class="row">
                <div class="row-md-4 mb-4">
                    <a><img src="./images/ejlogo.jpg" alt="Logo" class="mb-3"></a>
                    <h4>Contact</h4>
                    <p><strong>Address:</strong> Anurag University, Ghatkesar, Hydrabad</p>
                    <p><strong>Phone:</strong> +23456876199, +23458903120</p>
                    <p><strong>Hours:</strong> 10:00 - 18:00, Mon - Sat</p>
                </div>
            <div class="text-center mt-4">
                <p>&copy; 2023 All rights reserved!</p>
            </div>
        </div>
    </footer>
</body>
</html>
