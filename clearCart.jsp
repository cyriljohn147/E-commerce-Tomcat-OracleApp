<%@ page import="Implement.*" %>
<%
    Implement impl = new Implement();
    int result = impl.clearCart(); // Call the clearCart method

    if (result > 0) {
        response.sendRedirect("cart.jsp"); // Redirect back to the cart page after clearing
    } else {
        out.println("Failed to clear the cart.");
    }
%>
