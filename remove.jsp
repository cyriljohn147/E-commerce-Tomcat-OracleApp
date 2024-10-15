<%@page import="Implement.Implement" %>
        <%
            String original=request.getParameter("productName");
            Implement imp=new Implement();
            imp.deleteItem(original);
            response.sendRedirect("cartAdmin.jsp");
            %>
