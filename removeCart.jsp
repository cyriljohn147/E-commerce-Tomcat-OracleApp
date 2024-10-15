<%@ page import="Implement.Implement" %>
<%
    Implement impl = new Implement();
    String productNameToDelete = request.getParameter("name"); // Get the product name from request parameters
    int result = impl.deleteCart(productNameToDelete); // Call the deleteCart method

    if (result > 0) {
        out.println("Item successfully removed from the cart.");
        response.sendRedirect("cart.jsp");
    } else {
        out.println("Failed to remove item from the cart.");
    }
%>
