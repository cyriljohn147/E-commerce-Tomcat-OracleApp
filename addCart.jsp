<%@page language="java" contentType="text/html"%> 


<html>
    <body>
<%@ page import="Implement.*" %>
        <%
            int validUser=0;
            String name=request.getParameter("name");
            Implement i=new Implement();
            int res = i.addCart(name);
            if(res==1) {
              response.sendRedirect("home.jsp");
            }
            else {
                    out.println("<p style='color:red;'>Adding to Cart Failed.</p>");
                    out.println("<a href='login.html'>Try again</a>");
            }
          %>
    </body>
        </html>
