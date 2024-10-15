<%@page language="java" contentType="text/html"%> 


<html>
    <body>
<%@ page import="Implement.*" %>
        <%
            int validUser=0;
            String userName=request.getParameter("username");
            String password=request.getParameter("password");
            Implement i=new Implement();
            validUser=i.userLogin(userName,password);
                if(validUser==1){
                        session.setAttribute("username",userName);
                        response.sendRedirect("new-after-login.jsp");
                  }
                  else if(validUser==2) {
                    response.sendRedirect("cartAdmin.jsp");
                  }
                else{
                    out.println("<p style='color:red;'>Invalid username or password.</p>");
                    out.println("<a href='login.html'>Try again</a>");
                }
        %>
    </body>
        </html>
