
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
<body>
    <div id="header">
        <a href="#"><img style="border-radius: 15px;" src="./images/ejlogo.jpg"></a>
        <div>
            <ul id="navbar">
                <li><a href="./new-after-login.jsp">About</a></li>
                <li><a href="./loginPage.html" class="active">Log In</a></li>
            </ul>
        </div>
    </div>

    <section id="product1" class="section-p1">
        <div class="container text-center" style="margin-top: 100px;">
            <h2 class="mt-5" style="color: black;">REGISTRATION PAGE</h2>
             <div class="row cart justify-content-center">
                  <div class="face face-front">
                    <div class="content">
                      <h2>Sign in</h2>
                      <form name="myform" action="register.jsp" method="post">
                        <div class="field-wrapper form-group">
                          <input type="text" id="username" class="form-control" name="username" placeholder="username">
                        </div>
                        <div class="field-wrapper form-group">
                          <input type="text" id="email" class="form-control" name="email" placeholder="email">
                        </div>
                        <div class="field-wrapper form-group">
                          <input type="password" id="password" class="form-control" name="password" placeholder="password" autocomplete="new-password">
                        </div>
                        <div class="field-wrapper form-group">
                          <input id="submit" value="submit" type="submit" class="btn btn-primary">
                          <a href="./login.html">Already a User</a>
                        </div>
                      </form>
                    </div>
                  </div>
            </div>
        </div>
    </section>
</body>
</html>



