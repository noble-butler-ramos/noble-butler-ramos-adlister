<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="partials/head.jsp">
        <jsp:param name="title" value="Product Show Page" />
    </jsp:include>
</head>
<body>
    <jsp:include page="partials/navbar.jsp" />
    <div class="container">
        <h1>Showing product: ${product.title}</h1>
        <p>Price: $${product.priceInCents/100}</p>
        <p>${product.description}</p>

    </div>
</body>
</html>
