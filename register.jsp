<html></html>
    <body>
<%@ page import="Implement.*" %>
        <%
            String userName=request.getParameter("username");
            String password=request.getParameter("password");
            Implement i=new Implement();
            int r=i.userRegistration(userName,password);
            if(r<1){
                out.println("<h1>error in registration</h1>");
                out.println("<a href='new-signup.html.html'>Try Again</a>");
            }
            else{
                out.println("<h2>Registration is Success you can now login</h2>");
                out.println("<a href='login.html'>Login</a>");
            }
        %>
    </body>
        </html>