<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Page with Ads</title>
    <style>
        .container {
            display: flex;
            justify-content: space-between;
            padding: 15px;
        }
        .container li {
            list-style: none;
        }
        .container li a {
            text-decoration: none;
            font-size: large;
            font-weight: 400;
        }
        .logo img {
            border-radius: 100px;
            width: 70px;
            height: 70px;
        }
        .header-container {
            padding: 15px;
        }
        .product-item {
            border: 1px solid #ddd; 
            padding: 10px;
            margin: 10px;
            border-radius: 5px;
            display: inline-block; 
            width: calc(25% - 20px); 
            vertical-align: top; 
        }
        .product-item img {
            width: 100px; 
            height: 100px; 
        }
    </style>
</head>
<body>
    <nav>
        <div class="container">
            <div class="logo">
                <img style="border-radius:15px;" src="./images/ejlogo.jpg" alt="EasyBill Logo">
            </div>
            <li><a href="login.html">Log Out</a></li>
        </div>
    </nav>

    <div class="header-container">
        <h3 style="margin: 0; color: black;">Welcome Admin</h3>
    </div>

    <button class="Add">Add New Product</button>

    <section class="product-list">
        <%@ page import="Implement.*" %>
        <%
            Implement i=new Implement();
            i.items();
            while (i.r.next()) {
                String productName = i.r.getString(1);
                String brand = i.r.getString(2);
        %>

                <div class="product-item">
                    <p><%= brand %></p>
                    <h2><%= productName %></h2>
                    <button class="Edit" data-product-name="<%= productName %>">Edit</button>
                    <button class="Remove" data-product-name="<%= productName %>">Remove</button>
                </div>

        <%
            }%>

            <script>
                document.querySelectorAll('.Edit').forEach(button => {
                    button.addEventListener('click', function() {
                        const productName = this.getAttribute('data-product-name');
                        window.location.href = "edit.jsp?productName=" + encodeURIComponent(productName);
                    });
                });
        
                document.querySelectorAll('.Remove').forEach(button => {
                    button.addEventListener('click', function() {
                        const productName = this.getAttribute('data-product-name');
                        sessionStorage.setItem('productName', productName);
                        window.location.href = "remove.jsp?productName=" + encodeURIComponent(productName);
                    });
                });
                document.querySelectorAll('.Add').forEach(button => {
                    button.addEventListener('click', function() {
                        window.location.href ="newproductform.html"
                    });
                });
            </script>
    </section>

    <%@ include file="footer.html" %>

    
</body>
</html>
