<html>
    <body>
        <form method="post" action="edited.jsp">
            <% session.setAttribute("productName",request.getParameter("productName"));%>
            Product Name <input type="text" name="proname">
            Price <input type="text" name="price">
            <input type="submit" value="Edit">
        </form>
    </body>
</html>
      