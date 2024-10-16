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
</head>

<body id="indexPage">
  <%@ page import="Implement.*" %>
  <%
    String name=(String)session.getAttribute("username");%>
    <% 
    Implement i = new Implement();
    int cartItemCount = i.getCartItemCount();
%>
    <section id="header">
        <a href="#"><img style="border-radius:15px;" src="./images/ejlogo.jpg"></a>
        <div>
            <ul id="navbar">
                <li><a href="home.jsp" class="active">Home</a></li>
                <li><a href="./new-after-login.jsp">About</a></li>
                <li><a href="./login.html">Log Out</a></li>
                <li><a href="./cart.jsp" id="lg-bag"><i class="fal fa-shopping-bag"></i></a>
                  <span id="quantity"><%=cartItemCount%></span>
            </ul>
        </div>
    </section>

    <section id="hero" class="d-flex align-items-center justify-content-center text-white" style="background-image: url('./images/cool-soccer-jerseys.webp'); height: 90vh; background-size: cover; background-position: top 25% right 0;">
        <div class="container">
            <h4>Trade-in-fair</h4>
            <h2>Football Jersyes</h2>
            <h1>ELITE JERSEYS</h1>
        </div>
    </section>

    <section id="product1" class="section-p1">
        <div class="container text-center">
            <h2 style="color: black;">Featured Products</h2>
            <p>Summer Collection New Modern Design</p>
            <div class="row home">
                    <%
                      i.items();
                      while(i.r.next()){
                      String productName = i.r.getString(1);
                      String brand=i.r.getString(2);
                      String price = i.r.getString(3);
                    %>
              <div class="col-md-3 mb-4">
                <div class="card border-0 shadow-sm">
                  <div class="card-body">
                   
                    <span class="text-muted"><%=brand %></span>
                    <h5 class="card-title"><%=productName%></h5>
                      <div class="text-warning mb-2">
                      </div>
                      <h4 class="text-primary">&#8377;<%=price%></h4>
                      <form action="addCart.jsp" method="POST" onSubmit="return addcart();">
                        <button type="submit" name="name" value="<%=productName%>" class="btn btn-success">
                        <i class="fas fa-shopping-cart"></i>
                      </button>
                  </form>
                  </div>
                </div>
                </div>
              <%}
                i.r.close();
              %> 
            </div> 
        </div>
    </section>

    <section id="banner" class="d-flex align-items-center justify-content-center text-center text-white" style="background-image: url('https://i.postimg.cc/SsC7D5WD/b2.jpg'); height: 40vh; background-size: cover;">
        <div>
            <h2>Up to <span class="text-danger">70% off</span> - All Puma Jerseys</h2>
            <a href="./styles/shop.html" class="btn btn-outline-light">Explore more</a>
        </div>
    </section>

    <footer class="bg-light py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-4 mb-4">
                    <a><img src="./styles/ejlogo.jpg" alt="Logo" class="mb-3"></a>
                    <h4>Contact</h4>
                    <p><strong>Address:</strong> Anurag University, Ghatkesar, Hydrabad</p>
                    <p><strong>Phone:</strong> +23456876199, +23458903120</p>
                    <p><strong>Hours:</strong> 10:00 - 18:00, Mon - Sat</p>
                </div>
                <div class="col-md-2 mb-4">
                    <h4>About</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-dark">Privacy Policy</a></li>
                        <li><a href="#" class="text-dark">Terms and Condition</a></li>
                        <li><a href="#" class="text-dark">Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-md-2 mb-4">
                    <h4>My Account</h4>
                    <ul class="list-unstyled">
                        <li><a href="#" class="text-dark">Sign In</a></li>
                        <li><a href="#" class="text-dark">View Cart</a></li>
                        <li><a href="#" class="text-dark">My Account</a></li>
                        <li><a href="#" class="text-dark">My Wishlist</a></li>
                        <li><a href="#" class="text-dark">Help</a></li>
                    </ul>
                </div>
            </div>
            <div class="text-center mt-4">
                <p>&copy; 2023 All rights reserved!</p>
            </div>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
      function addcart() {
            alert("Item added to cart");
            }
    </script>
</body>
</html>
