<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin</title>
</head>
<jsp:include page="partials/head.jsp" />
<jsp:include page="partials/navbar.jsp" />
<body>
<h1>Admin Page</h1>
<c:forEach var="singleuser" items="${users}">
    <div class="col-md-6">
        <h2>${singleuser.username}</h2>
        <p>${singleuser.email}</p>
    </div>
</c:forEach>
</body>
</html>
