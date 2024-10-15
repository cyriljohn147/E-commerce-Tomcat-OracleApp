<%@ page import="Implement.*" %>
        <%
            String name=request.getParameter("proname");
            String brand=request.getParameter("brand");
            String price=request.getParameter("price");
            Implement i=new Implement();
            i.addItem(name,brand,price);
            response.sendRedirect("cartAdmin.jsp");
            %>
