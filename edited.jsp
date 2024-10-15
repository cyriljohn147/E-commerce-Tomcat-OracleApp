<%@page import="Implement.*" %>
        <%
        String product=request.getParameter("proname");
        String original = (String) session.getAttribute("productName");
        String price=request.getParameter("price");
            Implement imp=new Implement();
            imp.editCart(original,product,price);
            response.sendRedirect("cartAdmin.jsp");
            %>



        