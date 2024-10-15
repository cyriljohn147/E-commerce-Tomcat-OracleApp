<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup - Blinkit</title>
    <link rel="stylesheet" href="styles\signup.css">
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">
                <h1>EasyBill</h1>
            </div>
        </div>
    </header>

    <main>
        <section class="signup">
            <div class="container">
                <h2>Create an Account</h2>
                <form id="signup-form" method="post" action="register.jsp">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>

                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>

                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>

                    <label for="phone">Phone Number:</label>
                    <input type="tel" id="phone" name="phone" pattern="\d{10}" required>

                    <button type="submit">Sign Up</button>
                </form>
            </div>
        </section>
    </main>

    <%@include file="footer.html"%>
</body>
</html>
