<!DOCTYPE html>
<html lang="en">
<head>
    <title>Cart</title>
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="./styles/style.css">
    <script src="https://kit.fontawesome.com/dad03e859c.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Spartan:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Alkatra&family=Berkshire+Swash&family=Comic+Neue:wght@700&family=Gentium+Book+Plus:wght@400;700&family=Lato:ital,wght@0,400;0,700;0,900;1,700&family=Lexend+Deca:wght@500&family=Lexend:wght@500&family=Montserrat:wght@500&family=Open+Sans:wght@500;800&family=Roboto:wght@100;400&family=Sue+Ellen+Francisco&family=Work+Sans:wght@400;700;900&display=swap" rel="stylesheet">   
</head>

<body id="cartPage">
  <%@ page import="Implement.*" %>
  <% 
    // Initialize the Implement class
    Implement i = new Implement();
    // Get the number of items in the cart
    int cartItemCount = i.getCartItemCount();
%>
    <section id="header">
        <a href="#"><img style="border-radius: 15px;" src="./images/ejlogo.jpg"></a>
        <div>
            <ul id="navbar">
                <li><a href="./home.jsp">Home</a></li>
                <li><a href="./about.html">About</a></li>
                <li><a href="./login.html">Log Out</a></li>
                <li><a href="./cart.html" id="lg-bag" class="active"><i class="fal fa-shopping-bag"></i></a>
                  <span id="quantity"><%=cartItemCount%></span>
            </ul>
        </div>
    </section>

    
    <section id="product1" class="section-p1">
        <div class="container text-center" style="margin-top: 100px;">
            <h2 class="mt-5" style="color: black;">YOUR CART</h2>
            <div class="row cart justify-content-center"> 
                    <%
                      i.cart();
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
                      <h4 class="text-primary"><%=price%></h4>
                      <form action="removeCart.jsp" method="POST">
                        <button type="submit" name="name" value="<%=productName%>" class="btn btn-success">
                        <i class="fas fa-trash"></i>
                      </button>
                  </form>
                  </div>
                </div>
                </div>
              <%}
              i.r.close();%> 
            </div>
        </div>
    </section>

    <section id="clear">
        <div class="row justify-content-center">
          <form action="clearCart.jsp" method="POST">
            <button type="submit" id="clearCartButton" class="btn btn-outline-primary d-block mx-auto" style="margin-bottom: 50px">CLEAR CART</button>
          </form>
          <form action="clearCart.jsp" method="post" onSubmit="return sub();">
            <button type="submit" id="checkoutButton" class="btn btn-outline-primary d-block mx-auto" style="margin-bottom: 50px">CHECKOUT</button>
          </form>
        </div>
        
    </section>

    <footer class="bg-light py-5">
        <div class="container">
            <div class="row footer">
                <div class="col-md-4 mb-4">
                    <a href="#"><img src="./images/ejlogo.jpg" alt="Logo" class="mb-3"></a>
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
      function sub() {
            alert("Order has been placed");
            }
    </script>
</body>
</html>
